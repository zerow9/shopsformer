package com.coding.controller;

import com.coding.CustomVo.CustomVoAddressDetail;
import com.coding.CustomVo.CustomVoOrders;
import com.coding.CustomVo.CustomVoOrdersByUserUuidAndStatus;
import com.coding.Iservice.IUserService;
import com.coding.pojo.Orders;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("user/order")
public class OrderController {
    @Autowired
    @Qualifier("userService")
    private IUserService userService;

    @RequestMapping("allOrder")
    public String allOrder(String userUuid, Model model)throws Exception{
        Orders orders = new Orders();
        orders.setUserUuid(userUuid);
        List<CustomVoOrdersByUserUuidAndStatus> customVoItemsByOrderIds =userService.queryOrdersByUserUuidAndStatus(orders);
//        List<CustomVoItemsByOrderId> customVoItemsByOrderIds = userService.selectItemsByOrderId(userUuid);
        System.out.println(customVoItemsByOrderIds);
        model.addAttribute("customVoItemsByOrderIds",customVoItemsByOrderIds);
        return "persons/order1";
    }

    @RequestMapping("orderDetail")
    public String orderDetail(Integer orderId, Model model)throws Exception{
//        String userUuid = (String) session.getAttribute("uuid");
        CustomVoAddressDetail customVoAddressDetail = userService.queryAddressDetail(orderId);
        System.out.println(customVoAddressDetail);
        if (customVoAddressDetail!=null)
            model.addAttribute("customVoAddressDetail",customVoAddressDetail);
        return "persons/orderDetail";
    }
    @RequestMapping("order")
    public String order(HttpSession session,Integer status,Model model)throws Exception{
        CustomVoOrders customVoOrders = new CustomVoOrders();
        String userUuid = (String) session.getAttribute("uuid");
        Orders orders = new Orders();
        Orders takeGoodsorders = new Orders();//收货状态
        Orders payOrders = new Orders();//支付状态
        Orders sendOrders = new Orders();//发货状态
        Orders discussOrders = new Orders();//评论状态
        orders.setUserUuid(userUuid);

        payOrders.setUserUuid(userUuid);
        payOrders.setPayStatus(0);

        sendOrders.setUserUuid(userUuid);
        sendOrders.setSendStatus(0);
        sendOrders.setPayStatus(1);

        takeGoodsorders.setUserUuid(userUuid);
        takeGoodsorders.setTakeGoodsStatus(0);
        takeGoodsorders.setPayStatus(1);
        takeGoodsorders.setSendStatus(1);

        discussOrders.setUserUuid(userUuid);
        discussOrders.setDiscussStatus(0);
        discussOrders.setPayStatus(1);
        discussOrders.setSendStatus(1);
        discussOrders.setTakeGoodsStatus(1);


        customVoOrders.setAllOrders(userService.queryOrdersByUserUuidAndStatus(orders));
        customVoOrders.setPayStatus(userService.queryOrdersByUserUuidAndStatus(payOrders));
        customVoOrders.setSendStatus(userService.queryOrdersByUserUuidAndStatus(sendOrders));
        customVoOrders.setTakeGoodsStatus(userService.queryOrdersByUserUuidAndStatus(takeGoodsorders));
        customVoOrders.setDiscussStatus(userService.queryOrdersByUserUuidAndStatus(discussOrders));

        model.addAttribute("customVoOrders",customVoOrders);
        return "persons/order1";
    }
}
