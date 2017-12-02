package com.coding.controller;

import com.coding.Iservice.IAdminService;
import com.coding.pojo.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("user/order")
public class ItemOrderController {

    @Autowired
    private IAdminService adminService;

    private void deleteItemNum(Integer itemId, int number) throws Exception {
        Item item = adminService.selectItemByPrimaryKey(itemId);
        int num = item.getRepertoryNumber() - number;
        item.setRepertoryNumber(num);
        adminService.updateItemByPrimaryKey(item);
    }

    private int saveOrderDetail(Integer itemId, User user, Integer itemNumber) throws Exception {
        Orders orders = new Orders();
        OrderDetail orderDetail = new OrderDetail();
        Item item = null;
        if (itemNumber == null) {
            Cart cart = adminService.selectCartByPrimaryKey(itemId);
            item = adminService.selectItemByPrimaryKey(cart.getItemId());
            orders.setOrderSumPrice(item.getItemPrice() * cart.getItemNumber());
            orderDetail.setItemNumber(cart.getItemNumber());
            deleteItemNum(cart.getItemId(), cart.getItemNumber());
        } else {
            item = adminService.selectItemByPrimaryKey(itemId);
            orders.setOrderSumPrice(item.getItemPrice() * itemNumber);
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
        orders.setSendStatus(0);
        orders.setDiscussStatus(0);
        orders.setTakeGoodsStatus(0);
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
        return ordersId;
    }

    @RequestMapping("orderItem")
    public String orderItem(Integer[] cartId, HttpSession session) throws Exception {
        String uuid = (String) session.getAttribute("uuid");
        User user = adminService.selectUserByPrimaryKey(uuid);
        String cart_id = "";
        List<Integer> ordersList = new ArrayList<>();
        if (cartId.length != 0) {
            for (Integer id : cartId) {
                int ordersId = saveOrderDetail(id, user, null);
                ordersList.add(ordersId);
                cart_id += id + ",";
            }
            if (session.getAttribute("ordersList") != null)
                session.removeAttribute("ordersList");
            session.setAttribute("ordersList", ordersList);
            return "redirect:/user/pay/itemPay?cartId=" + cart_id.substring(0, cart_id.lastIndexOf(","));
        } else
            return "redirect:/shopCart/getPersonShopCart";
    }

    @RequestMapping("orderBuy")
    @ResponseBody
    public boolean orderBuy(Integer itemId, Integer itemNumber, HttpSession session) throws Exception {
        List<Integer> ordersList = new ArrayList<>();
        try {
            String uuid = (String) session.getAttribute("uuid");
            User user = adminService.selectUserByPrimaryKey(uuid);
            int ordersId = saveOrderDetail(itemId, user, itemNumber);
            ordersList.add(ordersId);
            if (session.getAttribute("ordersList") != null)
                session.removeAttribute("ordersList");
            session.setAttribute("ordersList", ordersList);
            return true;
        } catch (Exception e) {
        }
        return false;
    }
}