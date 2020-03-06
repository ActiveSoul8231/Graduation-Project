package com.wenlan.website.config;

import com.wenlan.website.bean.User;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * @Auther wenlan
 * @Date 2019/10/15
 */
//  1-实现拦截器接口
public class LoginInterceptor implements HandlerInterceptor {

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        HttpSession session = request.getSession();
        User admin = (User) session.getAttribute("admin");
        User user = (User) session.getAttribute("userSession");
        if(user != null||admin !=null){
            return true;
        }
//        response.sendRedirect("/user/toLogin");
        response.sendRedirect("/m/getMassagesList");
        return false;
//        return true;
    }

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {

    }
}
