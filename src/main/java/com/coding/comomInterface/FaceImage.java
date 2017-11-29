package com.coding.comomInterface;

import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.net.URL;

public class FaceImage {

    public static void downloadPicture(String ossURL) {
        try {
            URL url = new URL(ossURL);
            DataInputStream dataInputStream = new DataInputStream(url.openStream());
            String imageName = Constant.FaceImage;
            FileOutputStream fileOutputStream = new FileOutputStream(new File(imageName));
            ByteArrayOutputStream output = new ByteArrayOutputStream();
            byte[] buffer = new byte[1024];
            int length=0;
            while ((length = dataInputStream.read(buffer)) > 0)
                output.write(buffer, 0, length);
            byte[] context = output.toByteArray();
            fileOutputStream.write(context);
            fileOutputStream.flush();
            dataInputStream.close();
            fileOutputStream.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}