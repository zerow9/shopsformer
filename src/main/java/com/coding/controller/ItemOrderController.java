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


    private void saveOrderDetail(Integer itemId, User user, Integer itemNumber) throws Exception {
        Orders orders = new Orders();
        OrderDetail orderDetail = new OrderDetail();
        Item item = null;
        if (itemNumber == null) {
            Cart cart = adminService.selectCartByPrimaryKey(itemId);
            item = adminService.selectItemByPrimaryKey(cart.getItemId());
            orders.setOrderSumPrice(item.getItemMarketPrice() * cart.getItemNumber());
            orderDetail.setItemNumber(cart.getItemNumber());
        } else {
            item = adminService.selectItemByPrimaryKey(itemId);
            orders.setOrderSumPrice(item.getItemMarketPrice() * itemNumber);
            orderDetail.setItemNumber(itemNumber);
        }
        orders.setTakeGoodsName(item.getItemName());
        double d = item.getItemPrice();
        orders.setTakeGoodsPost((int) d);
        double score = orders.getOrderSumPrice() / 10.0;
        orders.setUseScore((int) score);
        orders.setAddressId(user.getUserAddress());
        orders.setShopId(itemId);
        orders.setUserUuid(user.getUserUuid());
        orders.setOrderCreateTime(new Date());
        orders.setPayStatus(0);
        int ordersId = adminService.insertOrderSelectiveReturnId(orders);
        orderDetail.setOrderId(ordersId);
        orderDetail.setItemId(item.getItemId());
        orderDetail.setItemPrice(item.getItemPrice());
        orderDetail.setUserUuid(user.getUserUuid());
        orderDetail.setUseScore(user.getUserScore());
        double sum = orders.getOrderSumPrice();
        orderDetail.setSendScore((int) sum);
        orderDetail.setItemSumPrice(sum);
        adminService.insertOrderDetailSelective(orderDetail);
    }


    @RequestMapping("orderItem")
    public String orderItem(Integer[] cartId, HttpSession session) throws Exception {
        String uuid = (String) session.getAttribute("uuid");
        User user = adminService.selectUserByPrimaryKey(uuid);
        String cart_id = "";
        if (cartId.length != 0) {
            for (Integer id : cartId) {
                saveOrderDetail(id, user, null);
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
            User user = adminService.selectUserByPrimaryKey(uuid);
            saveOrderDetail(itemId, user, itemNumber);
            return true;
        } catch (Exception e) {
            System.err.println(e.getMessage());
        }
        return false;
    }


}
