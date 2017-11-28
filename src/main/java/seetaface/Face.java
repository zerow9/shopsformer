package seetaface;

import org.bytedeco.javacpp.opencv_core.IplImage;
import org.bytedeco.javacv.CanvasFrame;
import org.bytedeco.javacv.Frame;
import org.bytedeco.javacv.OpenCVFrameConverter;
import org.bytedeco.javacv.OpenCVFrameGrabber;

import javax.imageio.ImageIO;
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

    private void face(String otherFace) throws Exception {
        OpenCVFrameGrabber grabber = new OpenCVFrameGrabber(0);
        grabber.start();
        CanvasFrame canvasFrame = new CanvasFrame("Camera");
        OpenCVFrameConverter.ToIplImage converter = new OpenCVFrameConverter.ToIplImage();
        canvasFrame.getCanvas().addMouseListener(new MouseAdapter() {
            public void mouseClicked(MouseEvent e) {
                flag = false;
            }
        });
        IplImage image = null;
        while (flag) {
            Thread.sleep(100);
            Frame frame = grabber.grab();
            canvasFrame.showImage(frame);
            image = converter.convert(grabber.grab());
        }
        BufferedImage bufferedImage = new BufferedImage(image.width(),
                image.height(), BufferedImage.TYPE_3BYTE_BGR);
        WritableRaster raster = bufferedImage.getRaster();
        DataBufferByte dataBuffer = (DataBufferByte) raster.getDataBuffer();
        byte[] data = dataBuffer.getData();
        ((ByteBuffer) image.createBuffer()).get(data);
        ImageIO.write(bufferedImage, "jpg", new File(otherFace));
        grabber.stop();
        canvasFrame.dispose();
    }
}
