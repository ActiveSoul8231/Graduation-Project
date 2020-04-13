package com.website.web_vue.config;


import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

//新增加一个类用来添加虚拟路径映射
@Configuration
public class MyPicConfig implements WebMvcConfigurer {
    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
//        registry.addResourceHandler("/public/**").addResourceLocations("file:/home/shop/src/main/resources/static/user/");
        registry.addResourceHandler("/picture/**").addResourceLocations("file:D:\\workSpace\\Github Local Path\\GitHub\\Graduation-Project\\web_vue\\src\\main\\resources\\public\\picture\\");
    }
}