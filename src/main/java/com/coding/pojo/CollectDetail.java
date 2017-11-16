package com.coding.pojo;

import com.coding.Iservice.IAdminService;

/**
 * 商品的详情
 */
public class CollectDetail extends Collect {
    private Item item;

    public Item getItem() {
        return item;
    }

    public void setItem(Item item) {
        this.item = item;
    }
}
