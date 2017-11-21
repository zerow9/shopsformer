package com.coding.controller;

import com.coding.Iservice.IUserService;
import com.coding.paging.PagingCustomCart;
import com.coding.pojo.Cart;
import com.coding.pojo.CartDetail;
import com.coding.pojo.Collect;
import com.coding.pojo.Item;
import constant.Constant;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.Date;
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

            // 调用展示类列表
            List<CartDetail> cartDetails=new ArrayList<CartDetail>();

            //查询 Item 数据，并赋值给 List
            for (Cart cart:carts){
                CartDetail cartDetail=new CartDetail();
                try{
                Item item=userService.selectItemByPrimaryKey(cart.getItemId());
                item.setItemImages(Constant.pictuePath+item.getItemImages());
                cartDetail.setItem(item);
                cartDetail.setUserUuid(uuid);
                cartDetail.setCartId(cart.getCartId());
                cartDetail.setItemNumber(cart.getItemNumber());
                cartDetails.add(cartDetail);
                }catch (Exception e){
                    e.printStackTrace();
                }
            }
            model.addAttribute("carts",cartDetails);
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

    @RequestMapping("addCollection")
    @ResponseBody
    public String addCollection(Integer id,HttpServletRequest request) {
        Collect collect=new Collect();
        String uuid=(String) request.getSession().getAttribute("uuid");
        // 查询商品信息
        try {
            Item item=userService.selectItemByPrimaryKey(id);
            collect.setUserUuid(uuid);
            collect.setCollectItemVender(item.getMakeVender());
            collect.setItemId(id);
            collect.setCollectTime(new Date());

            userService.insertCollectSelective(collect);

        } catch (Exception e) {
            e.printStackTrace();
            return "fail";
        }

        return "success";
    }

    @RequestMapping("deleteShopCart")
    @ResponseBody
    public String deleteCollection(Integer id){

        try {
            userService.deleteCartByPrimaryKey(id);
        } catch (Exception e) {
            e.printStackTrace();
            return "fail";
        }
        return "success";
    }
}
