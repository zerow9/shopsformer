package com.coding.controller;

import com.coding.Iservice.IAdminService;
import com.coding.paging.PagingCustomUser;
import com.coding.pojo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
public class ForgetController {
    @Autowired
    private IAdminService adminService;
    @RequestMapping("forgetPassword")
    public String forgetPassword() {
        return "persons/forgetPassword";
    }

    /**
     * 这个是忘记密码的方法
     * @param user 用户信息
     * @param code 设置新密码
     */
    @RequestMapping("updateForgetPassword")
    public String updateForgetPassword(User user, String code, HttpSession session) throws Exception {
        String emailCode = "" + (Integer) session.getAttribute("emailCode");
        if (emailCode.equals(code)) {
            PagingCustomUser pagingCustomUser = new PagingCustomUser();
            User use = new User();
            use.setUserEmail(user.getUserEmail());
            pagingCustomUser.setUser(use);
            User us = adminService.selectUser(pagingCustomUser).get(0);
            String selectMD5=user.getUserPassword()+us.getSalt();
            us.setUserPassword(selectMD5);
            adminService.updateUserByPrimaryKeySelective(us);
            return "redirect:/user/login";
        }
        return "persons/forgetPassword";
    }
}
