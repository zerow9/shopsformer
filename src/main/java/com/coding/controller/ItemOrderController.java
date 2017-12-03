package com.coding.controller;

import com.coding.Iservice.IAdminService;
import com.coding.paging.PagingCustomAddress;
import com.coding.pojo.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.text.DecimalFormat;
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

    private int saveOrderDetail(Integer itemIds[], User user, Integer itemNumber,HttpSession session) throws Exception {
        Orders orders = new Orders();
        OrderDetail orderDetail = new OrderDetail();

        orders.setAddressId(user.getUserAddress());
        orders.setUserUuid(user.getUserUuid());
        orders.setOrderCreateTime(new Date());
        orders.setPayStatus(0);
        orders.setSendStatus(0);
        orders.setDiscussStatus(0);
        orders.setTakeGoodsStatus(0);
        Integer addressId = adminService.selectDefaultAddressByUserUuid(user.getUserUuid());
        if (addressId==null)
            orders.setAddressId(1);
        else
            orders.setAddressId(addressId);
        int ordersId = adminService.insertOrderSelectiveReturnId(orders);
        if (session.getAttribute("ordersId")!=null)
            session.removeAttribute("ordersId");
        session.setAttribute("ordersId",ordersId);

        Item item = null;
        Double sumPrice = 0.0;
        Double freightPrice = 0.0;
        if (itemNumber == null) {
            for (Integer itemId : itemIds) {
                Cart cart = adminService.selectCartByPrimaryKey(itemId);
                item = adminService.selectItemByPrimaryKey(cart.getItemId());
                sumPrice += item.getItemPrice() * cart.getItemNumber();
//                orders.setOrderSumPrice(item.getItemPrice() * cart.getItemNumber()+item.getPostPrice());
                if (item.getPostPrice() > freightPrice)
                    freightPrice = item.getPostPrice();
//                orders.setOrderFreight(item.getPostPrice());
                orderDetail.setItemNumber(cart.getItemNumber());
                deleteItemNum(cart.getItemId(), cart.getItemNumber());

//                orders.setTakeGoodsName(item.getItemName());
//                double d = item.getItemPrice();
//                orders.setTakeGoodsPost((int) d);

                orderDetail.setOrderId(ordersId);
                orderDetail.setItemId(item.getItemId());
                orderDetail.setItemPrice(item.getItemPrice());
                orderDetail.setUserUuid(user.getUserUuid());
                orderDetail.setUseScore(user.getUserScore());
                double sum = item.getItemPrice();
                orderDetail.setSendScore((int)sum);
                adminService.insertOrderDetailSelective(orderDetail);
            }
        } else {
            for (Integer itemId : itemIds) {
                item = adminService.selectItemByPrimaryKey(itemId);
//                orders.setOrderSumPrice(item.getItemPrice() * itemNumber + item.getPostPrice());
//                orders.setOrderFreight(item.getPostPrice());
                sumPrice += item.getItemPrice() * itemNumber;
                if (item.getPostPrice() > freightPrice)
                    freightPrice = item.getPostPrice();
                orderDetail.setItemNumber(itemNumber);
                orderDetail.setOrderId(ordersId);
                orderDetail.setItemId(item.getItemId());
                orderDetail.setItemPrice(item.getItemPrice());
                orderDetail.setUserUuid(user.getUserUuid());
                orderDetail.setUseScore(user.getUserScore());
                double sum = item.getItemPrice();
                orderDetail.setSendScore((int) sum);
                adminService.insertOrderDetailSelective(orderDetail);
            }
        }
        double score = sumPrice / 10.0;
        orders.setUseScore((int) score);
        DecimalFormat df = new DecimalFormat("#.00");
        orders.setOrderSumPrice(Double.parseDouble(df.format(sumPrice+freightPrice)));
        orders.setOrderId(ordersId);
        orders.setOrderFreight(freightPrice);
        adminService.updateOrderByPrimaryKeySelective(orders);
        if (session.getAttribute("frightPrice")!=null)
            session.removeAttribute("frightPrice");
        session.setAttribute("frightPrice",freightPrice);
        return ordersId;
    }

    @RequestMapping("orderItem")
    public String orderItem(Integer[] cartId, HttpSession session) throws Exception {
        String uuid = (String) session.getAttribute("uuid");
        User user = adminService.selectUserByPrimaryKey(uuid);
        String cart_id = "";
        List<Integer> ordersList = new ArrayList<>();
        if (cartId.length != 0) {
            int ordersId = saveOrderDetail(cartId, user, null,session);
            ordersList.add(ordersId);
            for (Integer id : cartId) {
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
        Integer []itemIds = new Integer[1];
        itemIds[0] = itemId;
        try {
            String uuid = (String) session.getAttribute("uuid");
            User user = adminService.selectUserByPrimaryKey(uuid);
            int ordersId = saveOrderDetail(itemIds, user, itemNumber,session);
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