package com.coding.controller;

import com.coding.Iservice.IAdminService;
import com.coding.comomInterface.DateToString;
import com.coding.paging.PagingCustomCollect;
import com.coding.paging.PagingCustomUser;
import com.coding.pojo.Collect;
import com.coding.pojo.User;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.UnknownAccountException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("user")
public class LoginController {

    @Autowired
    private IAdminService adminService;

    @RequestMapping("register")
    public String register() {
        return "homes/register";
    }

    @RequestMapping("first")
    public String first(HttpSession session) throws Exception {
        String photo = (String) SecurityUtils.getSubject().getPrincipal();
        PagingCustomUser pagingCustomUser = new PagingCustomUser();
        User use = new User();
        use.setUserEmail(photo);
        pagingCustomUser.setUser(use);
        User user = adminService.selectUser(pagingCustomUser).get(0);
        Collect collect = new Collect();
        collect.setUserUuid(user.getUserUuid());
        PagingCustomCollect pagingCustomCollect = new PagingCustomCollect();
        pagingCustomCollect.setCollect(collect);
        int count = 0;
        List<Collect> collects = null;
        try {
            collects = adminService.selectCollect(pagingCustomCollect);
            count = collects.size();
        } catch (Exception e) {
        }
        session.setAttribute("uuid", user.getUserUuid());
        user.setUserRegisterDateTimeToString(DateToString.date(user.getUserRegisterDateTime()));
        session.setAttribute("user", user);
        session.setAttribute("collectCount", count);
        return "homes/index";
    }

    @RequestMapping("login")
    public String login(HttpServletRequest request) throws Exception {
        String exceptionClassName = (String) request.getAttribute("shiroLoginFailure");
        if (exceptionClassName != null) {
            if (UnknownAccountException.class.getName().equals(exceptionClassName)) {
                throw new Exception("账号不存在");
            } else if (IncorrectCredentialsException.class.getName().equals(exceptionClassName)) {
                throw new Exception("用户名/密码错误");
            } else if ("randomCodeError".equals(exceptionClassName)) {
                throw new Exception("验证码错误 ");
            } else {
                throw new Exception("其他错误" + exceptionClassName);
            }
        }
        return "homes/login";
    }
}
