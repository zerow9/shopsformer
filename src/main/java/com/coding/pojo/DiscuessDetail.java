package com.coding.pojo;

/**
 *  展示评论的详细的信息
 */
public class DiscuessDetail extends Discuss {

    //用户信息
    private User user;

    //时间转化
    private String dateToString;

    public String getDateToString() {
        return dateToString;
    }

    public void setDateToString(String dateToString) {
        this.dateToString = dateToString;
    }

    //商品信息
    private Item item;

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Item getItem() {
        return item;
    }

    public void setItem(Item item) {
        this.item = item;
    }
}
