//package com.wenlan.website.utils;
//
//import org.apache.commons.io.FileUtils;
//
//import javax.servlet.http.HttpServletRequest;
//import java.io.File;
//import java.io.IOException;
//import java.text.SimpleDateFormat;
//import java.util.Date;
//
///**
// * @Author wenlan
// * @Date 2020-2-21 17:47
// * @Version 1.0
// * Content:
// */
//public class FileUploadUtil {
//    public static String fileUpLoad(File upload, String uploadFileName){
//        // 用于存储上传的图片
//        String realPath = "D:\\workSpace\\Github Local Path\\GitHub\\website\\src\\main\\resources\\static\\picture";
//
//        File destFile = new File(realPath);
//        if (!destFile.exists()) {
//            destFile = new File("\\picture");
//        }
//        //输出目标文件的绝对路径
//        System.out.println("file path:" + destFile.getAbsolutePath());
////拼接子路径
//        SimpleDateFormat sf_ = new SimpleDateFormat("yyyyMMdd/");
//        String times = sf_.format(new Date());
//        File uploads = new File(destFile.getAbsolutePath(), "\\" + times);
////若目标文件夹不存在，则创建
//        if (!upload.exists()) {
//            upload.mkdirs();
//        }
//        System.out.println("完整的上传路径：" + uploads.getAbsolutePath() + "/" + uploadFileName);
//
//
//
//
//
//        //文件上传   使用复制方法  进行try  catch
//        try {
//            FileUtils.copyFile(upload,new File(uploads,uploadFileName));
//        } catch (IOException e) {
//            e.printStackTrace();
//        }
//        //获取动态路径，用于存入数据库
//        HttpServletRequest request = ServletActionContext.getRequest();
//        //获取访问协议
//        String scheme = request.getScheme();
//        //获取动态IP地址
//        String serverName = request.getServerName();
//        //获取动态端口号
//        int serverPort = request.getServerPort();
//        String url = scheme+"://"+serverName+":"+serverPort+"/uploadFile/"+uploadFileName;
//        return url;
//    }
//}
