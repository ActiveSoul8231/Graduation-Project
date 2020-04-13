package com.website.web_vue.controller;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.util.Map;
@RestController
public class FileController {
    private static final Logger LOGGER = LoggerFactory.getLogger(FileController.class) ;
    /**
     * 测试单个文件上传
     */
    @RequestMapping("/upload1")
    public String upload1 (HttpServletRequest request, @RequestParam("file") MultipartFile file){
        Map<String,String[]> paramMap = request.getParameterMap() ;
        if (!paramMap.isEmpty()){
            LOGGER.info("paramMap == &gt;&gt;{}",paramMap);
        }
        try{
            if (!file.isEmpty()){
                // 打印文件基础信息
                LOGGER.info("Name == &gt;&gt;{}",file.getName());
                LOGGER.info("OriginalFilename == &gt;&gt;{}",file.getOriginalFilename());
                LOGGER.info("ContentType == &gt;&gt;{}",file.getContentType());
                LOGGER.info("Size == &gt;&gt;{}",file.getSize());
                // 文件输出地址
                String filePath = "F:/boot-file/" ;
                new File(filePath).mkdirs();
                File writeFile = new File(filePath, file.getOriginalFilename());
                file.transferTo(writeFile);
                System.out.println();
            }
            return "success" ;
        } catch (Exception e){
            e.printStackTrace();
            return "系统异常" ;
        }
    }
    /**
     * 测试多文件上传
     */
//    @RequestMapping("/upload2")
//    public String upload2 (HttpServletRequest request, @RequestParam("file") MultipartFile[] fileList){
//        Map<string, string[]> paramMap = request.getParameterMap() ;
//        if (!paramMap.isEmpty()){
//            LOGGER.info("paramMap == &gt;&gt;{}",paramMap);
//        }
//        try{
//            if (fileList.length &gt; 0){
//                for (MultipartFile file:fileList){
//                    // 打印文件基础信息
//                    LOGGER.info("Name == &gt;&gt;{}",file.getName());
//                    LOGGER.info("OriginalFilename == &gt;&gt;{}",file.getOriginalFilename());
//                    LOGGER.info("ContentType == &gt;&gt;{}",file.getContentType());
//                    LOGGER.info("Size == &gt;&gt;{}",file.getSize());
//                    // 文件输出地址
//                    String filePath = "F:/boot-file/" ;
//                    new File(filePath).mkdirs();
//                    File writeFile = new File(filePath, file.getOriginalFilename());
//                    file.transferTo(writeFile);
//                }
//            }
//            return "success" ;
//        } catch (Exception e){
//            return "fail" ;
//        }
//    }
}
