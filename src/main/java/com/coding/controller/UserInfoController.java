package com.coding.controller;

import com.coding.Iservice.IAdminService;
import com.coding.comomInterface.DateToString;
import com.coding.comomInterface.MessageTools;
import com.coding.comomInterface.MyUUID;
import com.coding.paging.PagingCustomUser;
import com.coding.pojo.User;
import org.apache.ibatis.annotations.ResultMap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.net.InetAddress;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;
import java.util.logging.Logger;

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
    public String first(HttpServletRequest request) throws Exception {
        String uuid = (String) request.getSession().getAttribute("uuid");
        User user = adminService.selectUserByPrimaryKey(uuid);
        user.setUserRegisterDateTimeToString(DateToString.date(user.getUserRegisterDateTime()));
        request.setAttribute("user", user);
        return "persons/information";
    }

    @RequestMapping("updateUser")
    public String updateUser(User user) throws Exception {
        user.setUserGroup(2);
        user.setUserCurrentTime(new Date());
        user.setUserLandIp(InetAddress.getLocalHost().getHostAddress());
        adminService.updateUserByPrimaryKey(user);
        return "forward:userInfo";
    }

    @RequestMapping("addUser")
    public ModelAndView addUser(String emailCode, String userEmail, String password, HttpSession session) throws Exception {
        User user = new User();
        Map<String, Object> result = new HashMap<>();
        Object sessionEmailCode = session.getAttribute("emailCode");
        if (sessionEmailCode != null) {
            if (emailCode.equals(sessionEmailCode.toString())) {
                user.setUserEmail(userEmail);
                user.setUserPassword(password);
                user.setUserUuid(MyUUID.randomUUID());
                user.setUserGroup(2);
                user.setUserRegisterDateTime(new Date());
                user.setUserCurrentTime(new Date());
                user.setUserLandNumber(1);
                user.setUserScore(0);
                user.setUserLandIp(InetAddress.getLocalHost().getHostAddress());
                try {
                    adminService.insertUserSelective(user);
                    result.put("msg", "true");
                    return new ModelAndView("/homes/login",result);
                } catch (Exception e) {
                    result.put("msg", e.getMessage());
                }
            } else {
                result.put("msg", "验证码有误！");
            }
        } else {
            result.put("msg", "请先获取到验证码！");
        }
        return new ModelAndView("/homes/register",result);
    }

    @ResponseBody
    @RequestMapping("getEmailCode")
    public Map<String, Object> getEmailCode(String email, HttpSession session) {
        Map<String, Object> result = new HashMap<>();
        Integer integer = 100000 + new Random().nextInt(899999);
        MessageTools message = MessageTools.initTool();
        try {
            message.setBoxTitle("【孝和商城】验证码");
            message.setInbox(email);
            message.setText("【孝和商城】您在孝和商城请求的验证码是：" + integer);
            message.sendQQMessage();
            session.setAttribute("emailCode", integer);
            result.put("status", "true");
            result.put("msg", "验证码已发送到你的邮箱：" + email + "请注意查收。");
        } catch (Exception e) {
            result.put("status", "false");
            result.put("msg", e.getMessage());
        }
        return result;
    }

    @ResponseBody
    @RequestMapping("hasUser")
    public Map<String, Object> hasUser(String email) {
        Map<String, Object> result = new HashMap<>();
        User user = null;
        try {
            User use = new User();
            PagingCustomUser pagingCustomUser = new PagingCustomUser();
            use.setUserEmail(email);
            pagingCustomUser.setUser(use);
            user = adminService.selectUser(pagingCustomUser).get(0);
            // 如果查到用户信息，则用户已存在，false
            if (user != null) {
                result.put("valid", false);
            }
        } catch (Exception e) {
            // 如果查不到到用户信息，则用户不存在，true
            if (user == null) {
                result.put("valid", true);
            }
        }
        return result;
    }
}
