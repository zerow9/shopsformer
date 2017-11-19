package com.coding.controller;

import com.coding.Iservice.IUserService;
import com.coding.paging.PagingCustomCart;
import com.coding.pojo.Cart;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * 购物车Controller
 */
@Controller
@RequestMapping("shopCart")
public class ShopCartController {

    @Autowired
    private IUserService userService;

    /**
     * 返回购物车信息
     *
     * @param request
     * @return
     */
    @RequestMapping("getPersonShopCart")
    public String getPersonShopCart(HttpServletRequest request, Model model) {
        String uuid = request.getSession().getAttribute("uuid").toString();

        //通过用户查询用户的购物车
        Cart seach = new Cart();
        seach.setUserUuid(uuid);

        try {
            //设置查询条件
            PagingCustomCart pagingCustomCart = new PagingCustomCart();
            pagingCustomCart.setCart(seach);
            List<Cart> carts = userService.selectCart(pagingCustomCart);
            model.addAttribute("carts",carts);
        } catch (Exception e) {
            e.printStackTrace();
        }


        return "homes/shopcart";
    }

    @RequestMapping("minShopCartNumber")
    @ResponseBody
    public String minShopCartNumber(Integer id)  {
        try {
            Cart cart=userService.selectCartByPrimaryKey(id);
            cart.setItemNumber(cart.getItemNumber()-1);
            userService.updateCartByPrimaryKeySelective(cart);

        } catch (Exception e) {
            e.printStackTrace();
            return "fail";
        }
        return "success";
    }

    @RequestMapping("addShopCartNumber")
    @ResponseBody
    public String addShopCartNumber(Integer id){
        try {
            Cart cart=userService.selectCartByPrimaryKey(id);
            cart.setItemNumber(cart.getItemNumber()+1);
            userService.updateCartByPrimaryKeySelective(cart);

        } catch (Exception e) {
            e.printStackTrace();
            return "fail";
        }
        return "success";
    }
}
