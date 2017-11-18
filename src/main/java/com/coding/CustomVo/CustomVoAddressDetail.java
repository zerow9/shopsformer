package com.coding.CustomVo;

import com.coding.pojo.Address;
import com.coding.pojo.Orders;

import java.util.List;

public class CustomVoAddressDetail {
    private Orders orders;

    private Address address;

    List<CustomVoItemsByOrderDetailId> customVoItemsByOrderDetailIds;

    public void setOrders(Orders orders) {
        this.orders = orders;
    }

    public void setAddress(Address address) {
        this.address = address;
    }


    public Orders getOrders() {

        return orders;
    }

    public Address getAddress() {
        return address;
    }

    @Override
    public String toString() {
        return "CustomVoAddressDetail{" +
                "orders=" + orders +
                ", address=" + address +
                ", customVoItemsByOrderDetailIds=" + customVoItemsByOrderDetailIds +
                '}';
    }

    public void setCustomVoItemsByOrderDetailIds(List<CustomVoItemsByOrderDetailId> customVoItemsByOrderDetailIds) {
        this.customVoItemsByOrderDetailIds = customVoItemsByOrderDetailIds;
    }

    public List<CustomVoItemsByOrderDetailId> getCustomVoItemsByOrderDetailIds() {

        return customVoItemsByOrderDetailIds;
    }
}
