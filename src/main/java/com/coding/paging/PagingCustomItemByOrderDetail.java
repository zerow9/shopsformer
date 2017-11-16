package com.coding.paging;

import com.coding.pojo.Item;

public class PagingCustomItemByOrderDetail {
    private Integer itmeNum;

    private Item item;

    private Integer ordersId;

    public void setOrdersId(Integer ordersId) {
        this.ordersId = ordersId;
    }

    public Integer getOrdersId() {

        return ordersId;
    }

    @Override
    public String toString() {
        return "PagingCustomItemByOrderDetail{" +
                "itmeNum=" + itmeNum +
                ", item=" + item +
                ", ordersId=" + ordersId +
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
