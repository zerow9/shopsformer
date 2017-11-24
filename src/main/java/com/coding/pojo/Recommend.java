package com.coding.pojo;

public class Recommend {
    private Integer recommendId;

    private String userUuid;

    private Integer itemId1;

    private Integer itemId2;

    private Integer itemId3;

    private Integer itemId4;

    public Integer getRecommendId() {
        return recommendId;
    }

    public void setRecommendId(Integer recommendId) {
        this.recommendId = recommendId;
    }

    public String getUserUuid() {
        return userUuid;
    }

    public void setUserUuid(String userUuid) {
        this.userUuid = userUuid == null ? null : userUuid.trim();
    }

    public Integer getItemId1() {
        return itemId1;
    }

    public void setItemId1(Integer itemId1) {
        this.itemId1 = itemId1;
    }

    public Integer getItemId2() {
        return itemId2;
    }

    public void setItemId2(Integer itemId2) {
        this.itemId2 = itemId2;
    }

    public Integer getItemId3() {
        return itemId3;
    }

    public void setItemId3(Integer itemId3) {
        this.itemId3 = itemId3;
    }

    public Integer getItemId4() {
        return itemId4;
    }

    public void setItemId4(Integer itemId4) {
        this.itemId4 = itemId4;
    }

    @Override
    public String toString() {
        return "Recommend{" +
                "recommendId=" + recommendId +
                ", userUuid='" + userUuid + '\'' +
                ", itemId1=" + itemId1 +
                ", itemId2=" + itemId2 +
                ", itemId3=" + itemId3 +
                ", itemId4=" + itemId4 +
                '}';
    }
}