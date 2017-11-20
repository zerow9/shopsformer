package com.coding.controller;

import com.coding.Iservice.IAdminService;
import com.coding.Iservice.IUserService;
import com.coding.pojo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("user")
public class SafeController {

    @Autowired
    private IAdminService adminService;

    @Autowired
    private IUserService userService;

    @RequestMapping("safePage")
    public String safePage() {
        return "persons/safety";
    }

    @RequestMapping("safePassword")
    public String safePassword() {
        return "persons/password";
    }

    @RequestMapping("safeEmail")
    public String safeEmail() {
        return "persons/getEmailCode";
    }

    @RequestMapping("updateUserPassword")
    public String updateUserPassword(User user, String oldPassword, HttpSession session) throws Exception {
        String uuid = (String) session.getAttribute("uuid");
        User use = adminService.selectUserByPrimaryKey(uuid);
        if (use.getUserPassword().equals(oldPassword)) {
            user.setUserUuid(uuid);
            userService.updateUserByPrimaryKeySelective(user);
            return "redirect:/user/safePage";
        }
        throw new Exception("修改密码不成功");
    }

    @RequestMapping("updateUserEmail")
    public String updateUserEmail(String userEmail, String code, HttpSession session) throws Exception {
        String uuid = (String) session.getAttribute("uuid");
        String emailCode=""+(Integer)session.getAttribute("emailCode");
        if (session.getAttribute("emailCode").equals(code)) {
            User user=new User();
            user.setUserUuid(uuid);
            user.setUserEmail(userEmail);
            userService.updateUserByPrimaryKeySelective(user);
            session.invalidate();
            return "homes/index";
        }
        throw new Exception("修改邮箱不成功");
    }
}
