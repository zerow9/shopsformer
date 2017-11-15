package com.coding.controller;

import com.coding.Iservice.IAdminService;
import com.coding.comomInterface.DateToString;
import com.coding.pojo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.net.InetAddress;
import java.util.Date;

@Controller
@RequestMapping("user")
public class UserInfoController {

    @Autowired
    private IAdminService adminService;

    @RequestMapping("getUserInfo")
    public String getUserMessage(String uuid, HttpServletRequest request) throws Exception {
        User user = adminService.selectUserByPrimaryKey(uuid);
        user.setUserUuid(uuid);
        user.setUserRegisterDateTimeToString(DateToString.date(user.getUserRegisterDateTime()));
        request.setAttribute("user", user);
        return "persons/Information";
    }
    @RequestMapping("updateUser")
    public String updateUser(User user) throws  Exception{
        user.setUserGroup(2);
        user.setUserCurrentTime(new Date());
        user.setUserLandIp(InetAddress.getLocalHost().getHostAddress());
        adminService.updateUserByPrimaryKey(user);
        return "forward:getUserInfo.action?uuid="+user.getUserUuid();
    }

}
