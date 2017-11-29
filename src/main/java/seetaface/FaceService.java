package seetaface;

import java.awt.image.BufferedImage;
import java.awt.image.DataBufferByte;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import javax.imageio.ImageIO;

public class FaceService{

    private final SeetaFace nativeFace = new SeetaFace();

    private final static String PATH = System.getProperty("user.dir") + File.separator + "resources";

    static {
        String dll = PATH + File.separator + "dll";
        System.load(dll + File.separator + "SeetaFaceJNIDLL.dll");
    }

    /**
     * 加载模型
     */
    public void initModel() {
        String model = PATH + File.separator + "model";
        boolean initOk = nativeFace.initModelPath(model);
        if (initOk) {
            System.out.println("注：加载模型成功！");
        } else {
            throw new RuntimeException("注：加载模型失败，模型路径为");
        }
    }

    /**
     * 检查人脸轮廓
     *
     * @param img 照片
     * @return 返回人脸信息
     */
    public CMSeetaFace[] detectFaces(String img) {
        BufferedImage image = null;
        try {
            image = ImageIO.read(new FileInputStream(img));
        } catch (IOException e) {
            e.printStackTrace();
        }
        return detectFaces(image);
    }


    public CMSeetaFace[] detectFaces(BufferedImage image) {
        if (null == image) {
            return null;
        }
        CMSeetaFace[] faces = null;
        byte[] bytes = ((DataBufferByte) image.getData().getDataBuffer())
                .getData();
        faces = nativeFace.DetectFacesByte(bytes, image.getWidth(),
                image.getHeight());
        if (faces == null) {
            throw new RuntimeException("注：检测不到人脸！");
        }
        return faces;
    }

    /**
     * 提取人脸特征值
     *
     * @param feature1 原始图片
     * @param feature2 识别图片
     * @return 特征值分数
     */
    public float compare(float[] feature1, float[] feature2) {
        if (feature1 != null && feature1.length > 0 && feature2 != null
                && feature2.length > 0) {
            return nativeFace.CalcSimilarity(feature1, feature2);
        }
        return -1f;
    }
}
