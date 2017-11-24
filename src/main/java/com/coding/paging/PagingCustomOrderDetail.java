package com.coding.paging;

import com.coding.pojo.OrderDetail;

import java.util.Arrays;

public class PagingCustomOrderDetail extends Paging {
    private OrderDetail orderDetail;

    private Double formerOrderDetailitemSumPrice;//一些功能需要订单详情的总价范围内查询，这是左侧较小值

    private Double latterOrderDetailitemSumPrice;//一些功能需要订单详情的总价范围内查询，这是右侧较大值

    private String[] itemCodeArray;//商品编码组


    public OrderDetail getOrderDetail() {
        return orderDetail;
    }

    public void setOrderDetail(OrderDetail orderDetail) {
        this.orderDetail = orderDetail;
    }

    public Double getFormerOrderDetailitemSumPrice() {
        return formerOrderDetailitemSumPrice;
    }

    public Double getLatterOrderDetailitemSumPrice() {
        return latterOrderDetailitemSumPrice;
    }

    public void setFormerOrderDetailitemSumPrice(Double formerOrderDetailitemSumPrice) {
        this.formerOrderDetailitemSumPrice = formerOrderDetailitemSumPrice;
    }

    public void setLatterOrderDetailitemSumPrice(Double latterOrderDetailitemSumPrice) {
        this.latterOrderDetailitemSumPrice = latterOrderDetailitemSumPrice;
    }

    public String[] getItemCodeArray() {
        return itemCodeArray;
    }

    public void setItemCodeArray(String[] itemCodeArray) {
        this.itemCodeArray = itemCodeArray;
    }

    @Override
    public String toString() {
        return "PagingCustomOrderDetail{" +
                "orderDetail=" + orderDetail +
                ", formerOrderDetailitemSumPrice=" + formerOrderDetailitemSumPrice +
                ", latterOrderDetailitemSumPrice=" + latterOrderDetailitemSumPrice +
                ", itemCodeArray=" + Arrays.toString(itemCodeArray) +
                ", indexNumber=" + indexNumber +
                ", pageNumber=" + pageNumber +
                ", keyWord='" + keyWord + '\'' +
                ", sortByColumn='" + sortByColumn + '\'' +
                ", sortRule='" + sortRule + '\'' +
                ", tableName='" + tableName + '\'' +
                ", dateFormatTool=" + dateFormatTool +
                '}';
    }
}
