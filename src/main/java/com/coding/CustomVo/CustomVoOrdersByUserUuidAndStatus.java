package com.coding.CustomVo;

import com.coding.pojo.Orders;

import java.util.List;

public class CustomVoOrdersByUserUuidAndStatus {

    private Orders orders;

    List<CustomVoItemsByOrderDetailId> customVoItemsByOrderDetailIds;

    public Orders getOrders() {
        return orders;
    }

    public List<CustomVoItemsByOrderDetailId> getCustomVoItemsByOrderDetailIds() {
        return customVoItemsByOrderDetailIds;
    }

    public void setOrders(Orders orders) {
        this.orders = orders;
    }

    public void setCustomVoItemsByOrderDetailIds(List<CustomVoItemsByOrderDetailId> customVoItemsByOrderDetailIds) {
        this.customVoItemsByOrderDetailIds = customVoItemsByOrderDetailIds;
    }

    @Override
    public String toString() {
        return "CustomVoOrdersByUserUuidAndStatus{" +
                "orders=" + orders +
                ", customVoItemsByOrderDetailIds=" + customVoItemsByOrderDetailIds +
                '}';
    }
}
