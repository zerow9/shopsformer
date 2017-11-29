package com.coding.controller;

import com.coding.Iservice.IUserService;
import com.coding.comomInterface.Constant;
import com.coding.pojo.User;
import com.coding.serviceImpl.OssFileService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import seetaface.Face;
import sun.misc.BASE64Decoder;
import javax.servlet.http.HttpSession;
import java.io.ByteArrayInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;

@Controller
public class ScController {


    @Autowired
    private OssFileService ossFileService;

    @Autowired
    private IUserService userService;

    @RequestMapping("getSc")
    public String getSc() {
        return "homes/sc";
    }

    @RequestMapping("/sc")
    @ResponseBody
    public boolean sc(String sj, String username) throws Exception {
        String imgFilePath = Constant.FaceOtherImage;
        BASE64Decoder decoder = new BASE64Decoder();
        try {
            byte[] b = decoder.decodeBuffer(sj);
            for (int i = 0; i < b.length; ++i) {
                if (b[i] < 0) {
                    b[i] += 256;
                }
            }
            OutputStream out = new FileOutputStream(imgFilePath);
            out.write(b);
            out.flush();
            out.close();
            //String ossURL= userService.selectUserFaceImages(username);
            //FaceImage.downloadPicture(ossURL);
            Face face = new Face();
            float f = face.start(Constant.FaceImage, imgFilePath);
            if (f > 0.8)
                return true;
        } catch (Exception e) {
        }
        return false;
    }

    @RequestMapping("/updateFace")
    @ResponseBody
    public boolean updateFace(String sj, HttpSession session) throws Exception {
        BASE64Decoder decoder = new BASE64Decoder();
        try {
            byte[] b = decoder.decodeBuffer(sj);
            for (int i = 0; i < b.length; ++i) {
                if (b[i] < 0) {
                    b[i] += 256;
                }
            }
            InputStream inputStream = new ByteArrayInputStream(b);
            String uuid = (String) session.getAttribute("uuid");
            String url = ossFileService.uploadFile(inputStream, uuid + ".jpg");
            System.out.println(url + "############");
            User user = new User();
            user.setUserUuid(uuid);
            user.setFaceImage(url);
            userService.updateUserByPrimaryKeySelective(user);
            return true;
        } catch (Exception e) {
        }
        return false;
    }
}
