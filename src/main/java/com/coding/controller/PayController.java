package com.coding.controller;

import com.coding.Iservice.IAdminService;
import com.coding.comomInterface.Constant;
import com.coding.paging.PagingCustomCart;
import com.coding.pojo.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("user/pay")
public class PayController {

    @Autowired
    private IAdminService adminService;

    private List<Address> hasAddress(HttpSession session) throws Exception {
        String uuid = (String) session.getAttribute("uuid");
        List<Address> addresses = adminService.selectAddressByUserID(uuid);
        return addresses;
    }

    private void uuidGetAddress(HttpSession session, List<Address> addresses) throws Exception {

        Address add = null;
        for (Address address : addresses) {
            if (address.getIsDefaultAddress() == 1) {
                add = address;
                String photo = add.getAddresseePhone();
                photo = photo.replace(photo.substring(3, 7), "****");
                add.setAddresseePhone(photo);
            }
        }
        session.setAttribute("addresses", addresses);
        session.setAttribute("add", add);
    }

    private double cartGetCartDetail(Integer itemId, Cart cart, List<CartDetail> cartDetails, Integer sum, String uuid) throws Exception {
        Item item = null;
        CartDetail cartDetail = new CartDetail();
        double money = 0;
        if (itemId == null) {
            item = adminService.selectItemByPrimaryKey(cart.getItemId());
            cartDetail.setUserUuid(cart.getUserUuid());
            cartDetail.setCartId(cart.getCartId());
            cartDetail.setItemNumber(cart.getItemNumber());
            money = item.getItemPrice() * cart.getItemNumber();
        } else {
            item = adminService.selectItemByPrimaryKey(itemId);
            cartDetail.setUserUuid(uuid);
            cartDetail.setItemNumber(sum);
            money = item.getItemPrice() * sum;
        }
        cartDetail.setItem(item);
        cartDetails.add(cartDetail);
        return money;
    }


    @RequestMapping("itemPay")
    public String itemPay(Integer[] cartId, HttpSession session, HttpServletRequest request) throws Exception {
        PagingCustomCart pagingCustomCart = new PagingCustomCart();
        pagingCustomCart.setCartIdArray(cartId);
        String uuid = (String) session.getAttribute("uuid");
        List<Address> addresses = hasAddress(session);
        if (addresses.size() == 0)
            return "forward:/user/address/address";
        uuidGetAddress(session, addresses);
        List<Cart> carts = adminService.selectCartByCartIdArray(pagingCustomCart);
        List<CartDetail> cartDetails = new ArrayList<CartDetail>();
        double sum = 0.0;
        String cart_id = "";
        for (Cart cart : carts) {
            sum += cartGetCartDetail(null, cart, cartDetails, 0, uuid);
            cart_id += cart.getCartId() + ",";
        }
        cart_id = cart_id.substring(0, cart_id.length() - 1);
        session.setAttribute("pop", 1);
        session.setAttribute("cartIds", cart_id);
        double frightPrice = (Double) session.getAttribute("frightPrice");
        DecimalFormat df = new DecimalFormat("#.00");
        session.setAttribute("sumCart", df.format(sum + frightPrice));
        session.removeAttribute("frightPrice");
        request.setAttribute("carts", cartDetails);
        return "homes/pay";
    }


    @RequestMapping("itemBuyPay")
    public String itemPay(Integer cartId, Integer itemNumber, HttpSession session, HttpServletRequest request) throws Exception {
        List<CartDetail> cartDetails = new ArrayList<CartDetail>();
        List<Address> addresses = hasAddress(session);
        if (addresses.size() == 0)
            return "forward:/user/address/address";
        uuidGetAddress(session, addresses);
        String uuid = (String) session.getAttribute("uuid");
        Item item = new Item();
        item.setItemId(cartId);
        item.setRepertoryNumber(adminService.selectItemByPrimaryKey(cartId).getRepertoryNumber() - itemNumber);
        adminService.updateItemByPrimaryKey(item);
        double sum = cartGetCartDetail(cartId, null, cartDetails, itemNumber, uuid);
        session.setAttribute("cartIds", cartId);
        double frightPrice = (Double) session.getAttribute("frightPrice");
        DecimalFormat df = new DecimalFormat("#.00");
        session.setAttribute("sumCart", df.format(sum + frightPrice));
        session.removeAttribute("frightPrice");
        request.setAttribute("carts", cartDetails);
        return "homes/pay";
    }


    @RequestMapping("success")
    public String success(Integer[] cartId, HttpSession session) throws Exception {
        List<Integer> ordersList = (List<Integer>) session.getAttribute("ordersList");
        Integer pop = (Integer) session.getAttribute("pop");
        Integer count = (Integer) session.getAttribute("collectCount");
        Orders orders = adminService.selectOrderByPrimaryKey(ordersList.get(0));
        orders.setPayStatus(1);
        orders.setSendStatus(1);
        orders.setOrderPayTime(new Date());
        adminService.updateOrderByPrimaryKeySelective(orders);
        if (pop != null && pop == 1) {
            adminService.deleteCartByPrimaryKeyArray(cartId);
            session.removeAttribute("collectCount");
            session.setAttribute("collectCount", count - cartId.length);
            session.removeAttribute("pop");
        }
        return "homes/success";
    }

    @RequestMapping("onekeyPay")
    public String onekeyPay(Integer orderId, String sum, HttpSession session) throws Exception {
        List<Address> addresses = hasAddress(session);
        if (addresses.size() == 0)
            return "forward:/user/address/address";
        uuidGetAddress(session, addresses);
        Orders orders = adminService.selectOrderByPrimaryKey(orderId);
        orders.setPayStatus(1);
        orders.setSendStatus(1);
        orders.setOrderPayTime(new Date());
        adminService.updateOrderByPrimaryKeySelective(orders);
        if (session.getAttribute("sumCart") != null)
            session.removeAttribute("sumCart");
        session.setAttribute("sumCart", sum);
        return "homes/success";
    }
}
