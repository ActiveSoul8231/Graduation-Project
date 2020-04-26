package com.wenlan.website.utils;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

/**
 * @Author wenlan
 * @Date 2020-2-19 13:17
 * @Version 1.0
 * Content:
 */
public class UploadUtil {

//    private static String UPLOAD_FOLDER = "D:\\workSpace\\Github Local Path\\GitHub\\website\\src\\main\\webapp\\template\\picture";
    private static String UPLOAD_FOLDER = "D:\\workSpace\\Github Local Path\\GitHub\\Graduation-Project\\website\\src\\main\\webapp\\template\\picture";
    public static String fileUpload(MultipartFile srcFile) {
        try {
            File destFile = new File(UPLOAD_FOLDER);
            if (!destFile.exists()) {
                destFile = new File("\\picture");
            }
            //输出目标文件的绝对路径
            System.out.println("file path:" + destFile.getAbsolutePath());
//拼接子路径
            SimpleDateFormat sf_ = new SimpleDateFormat("yyyyMMdd/");
            String times = sf_.format(new Date());
            File upload = new File(destFile.getAbsolutePath(), "\\" + times);
//若目标文件夹不存在，则创建
            if (!upload.exists()) {
                upload.mkdirs();
            }
            System.out.println("完整的上传路径：" + upload.getAbsolutePath() + "/" + srcFile);
//根据srcFile大小，准备一个字节数组
            byte[] bytes = srcFile.getBytes();


            String uuid = UUID.randomUUID().toString().replaceAll("-", "");
// 获得文件原始名称
            String fileName = srcFile.getOriginalFilename();
// 获得文件后缀名称
            String suffixName = fileName.substring(fileName.lastIndexOf(".") + 1).toLowerCase();
// 生成最新的uuid文件名称
            String newFileName = uuid + "."+ suffixName;
//通过项目路径，拼接上传路径
            Path path = Paths.get(upload.getAbsolutePath() + "/" + newFileName);
            Files.write(path, bytes);
            HttpServletRequest request = HttpContextUtils.getHttpServletRequest();
            String contextpath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath();
            String url2 = contextpath + "/template/picture/" + times + newFileName;
            System.out.println("相对路径:" + url2);

            return url2;
        } catch (IOException e) {
            e.printStackTrace();
        }
        return "文件上传出现错误";
    }
}
