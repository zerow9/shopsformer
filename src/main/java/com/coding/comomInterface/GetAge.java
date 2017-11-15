package com.coding.comomInterface;

import java.util.Date;

public class GetAge {

    private int getBirthDay(Date birthday) {
        String oldyear = DateToString.birthday(birthday);
        String newyear = DateToString.birthday(new Date());
        return Integer.parseInt(newyear) - Integer.parseInt(oldyear);
    }
}
