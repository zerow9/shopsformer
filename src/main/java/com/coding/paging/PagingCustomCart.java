package com.coding.paging;
import com.coding.pojo.Cart;


public class PagingCustomCart extends Paging {
    private Cart cart;
    private Integer[] cartIdArray;

    public Integer[] getCartIdArray() {
        return cartIdArray;
    }

    public void setCartIdArray(Integer[] cartIdArray) {
        this.cartIdArray = cartIdArray;
    }

    public Cart getCart() {
        return cart;
    }

    public void setCart(Cart cart) {
        this.cart = cart;
    }
}
