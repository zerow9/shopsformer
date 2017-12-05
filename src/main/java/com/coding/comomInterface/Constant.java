package com.coding.comomInterface;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.util.Properties;

public class Constant {

    private static Properties properties = new Properties();

    static {
        String path = "E:\\IDECode\\shopsformer\\src\\main\\resources\\constant\\constant.properties";
        try {
            InputStream fileInputStream = new FileInputStream(path);
            properties.load(fileInputStream);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static final String FaceImage = new File(".").getPath() + File.separator + "1.png";

    public static final String FaceOtherImage = new File(".").getPath() + File.separator + "2.png";

    public static final String PAY_LOGS = new File(".").getPath() + File.separator + "payLogs.log";

    public static final String ADDRESS_POST = "http://localhost:8085";

    public static final Integer PAGE = 10;

    public static final Integer PAGE_NUMBER = 15;

    public static final Integer ERROR_NUMBER = -1;


    public static String setName(String name) {
        return properties.getProperty(name);
    }

}