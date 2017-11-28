package seetaface;



import javax.imageio.ImageIO;
import java.awt.*;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.awt.image.BufferedImage;
import java.awt.image.DataBufferByte;
import java.awt.image.WritableRaster;
import java.io.File;
import java.nio.ByteBuffer;

public class Face {
    private boolean flag = true;


    public float start(String face, String otherFace) throws Exception {
        FaceService faceService = new FaceService();
        faceService.initModel();
        float[] faceVo1 = faceService.detectFaces(face)[0].getFeatures();
        float[] faceVo2 = faceService.detectFaces(otherFace)[0].getFeatures();
        float sim = faceService.compare(faceVo1, faceVo2);
        return sim;
    }
}
