package com.coding.exception;

import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;

public class MyException extends Exception {

    @ExceptionHandler
    @ResponseBody
    public String loginException(Exception ex) {
        System.out.println("用户名/密码错误############");
        return "用户名/密码错误";
    }

}
