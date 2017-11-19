package com.coding.CustomVo;

import java.util.List;

public class CustomVoOrders {

    private List<CustomVoOrdersByUserUuidAndStatus> allOrders;//所有订单
    private List<CustomVoOrdersByUserUuidAndStatus> takeGoodsStatus;//收货状态
    private List<CustomVoOrdersByUserUuidAndStatus> payStatus;//支付状态
    private List<CustomVoOrdersByUserUuidAndStatus> sendStatus;//发货状态
    private List<CustomVoOrdersByUserUuidAndStatus> discussStatus;//评论状态

    public List<CustomVoOrdersByUserUuidAndStatus> getAllOrders() {
        return allOrders;
    }

    public void setAllOrders(List<CustomVoOrdersByUserUuidAndStatus> allOrders) {
        this.allOrders = allOrders;
    }

    public List<CustomVoOrdersByUserUuidAndStatus> getTakeGoodsStatus() {
        return takeGoodsStatus;
    }


    public void setTakeGoodsStatus(List<CustomVoOrdersByUserUuidAndStatus> takeGoodsStatus) {
        this.takeGoodsStatus = takeGoodsStatus;
    }

    public List<CustomVoOrdersByUserUuidAndStatus> getPayStatus() {
        return payStatus;
    }

    public void setPayStatus(List<CustomVoOrdersByUserUuidAndStatus> payStatus) {
        this.payStatus = payStatus;
    }

    public List<CustomVoOrdersByUserUuidAndStatus> getSendStatus() {
        return sendStatus;
    }

    public void setSendStatus(List<CustomVoOrdersByUserUuidAndStatus> sendStatus) {
        this.sendStatus = sendStatus;
    }

    public List<CustomVoOrdersByUserUuidAndStatus> getDiscussStatus() {
        return discussStatus;
    }

    public void setDiscussStatus(List<CustomVoOrdersByUserUuidAndStatus> discussStatus) {
        this.discussStatus = discussStatus;
    }

    @Override
    public String toString() {
        return "CustomVoOrders{" +
                "allOrders=" + allOrders +
                ", takeGoodsStatus=" + takeGoodsStatus +
                ", payStatus=" + payStatus +
                ", sendStatus=" + sendStatus +
                ", discussStatus=" + discussStatus +
                '}';
    }
}
