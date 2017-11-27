package com.coding.CustomVo;

import java.text.SimpleDateFormat;
import java.util.Date;

public class CustomVoOrdersCount {

    private Integer allOrderCount;
    private Integer payOrderCount;
    private Integer sendGoodsCount;
    private Integer takeGoodsCount;
    private Integer discussCount;

    private String weekday;
    private String day;
    private String yearMonth;

    public Integer getAllOrderCount() {
        return allOrderCount;
    }

    public void setAllOrderCount(Integer allOrderCount) {
        this.allOrderCount = allOrderCount;
    }

    public Integer getPayOrderCount() {
        return payOrderCount;
    }

    public void setPayOrderCount(Integer payOrderCount) {
        this.payOrderCount = payOrderCount;
    }

    public Integer getSendGoodsCount() {
        return sendGoodsCount;
    }

    public void setSendGoodsCount(Integer sendGoodsCount) {
        this.sendGoodsCount = sendGoodsCount;
    }

    public Integer getTakeGoodsCount() {
        return takeGoodsCount;
    }

    public void setTakeGoodsCount(Integer takeGoodsCount) {
        this.takeGoodsCount = takeGoodsCount;
    }

    public Integer getDiscussCount() {
        return discussCount;
    }

    public void setDiscussCount(Integer discussCount) {
        this.discussCount = discussCount;
    }

    private SimpleDateFormat weekdayFm = new SimpleDateFormat("EEEE");
    private SimpleDateFormat dayFm = new SimpleDateFormat("dd");
    private SimpleDateFormat yearMonthFm = new SimpleDateFormat("yyyy.MM");
    private Date date = new Date();
    public String getWeekday() {
        return weekdayFm.format(date);
    }

    public void setWeekday(String weekday) {
        this.weekday = weekday;
    }

    public String getDay() {
        return dayFm.format(date);
    }

    public void setDay(String day) {
        this.day = day;
    }

    public String getYearMonth() {
        return yearMonthFm.format(date);
    }

    public void setYearMonth(String yearMonth) {
        this.yearMonth = yearMonth;
    }
}
