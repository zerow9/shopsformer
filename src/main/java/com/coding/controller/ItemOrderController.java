package com.coding.controller;

import com.coding.Iservice.IAdminService;
import com.coding.pojo.Cart;
import com.coding.pojo.Item;
import com.coding.pojo.Orders;
import com.coding.pojo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

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
        for (Integer id : cartId) {
            User user=adminService.selectUserByPrimaryKey(uuid);
            Cart cart= adminService.selectCartByPrimaryKey(id);
            Item item=adminService.selectItemByPrimaryKey(cart.getItemId());
            orders.setOrderSumPrice(item.getItemMarketPrice()*cart.getItemNumber());
            orders.setTakeGoodsName(item.getItemName());
            double d=cart.getPrice();
            orders.setTakeGoodsPost((int) d);
            double score=orders.getOrderSumPrice()/10.0;
            orders.setUseScore((int) score);
            orders.setAddressId(user.getUserAddress());
            orders.setShopId(id);
            orders.setUserUuid(uuid);
            orders.setOrderCreateTime(new Date());
            orders.setPayStatus(0);
            adminService.insertOrderSelective(orders);

            adminService.deleteCartByPrimaryKey(id);
        }
        return "redirect:/user/order/order";
    }

}
