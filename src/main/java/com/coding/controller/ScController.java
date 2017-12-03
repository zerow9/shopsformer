package com.coding.controller;

import com.coding.Iservice.IUserService;
import com.coding.comomInterface.Constant;
import com.coding.comomInterface.FaceImage;
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
import java.util.List;

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



    private byte[] BASE64Buffer(String imagePath) throws Exception {
        BASE64Decoder decoder = new BASE64Decoder();
        byte[] b = decoder.decodeBuffer(imagePath);
        for (int i = 0; i < b.length; ++i) {
            if (b[i] < 0) {
                b[i] += 256;
            }
        }
        return b;
    }

    //检查人脸识别
    @RequestMapping("/sc")
    @ResponseBody
    public boolean sc(String sj, String email) throws Exception {
        try {
            byte[] b = BASE64Buffer(sj);
            OutputStream out = new FileOutputStream(Constant.FaceOtherImage);
            out.write(b);
            out.flush();
            out.close();
            String oos = userService.selectUserFaceImage(email);
            FaceImage.downloadPicture(oos);
            Face face = new Face();
            float f = face.start(Constant.FaceImage, Constant.FaceOtherImage);
            if (f > 0.8)
                return true;
        } catch (Exception e) {
        }
        return false;
    }

    //更新人脸图片
    @RequestMapping("/updateFace")
    @ResponseBody
    public boolean updateFace(String sj, HttpSession session) throws Exception {
        try {
            byte[] b = BASE64Buffer(sj);
            InputStream inputStream = new ByteArrayInputStream(b);
            String uuid = (String) session.getAttribute("uuid");
            String url = ossFileService.uploadFile(inputStream, uuid + ".jpg");
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
