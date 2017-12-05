package com.coding.serviceImpl;

/* *
 *类名：AlipayConfig
 *功能：基础配置类
 *详细：设置帐户有关信息及返回路径
 *修改日期：2017-04-05
 *说明：
 *以下代码只是为了方便商户测试而提供的样例代码，商户可以根据自己网站的需要，按照技术文档编写,并非一定要使用该代码。
 *该代码仅供学习和研究支付宝接口使用，只是提供一个参考。
 */

import com.coding.comomInterface.Constant;

import java.io.FileWriter;
import java.io.IOException;

public class AlipayConfig {

//↓↓↓↓↓↓↓↓↓↓请在这里配置您的基本信息↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓

    // 应用ID,您的APPID，收款账号既是您的APPID对应支付宝账号
    public static String app_id = "2016082100308182";

    // 商户私钥，您的PKCS8格式RSA2私钥
    public static String merchant_private_key = "MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCcPsuQ2m2uvMmGKBe9HACRW+7+nT4OudS/cjx+E3WfMxczJ/oZ+7nwQT+D9fO4e4wv0T+xNW7Zd7RDG+31KRZIPgNgLFiIQ6GUaqWO0dCEbPsyx7t261mwlukGXRVsKUnbocjs1MBbZHU19ekXKZthe8yvzUYDyAV7p6UTrlBT2pUJ+j1KrVKL1tnrmKrJcDA7UtDdALWHg9bcXZz38ZO2h5SVIX7krqvtc1DWqR9aSDG3/lWvxybsOGhzs9eQwY6qrIKm1eJ1QiSHXc4Sk4Bx7krHFVgRC5qldXtQoIEZgQCGgCiAPi06O01oBN9yjHXxA3qQgwl2cUyEzI8NgS8tAgMBAAECggEBAIFq0hqtkmRGI3ZoByGw7Bd62r8zZ4+zBTF+YfTcEXVIUFMjLdoP07fZk86uDq4kR73jyKnz5Flk+X8Mx1FmMvqrwwgKM1rLCi9xFqjxyZGm43rwTar2zlei6GlI+NGacX7mxxLENoB8+Uk041k4MWfRr31+vhurtj7yYZ2nqQmKmZp8uQBEvtWNjj5+h8G6sbDJ1qVLxrg6MCNZtJQh8Ab6LPA1XOCnS3OF44iyx9Lag0LMdNfZjvaJ4cg43Voyj28xq/04878tyld0tdKKj1OVZ96EeGtRjBBZvsYqVg6K+8nmps4qQy1bd49Gh2rSWghgahduhtV2lZUlWyadQgECgYEA5dI3ceXATm+dBTtvyEM8XEVnHSw3cFrnuBpbSmCb9zgXtyBed2vgr3tN3/nHxoXA+yhbKBdcWZfbCffqCv6aeeDjrVI3i9Rfizl6LoRZUEi2fPNHQJ4oW7Wqp4bHfi4kDQxlPCVs90HeKe3bpzN9+9xCFW+1qMBMAn4YmTnHOo0CgYEArgsK+DqMs7O83AHMYqBzAWMRkGtgAqkgDTA9eszNIZxwVkk7eBkNKQudjQOiZWxoeV7M7N9VZbXi53F+u5kTeVyKDwCTd+J3mLHaR5jwqtJnTjblDcXNr/9AhbsNo+YFDcmpNY+mShl+tjSU5nJbjNZv2rARzgbp33J+1qoN7yECgYBwRKwfMLwr1Oxg1PM7YlUHQkQoBSSj91SBJCb6g41NTJKRO/fJ4OIm91ZIls2X1lk6mDFHuXm8rqkrCnfDnTK7XTf7wFEwNrPh4FcmiDLVPGAhU/q3v0s52doe8oFby5CC6048/o9njj7IPtDxsf7WXXfO3v5gDGhVQ2Ii4A3KNQKBgB5zHCY1yCwghChRwDp5K+XQOWB1CMUuZcco63iyoCkDP7w478ihSWYm/BeRzTXFc7nYVi4THNPAsMQhXTThIUEYaacaSLKu0pHKfBAOt/yK9zv96rEwLD5ggB9ljItiUPwKjioqycMpFrw2Et8GnvHTCprONy8+kmhflcVk1y9BAoGAIrldQ48RpaiLujG7Oo3iEFwqoxrqJ0AhBhul8IM8vYxHleOAz+fmEk6YoHI6JLndfRCJN6Aqu6vd0GzDagYrf7W6S21NOBnTU6P8nqKsbdjPgLI8MU34rcreIOXQfWeDkSKAwFnd4RsyWtAvvXPubfwui+9hrojqSoE/udH8Vm4=";

    // 支付宝公钥,查看地址：https://openhome.alipay.com/platform/keyManage.htm 对应APPID下的支付宝公钥。
    public static String alipay_public_key = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAnYvRS0Osx9ZDGShH0ck0FlDCyxnwESENuKXvSke4VCXj0VzEDEfZawZZgTbizeePrRAosgpN4C0utuEye16dloF5HFJIF8Ig8WTj30hhx9J0IVqvDpJ3hkIZ6C0Qf41MzJZPOGFbSB3vvVbImUC7Lrjnpe/DryOIYAuDjh2trAeOIL0CAA+WSf7kGb/vDnHHr6EjgA0fGkKqqiteCoxb7c520lsIcZOpWnURee9X0XdqT98eUTu8thnpn/eYpaFE8Y+0+0/SHtXVFWYeeqap32ctKekiN+DEaeOQNB7mIJWCmpA9CVIVc2Qg35CPtsM+J9Ijo8+gogls5N/AmyYR4wIDAQAB";

    // 服务器异步通知页面路径  需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
    public static String notify_url =Constant.ADDRESS_POST+ "/public/common/notify_url.jsp";

    // 页面跳转同步通知页面路径 需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
    public static String return_url = Constant.ADDRESS_POST+"/public/common/return_url.jsp";

    // 签名方式
    public static String sign_type = "RSA2";

    // 字符编码格式
    public static String charset = "utf-8";

    // 支付宝网关
    public static String gatewayUrl = "https://openapi.alipaydev.com/gateway.do";

    // 支付宝网关
    public static String log_path = Constant.PAY_LOGS;



//↑↑↑↑↑↑↑↑↑↑请在这里配置您的基本信息↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑

    /**
     * 写日志，方便测试（看网站需求，也可以改成把记录存入数据库）
     * @param sWord 要写入日志里的文本内容
     */
    public static void logResult(String sWord) {
        FileWriter writer = null;
        try {
            writer = new FileWriter(log_path + "alipay_log_" + System.currentTimeMillis()+".txt");
            writer.write(sWord);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (writer != null) {
                try {
                    writer.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}
