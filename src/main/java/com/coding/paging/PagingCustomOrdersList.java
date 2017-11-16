package com.coding.paging;

import com.coding.pojo.Item;

public class PagingCustomOrdersList {
    private Integer itmeNum;

    private Item item;

    @Override
    public String toString() {
        return "PagingCustomOrdersList{" +
                "itmeNum=" + itmeNum +
                ", item=" + item +
                '}';
    }

    public void setItmeNum(Integer itmeNum) {
        this.itmeNum = itmeNum;
    }

    public void setItem(Item item) {
        this.item = item;
    }

    public Integer getItmeNum() {

        return itmeNum;
    }

    public Item getItem() {
        return item;
    }
}
