package com.coding.controller;

import com.coding.Iservice.IAdminService;
import com.coding.pojo.Orders;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/user/confirm")
public class ConfirmItemController {

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

    @RequestMapping("comment")
    public String comment(){
        return "persons/comment";
    }
}
