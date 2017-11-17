package com.coding.CustomVo;

import java.util.List;

public class CustomVoItemsByOrderId {
    private Integer ordersId;

    private String orderCompletionTime;

    private Double orderPaid;

    private  double orderFreight;

    List<CustomVoItemsByOrderDetailId> customVoItemsByOrderDetailIds;

    public Integer getOrdersId() {
        return ordersId;
    }

    public String getOrderCompletionTime() {
        return orderCompletionTime;
    }

    public Double getOrderPaid() {
        return orderPaid;
    }

    public double getOrderFreight() {
        return orderFreight;
    }

    public List<CustomVoItemsByOrderDetailId> getCustomVoItemsByOrderDetailIds() {
        return customVoItemsByOrderDetailIds;
    }

    public void setOrdersId(Integer ordersId) {
        this.ordersId = ordersId;
    }

    public void setOrderCompletionTime(String orderCompletionTime) {
        this.orderCompletionTime = orderCompletionTime;
    }

    public void setOrderPaid(Double orderPaid) {
        this.orderPaid = orderPaid;
    }

    public void setOrderFreight(double orderFreight) {
        this.orderFreight = orderFreight;
    }

    public void setCustomVoItemsByOrderDetailIds(List<CustomVoItemsByOrderDetailId> customVoItemsByOrderDetailIds) {
        this.customVoItemsByOrderDetailIds = customVoItemsByOrderDetailIds;
    }

    @Override
    public String toString() {
        return "CustomVoItemsByOrderId{" +
                "ordersId=" + ordersId +
                ", orderCompletionTime='" + orderCompletionTime + '\'' +
                ", orderPaid=" + orderPaid +
                ", orderFreight=" + orderFreight +
                ", customVoItemsByOrderDetailIds=" + customVoItemsByOrderDetailIds +
                '}';
    }
}
