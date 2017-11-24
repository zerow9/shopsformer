package com.coding.controller;

import com.coding.Iservice.IAdminService;
import com.coding.pojo.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.Date;

@Controller
@RequestMapping("user/order")
public class ItemOrderController {

    @Autowired
    private IAdminService adminService;

    @RequestMapping("orderItem")
    public String orderItem(Integer[] cartId, HttpSession session) throws Exception {
        String uuid = (String) session.getAttribute("uuid");
        Orders orders = new Orders();
        String cart_id = "";
        if (cartId.length != 0) {
            for (Integer id : cartId) {
                User user = adminService.selectUserByPrimaryKey(uuid);
                Cart cart = adminService.selectCartByPrimaryKey(id);
                Item item = adminService.selectItemByPrimaryKey(cart.getItemId());
                orders.setOrderSumPrice(item.getItemMarketPrice() * cart.getItemNumber());
                orders.setTakeGoodsName(item.getItemName());
                double d = item.getItemPrice();
                orders.setTakeGoodsPost((int) d);
                double score = orders.getOrderSumPrice() / 10.0;
                orders.setUseScore((int) score);
                orders.setAddressId(user.getUserAddress());
                orders.setShopId(id);
                orders.setUserUuid(uuid);
                orders.setOrderCreateTime(new Date());
                orders.setPayStatus(0);
                int ordersId = adminService.insertOrderSelectiveReturnId(orders);
                OrderDetail orderDetail = new OrderDetail();
                orderDetail.setOrderId(ordersId);
                orderDetail.setItemId(item.getItemId());
                orderDetail.setItemPrice(item.getItemPrice());
                orderDetail.setItemNumber(cart.getItemNumber());
                orderDetail.setUserUuid(uuid);
                orderDetail.setUseScore(user.getUserScore());
                double sum = orders.getOrderSumPrice();
                orderDetail.setSendScore((int) sum);
                orderDetail.setItemSumPrice(sum);
                adminService.insertOrderDetailSelective(orderDetail);
                cart_id += id + ",";
            }
            return "redirect:/user/pay/itemPay?cartId=" + cart_id.substring(0, cart_id.lastIndexOf(","));
        } else
            return "redirect:/shopCart/getPersonShopCart";
    }

    @RequestMapping("orderBuy")
    @ResponseBody
    public boolean orderBuy(Integer itemId, Integer itemNumber, HttpSession session) throws Exception {
        try {
            String uuid = (String) session.getAttribute("uuid");
            Orders orders = new Orders();
            User user = adminService.selectUserByPrimaryKey(uuid);
            Item item = adminService.selectItemByPrimaryKey(itemId);
            orders.setOrderSumPrice(item.getItemMarketPrice() * itemNumber);
            orders.setTakeGoodsName(item.getItemName());
            double d = item.getItemPrice();
            orders.setTakeGoodsPost((int) d);
            double score = orders.getOrderSumPrice() / 10.0;
            orders.setUseScore((int) score);
            orders.setAddressId(user.getUserAddress());
            orders.setShopId(itemId);
            orders.setUserUuid(uuid);
            orders.setOrderCreateTime(new Date());
            orders.setPayStatus(0);
            int ordersId = adminService.insertOrderSelectiveReturnId(orders);
            OrderDetail orderDetail = new OrderDetail();
            orderDetail.setOrderId(ordersId);
            orderDetail.setItemId(item.getItemId());
            orderDetail.setItemPrice(item.getItemPrice());
            orderDetail.setItemNumber(itemNumber);
            orderDetail.setUserUuid(uuid);
            orderDetail.setUseScore(user.getUserScore());
            double sum = orders.getOrderSumPrice();
            orderDetail.setSendScore((int) sum);
            orderDetail.setItemSumPrice(sum);
            adminService.insertOrderDetailSelective(orderDetail);
            return true;
        }catch (Exception e){
            System.err.println(e.getMessage());
        }
        return false;
    }


}
