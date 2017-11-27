package com.coding.pojo;
import org.springframework.stereotype.Component;

import javax.validation.constraints.DecimalMin;
import javax.validation.constraints.NotNull;
import java.util.Date;

@Component
public class Collect {
    private Integer collectId;
    @NotNull(message = "collect.userUuid")
    private String userUuid;

    @DecimalMin(value = "0",message = "collect.itemIdLength")
    @NotNull(message = "collect.itemId")
    private Integer itemId;

    @NotNull(message = "collect.collectTime")
    private Date collectTime;

    private Integer collectItemVender;

    private String collectRemark;


    public Integer getCollectId() {
        return collectId;
    }

    public void setCollectId(Integer collectId) {
        this.collectId = collectId;
    }

    public String getUserUuid() {
        return userUuid;
    }

    public void setUserUuid(String userUuid) {
        this.userUuid = userUuid == null ? null : userUuid.trim();
    }

    public Integer getItemId() {
        return itemId;
    }

    public void setItemId(Integer itemId) {
        this.itemId = itemId;
    }


    public Date getCollectTime() {
        return collectTime;
    }

    public void setCollectTime(Date collectTime) {
        this.collectTime = collectTime;
    }

    public Integer getCollectItemVender() {
        return collectItemVender;
    }

    public void setCollectItemVender(Integer collectItemVender) {
        this.collectItemVender = collectItemVender;
    }

    public String getCollectRemark() {
        return collectRemark;
    }

    public void setCollectRemark(String collectRemark) {
        this.collectRemark = collectRemark == null ? null : collectRemark.trim();
    }

    @Override
    public String toString() {
        return "Collect{" +
                "collectId=" + collectId +
                ", userUuid='" + userUuid + '\'' +
                ", itemId=" + itemId +
                ", collectTime=" + collectTime +
                ", collectItemVender=" + collectItemVender +
                ", collectRemark='" + collectRemark + '\'' +
                '}';
    }
}