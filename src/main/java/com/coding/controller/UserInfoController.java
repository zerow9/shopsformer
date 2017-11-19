package com.coding.controller;

import com.coding.Iservice.IAdminService;
import com.coding.comomInterface.DateToString;
import com.coding.comomInterface.MessageTools;
import com.coding.comomInterface.MyUUID;
import com.coding.pojo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.net.InetAddress;
import java.util.Date;
import java.util.Random;

@Controller
@RequestMapping("user")
public class UserInfoController {

    @Autowired
    private IAdminService adminService;

    @RequestMapping("getUserInfo")
    public String getUserMessage() throws Exception {
        return "persons/information";
    }

    @RequestMapping("userInfo")
    public String first(HttpServletRequest request ) throws Exception {
        String uuid = (String)request.getSession().getAttribute("uuid");
        User user = adminService.selectUserByPrimaryKey(uuid);
        user.setUserRegisterDateTimeToString(DateToString.date(user.getUserRegisterDateTime()));
        request.setAttribute("user",user);
        return "persons/information";
    }

    @RequestMapping("updateUser")
    public String updateUser(User user) throws  Exception{
        user.setUserGroup(2);
        user.setUserCurrentTime(new Date());
        user.setUserLandIp(InetAddress.getLocalHost().getHostAddress());
        adminService.updateUserByPrimaryKey(user);
        return "forward:userInfo";
    }

    @RequestMapping("addUser")
    public String addUser(String emailId,User user,HttpSession session) throws  Exception{
        Integer emailCode=(Integer) session.getAttribute("emailCode");
        String email=""+emailId;
        if(emailCode!=null&&email.equals(emailId)) {
            user.setUserUuid(MyUUID.randomUUID());
            user.setUserGroup(2);
            user.setUserRegisterDateTime(new Date());
            user.setUserCurrentTime(new Date());
            user.setUserLandNumber(1);
            user.setUserScore(0);
            user.setUserLandIp(InetAddress.getLocalHost().getHostAddress());
            adminService.insertUserSelective(user);
            return "homes/index";
        }
        return "homes/register";
    }

    @RequestMapping("email")
    public void email(String email, HttpSession session){
        Integer integer=100000+new Random().nextInt(899999);
        MessageTools message=MessageTools.initTool();
        message.setBoxTitle("【孝和商城】验证码");
        message.setInbox(email);
        message.setText("【孝和商城】您在孝和商城请求的验证码是："+integer);
        message.sendQQMessage();
        session.setAttribute("emailCode",integer);
    }
}
