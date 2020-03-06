package com.wenlan.website.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.*;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

/**
 * @Auther wenlan
 * @Date 2019/10/15
 */
@Configuration
public class WebConfig implements WebMvcConfigurer {

//    此方法实现项目启动默认页面
    @Override
    public void addViewControllers(ViewControllerRegistry registry) {
        registry.addRedirectViewController("/", "/m/getMassagesList");
    }

//    加载静态资源
    private static final String[] CLASSPATH_RESOURCE_LOCATIONS = {
            "classpath:/resources/", "classpath:/static/"
    };

    //    2-添加拦截器
    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        registry.addInterceptor(new LoginInterceptor())
//                .excludePathPatterns("/")
                .excludePathPatterns("/jsp/listDiscover.jsp")
                .excludePathPatterns("/jsp/listFind.jsp")
                .excludePathPatterns("/jsp/details.jsp")
                .excludePathPatterns("/jsp/index.jsp")
                .excludePathPatterns("/jsp/login.jsp")
                .excludePathPatterns("/jsp/register.jsp")
                .excludePathPatterns("/jsp/register.jsp")

                .excludePathPatterns("/user/toLogin")
                .excludePathPatterns("/user/toRegister")
                .excludePathPatterns("/user/toIndex")
                .excludePathPatterns("/user/getUserFlag")
                .excludePathPatterns("/user/getUserName")
                .excludePathPatterns("/user/sendMail")
                .excludePathPatterns("/user/userEmailFlag")
                .excludePathPatterns("/user/userTel")
                .excludePathPatterns("/user/userRegister")
                .excludePathPatterns("/user/userLogin")

                .excludePathPatterns("/m/getMassagesList")
                .excludePathPatterns("/m/getDiscoverList")
                .excludePathPatterns("/m/getFindList")
                .excludePathPatterns("/m/toDetails")
//               以后取消
                .excludePathPatterns("/static/**/**");
    }


    /*同时pom文件放下边的东西后不可以访问jsp所以加了viewResolver 和 configureDefaultServletHandling 方法放行jsp
    *
    * <dependency>
            <groupId>org.springframework.boot</groupId>
            <artifactId>spring-boot-starter-thymeleaf</artifactId>
        </dependency>
    * */

//    配置springBoot 整合  jsp+thymeleaf   使用@Bean  注入
    @Bean
    public ViewResolver viewResolver() {
        InternalResourceViewResolver resolver = new InternalResourceViewResolver();
        resolver.setPrefix("/jsp/");        //配置路径前缀
        resolver.setSuffix(".jsp");         //配置路径后缀
//        resolver.setViewNames("*");         //配置返回名称  controller 中的方法返回的  String  and  ModelAndView 中 setViewName方法
        resolver.setViewNames("*/*"); // return "user/userList" 或者 return "admin/adminLogin"       //配置返回名称  controller 中的方法返回的  String  and  ModelAndView 中 setViewName方法
        resolver.setOrder(2);
        return resolver;
    }

    @Override
    public void configureDefaultServletHandling(DefaultServletHandlerConfigurer configurer) {
        configurer.enable();
    }

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        WebMvcConfigurer.super.addResourceHandlers(registry);
    }
}
