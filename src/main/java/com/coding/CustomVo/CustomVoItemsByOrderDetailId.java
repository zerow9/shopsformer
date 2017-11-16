package com.coding.CustomVo;

import com.coding.pojo.Item;

public class CustomVoItemsByOrderDetailId {
    private Item item;
    private Integer itemNum;

    public void setItem(Item item) {
        this.item = item;
    }

    public void setItemNum(Integer itemNum) {
        this.itemNum = itemNum;
    }

    public Item getItem() {

        return item;
    }

    public Integer getItemNum() {
        return itemNum;
    }

    @Override
    public String toString() {
        return "CustomVoItemsByOrderDetailId{" +
                "item=" + item +
                ", itemNum=" + itemNum +
                '}';
    }
}
