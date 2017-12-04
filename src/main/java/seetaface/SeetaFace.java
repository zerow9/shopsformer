package seetaface;


import java.io.File;


public class SeetaFace {
    /**
     * 初始化，指定人脸识别模型文件目录
     *
     * @param vModelDir 模型文件目录
     * @return
     */
    public native boolean initModelPath(String vModelDir);//静态链接库.lib  动态链接库dll（钩子函数）

    /**
     * 人脸特征比对
     *
     * @param vFeat1 ：人脸1特征
     * @param vFeat2 ：人脸2特征
     * @return 相似度范围在0~1,返回负数表示出错
     */
    public native float CalcSimilarity(float[] vFeat1, float[] vFeat2);

    /**
     * 检测人脸
     */
    public native CMSeetaFace[] DetectFacesByte(byte[] vBmpByte, int vWidth, int vHeight);
}