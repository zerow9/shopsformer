package com.coding.controller;

import com.coding.Iservice.IAdminService;
import com.coding.Iservice.IUserService;
import com.coding.pojo.Orders;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/user/confirm")
public class ConfirmItem {

    @Autowired
    private IAdminService adminService;

    @RequestMapping("confirmItem")
    @ResponseBody
    public String confirm(Integer orderId)throws Exception{
        Orders orders = new Orders();
        orders.setOrderId(orderId);
        orders.setTakeGoodsStatus(1);
        adminService.updateOrderByPrimaryKeySelective(orders);
        return "/user/order/order?attribute=5";
    }
}
