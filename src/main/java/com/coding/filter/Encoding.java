package com.coding.filter;

import org.apache.shiro.crypto.SecureRandomNumberGenerator;

public class Encoding {
    //静态方法，便于作为工具类
    public static  String getGenerateSalt(){
        SecureRandomNumberGenerator secureRandom = new SecureRandomNumberGenerator();
        String hex = secureRandom.nextBytes(64).toHex(); //一个Byte占两个字节，此处生成的3字节，字符串长度为6
        return hex;
    }

}

