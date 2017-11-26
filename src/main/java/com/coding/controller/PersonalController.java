package com.coding.controller;

import com.coding.CustomVo.CustomVoOrdersCount;
import com.coding.Iservice.IUserService;
import com.coding.paging.PagingCustomOrder;
import com.coding.pojo.Orders;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("user")
public class PersonalController {
    @Autowired
    private IUserService userService;

    @RequestMapping("personalCenter")
    public String personalCenter(HttpSession session, Model model)throws Exception{
        String userUuid = (String) session.getAttribute("uuid");
        CustomVoOrdersCount customVoOrdersCount = new CustomVoOrdersCount();
//        PagingCustomOrder allPagingCustomOrder = new PagingCustomOrder();
        PagingCustomOrder payPagingCustomOrder = new PagingCustomOrder();
        PagingCustomOrder sendPagingCustomOrder = new PagingCustomOrder();
        PagingCustomOrder takeGoodsPagingCustomOrder = new PagingCustomOrder();
        PagingCustomOrder discussPagingCustomOrder = new PagingCustomOrder();
//        Orders allOrders = new Orders();
        Orders takeGoodsorders = new Orders();//收货状态
        Orders payOrders = new Orders();//支付状态
        Orders sendOrders = new Orders();//发货状态
        Orders discussOrders = new Orders();//评论状态
//        allOrders.setUserUuid(userUuid);
//        allPagingCustomOrder.setOrder(allOrders);
//        customVoOrdersCount.setAllOrderCount(userService.selectOredersCountByColumn(allPagingCustomOrder));

        payOrders.setPayStatus(0);
        payOrders.setUserUuid(userUuid);
        payPagingCustomOrder.setOrder(payOrders);
        customVoOrdersCount.setPayOrderCount(userService.selectOredersCountByColumn(payPagingCustomOrder));

        sendOrders.setUserUuid(userUuid);
        sendOrders.setPayStatus(1);
        sendOrders.setSendStatus(0);
        payPagingCustomOrder.setOrder(sendOrders);
        customVoOrdersCount.setSendGoodsCount(userService.selectOredersCountByColumn(sendPagingCustomOrder));

        takeGoodsorders.setUserUuid(userUuid);
        takeGoodsorders.setPayStatus(1);
        takeGoodsorders.setSendStatus(1);
        takeGoodsorders.setTakeGoodsStatus(0);
        takeGoodsPagingCustomOrder.setOrder(takeGoodsorders);
        customVoOrdersCount.setTakeGoodsCount(userService.selectOredersCountByColumn(takeGoodsPagingCustomOrder));

        discussOrders.setUserUuid(userUuid);
        discussOrders.setPayStatus(1);
        discussOrders.setSendStatus(1);
        discussOrders.setTakeGoodsStatus(1);
        discussOrders.setDiscussStatus(0);
        discussPagingCustomOrder.setOrder(discussOrders);
        customVoOrdersCount.setDiscussCount(userService.selectOredersCountByColumn(discussPagingCustomOrder));
        model.addAttribute("customVoOrdersCount",customVoOrdersCount);
        return "persons/personalCenter";
    }

}
