package com.coding.comomInterface;

import java.util.Properties;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.activation.DataHandler;
import javax.activation.DataSource;
import javax.activation.FileDataSource;
import javax.mail.BodyPart;
import javax.mail.Message;
import javax.mail.Multipart;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;

import com.sun.mail.util.MailSSLSocketFactory;

/**
 * 邮件工具类
 *
 * @author 张伟
 * @version 1.0
 */
public class MessageTools {

    private static MessageTools tools = null;
    /**
     * 发件箱
     */
    private String outbox = "2150379257@qq.com";
    /**
     * 发件箱的唯一密码
     */
    private String outboxCode = "qmmrsnpcqzordibe";
    /**
     * 默认发送内容
     */
    private String text = "box";
    /**
     * 默认发送标题
     */
    private String boxTitle = "hello world";
    /**
     * 收件箱
     */
    private String inbox = null;
    /**
     * 发送的本地文件
     */
    private String fileAddress = null;

    public static MessageTools initTool() {
        if (tools == null)
            return tools = new MessageTools();
        return tools;
    }

    private MessageTools() {
    }

    /**
     * 设置发件箱信息
     *
     * @param outbox     发件箱账号
     * @param outboxCode 发件箱密码，注意这里的密码不是账号密码，是客服端授权密码SMTP
     */

    public void setOutbox(String outbox, String outboxCode) {
        this.outbox = outbox;
        this.outboxCode = outboxCode;
    }

    /**
     * 发送邮件
     */
    public void sendQQMessage() throws Exception {
        try {
            Properties props = new Properties();
            MailSSLSocketFactory sf = new MailSSLSocketFactory();
            sf.setTrustAllHosts(true);
            props.put("mail.smtp.ssl.enable", "true");
            props.put("mail.smtp.ssl.socketFactory", sf);
            props.put("mail.smtp.host", "smtp.qq.com");
            props.setProperty("mail.debug", "true");
            props.put("mail.smtp.auth", "true");
            props.setProperty("mail.transport.protocol", "smtp");
            Session session = Session.getDefaultInstance(props);
            session.setDebug(true);
            MimeMessage message = new MimeMessage(session);
            message.setFrom(new InternetAddress(outbox));
            message.addRecipient(Message.RecipientType.TO, new InternetAddress(inbox));
            message.setSubject(boxTitle);
            Multipart multipart = new MimeMultipart();
            BodyPart contentPart = new MimeBodyPart();
            contentPart.setText(text);
            multipart.addBodyPart(contentPart);
            if (fileAddress != null) {
                BodyPart messageBodyPart = new MimeBodyPart();
                DataSource source = new FileDataSource(fileAddress);
                messageBodyPart.setDataHandler(new DataHandler(source));
                sun.misc.BASE64Encoder enc = new sun.misc.BASE64Encoder();
                messageBodyPart.setFileName("=?GBK?B?" + enc.encode(source.getName().getBytes()) + "?=");
                multipart.addBodyPart(messageBodyPart);
            }
            message.setContent(multipart);
            message.saveChanges();
            Transport transport = session.getTransport("smtp");
            transport.connect("smtp.qq.com", outbox, outboxCode);
            transport.sendMessage(message, message.getAllRecipients());
            transport.close();
        } catch (Exception e) {
            e.printStackTrace();
            throw new Exception("验证码发送失败！请检查你的邮件地址是否正确。");
        }
    }

    /**
     * 设置收件箱
     *
     * @param inbox 收件箱
     */
    public void setInbox(String inbox) {
        this.inbox = inbox;
    }

    /**
     * 设置发件文件
     *
     * @param fileAddress 文件地址
     */
    public void setFile(String fileAddress) {
        this.fileAddress = fileAddress;
    }

    /**
     * 设置发送内容
     *
     * @param text 邮件内容
     */
    public void setText(String text) {
        this.text = text;
    }

    /**
     * 设置邮件标题
     *
     * @param boxTitle 邮件标题
     */
    public void setBoxTitle(String boxTitle) {
        this.boxTitle = boxTitle;
    }

    /**
     * 检测邮箱合法性
     *
     * @param email 邮件字符串
     * @return 是否是邮箱
     */
    public boolean isEmail(String email) {
        if ((email == null) || (email.trim().length() == 0)) {
            return false;
        }
        String regEx = "^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,4}$";
        Pattern p = Pattern.compile(regEx);
        Matcher m = p.matcher(email.trim().toLowerCase());
        return m.find();
    }

}
