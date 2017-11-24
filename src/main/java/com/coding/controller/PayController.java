package com.coding.controller;

import com.coding.Iservice.IAdminService;
import com.coding.comomInterface.Constant;
import com.coding.paging.PagingCustomCart;
import com.coding.pojo.Address;
import com.coding.pojo.Cart;
import com.coding.pojo.CartDetail;
import com.coding.pojo.Item;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("user/pay")
public class PayController {

    @Autowired
    private IAdminService adminService;


    private void uuidGetAddress(HttpSession session) throws Exception {
        String uuid = (String) session.getAttribute("uuid");
        List<Address> addresses = adminService.selectAddressByUserID(uuid);
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
        if (itemId == null && cart == null) {
            item = adminService.selectItemByPrimaryKey(cart.getItemId());
            cartDetail.setUserUuid(cart.getUserUuid());
            cartDetail.setCartId(cart.getCartId());
            cartDetail.setItemNumber(cart.getItemNumber());
        } else {
            item = adminService.selectItemByPrimaryKey(itemId);
            cartDetail.setUserUuid(uuid);
            cartDetail.setItemNumber(sum);
        }
        cartDetail.setItem(item);
        cartDetails.add(cartDetail);
        double money = item.getItemMarketPrice() * cart.getItemNumber() * item.getDiscount() / 100;
        return money;
    }


    @RequestMapping("itemPay")
    public String itemPay(Integer[] cartId, HttpSession session, HttpServletRequest request) throws Exception {
        PagingCustomCart pagingCustomCart = new PagingCustomCart();
        pagingCustomCart.setCartIdArray(cartId);
        String uuid = (String) session.getAttribute("uuid");
        uuidGetAddress(session);
        List<Cart> carts = adminService.selectCartByCartIdArray(pagingCustomCart);
        List<CartDetail> cartDetails = new ArrayList<CartDetail>();
        double sum = 0;
        String cart_id = "";
        for (Cart cart : carts) {
            sum += cartGetCartDetail(null, cart, cartDetails, 0, uuid);
            cart_id += cart.getCartId() + ",";
        }
        session.setAttribute("cartIds", cart_id);
        session.setAttribute("sumCart", sum);
        request.setAttribute("carts", cartDetails);
        return "homes/pay";
    }


    @RequestMapping("itemBuyPay")
    public String itemPay(Integer cartId, Integer itemNumber, HttpSession session, HttpServletRequest request) throws Exception {
        List<CartDetail> cartDetails = new ArrayList<CartDetail>();
        uuidGetAddress(session);
        String uuid = (String) session.getAttribute("uuid");
        double sum = cartGetCartDetail(cartId, null, cartDetails, itemNumber, uuid);
        session.setAttribute("cartIds", cartId);
        session.setAttribute("sumCart", sum);
        request.setAttribute("carts", cartDetails);
        return "homes/pay";
    }


    @RequestMapping("success")
    public String success(Integer[] cartId, HttpSession session) throws Exception {
        if (cartId.length != 0 && cartId != null) {
            try {
                adminService.deleteCartByPrimaryKeyArray(cartId);
                Integer count = (Integer) session.getAttribute("collectCount");
                count -= cartId.length;
                session.removeAttribute("collectCount");
                session.setAttribute("collectCount", count + 1);
            } catch (Exception e) {
            }
        }
        return "homes/success";
    }
}
