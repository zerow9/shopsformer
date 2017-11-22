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

    @RequestMapping("itemPay")
    public String itemPay(Integer[] cartId, HttpSession session, HttpServletRequest request) throws Exception {
        PagingCustomCart pagingCustomCart = new PagingCustomCart();
        pagingCustomCart.setCartIdArray(cartId);
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
        request.setAttribute("addresses", addresses);
        List<Cart> carts = adminService.selectCartByCartIdArray(pagingCustomCart);
        List<CartDetail> cartDetails = new ArrayList<CartDetail>();
        int sum = 0;
        String cart_id = "";
        for (Cart cart : carts) {
            CartDetail cartDetail = new CartDetail();
            Item item = adminService.selectItemByPrimaryKey(cart.getItemId());
            cartDetail.setItem(item);
            cartDetail.setUserUuid(uuid);
            cartDetail.setCartId(cart.getCartId());
            cartDetail.setItemNumber(cart.getItemNumber());
            cartDetails.add(cartDetail);
            sum += item.getItemMarketPrice() * cart.getItemNumber();
            cart_id += cart.getCartId() + ",";
        }
        session.setAttribute("cartIds", cart_id);
        session.setAttribute("sumCart", sum);
        session.setAttribute("add", add);
        request.setAttribute("carts", cartDetails);
        return "homes/pay";
    }

    @RequestMapping("success")
    public String success(Integer[] cartId) throws Exception {
        if (cartId.length != 0 && cartId != null) {
            try {
                adminService.deleteCartByPrimaryKeyArray(cartId);
            } catch (Exception e) {
            }
        }
        return "homes/success";
    }
}
