package com.coding.pojo;

import com.coding.Iservice.IAdminService;

/**
 * 商品的详情
 */
public class CollectDetail extends Collect {
    private String itemImages;
    private String itemName;
    private Item item;

    public String getItemImages() {
        return itemImages;
    }

    public void setItemImages(String itemImages) {
        this.itemImages = itemImages;
    }

    public String getItemName() {
        return itemName;
    }

    public void setItemName(String itemName) {
        this.itemName = itemName;
    }

    public Item getItem() {
        return item;
    }

    public void setItem(Item item) {
        this.item = item;
    }
}
