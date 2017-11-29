package com.coding.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import seetaface.Face;
import sun.misc.BASE64Decoder;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.FileOutputStream;
import java.io.OutputStream;

@Controller
public class ScController {

    @RequestMapping("getSc")
    public String getSc() {
        return "homes/sc";
    }

    @RequestMapping("/sc")
    @ResponseBody
    public boolean sc(String email, HttpServletRequest request, String sj) throws Exception {
        String imgFilePath = "c:/2.jpg";
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
            Face face = new Face();
            float f = face.start("c:\\1.jpg", "c:\\2.jpg");
            System.out.println(f);
            if (f > 0.8)
                return true;
        } catch (Exception e) {
        }
        return false;
    }
}
