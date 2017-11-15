package com.coding.paging;
import com.coding.pojo.Cart;


public class PagingCustomCart extends Paging {
    private Cart cart;

    public Cart getCart() {
        return cart;
    }

    public void setCart(Cart cart) {
        this.cart = cart;
    }
}
