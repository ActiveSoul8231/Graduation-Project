package com.website.web_vue.service.impl;

import com.website.web_vue.mapper.UserMapper;
import com.website.web_vue.pojo.User;
import com.website.web_vue.service.UserService;
import com.website.web_vue.utils.MD5Util;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    UserMapper userMapper;

    @Override
    public User getByUId(Integer uId) {
        return userMapper.getByUId(uId);
    }

    @Override
    public User findUserByName(String uName) {
        return userMapper.findUserByName(uName);
    }

    @Override
    public String getUserFlag(String uName) {
        //        根据用户名进行对应用户的几种状态的查询
        User user = userMapper.findUserByName(uName);
//        如果查询到数据库中有对应用户名的用户数据，if else  判断账户的三种状态
        if (user != null){
            if(user.getuRecoveryStatus().equals('1')){
                return "🍂您已被封号，请联系管理员解封";
            }else if(user.getuLevel().equals("0")){
                return "👮‍♂️你好";
            }else if(user.getuLevel().equals("1")){
                return "🍂管理员您好";
            }
            else if(user.getuLevel().equals("2")){
                return "🍂用户您好";
            }
//            没查到用户名说明用户不存在
        }else {
            return "🍂没有这个人哦";
        }
        return "";
    }

    @Override
    public String getUserName(String net) {
//        User userByName = userMapper.getUserByName(uName);
        User userByName = userMapper.getNet(net);
        if (userByName !=null){
            return "🍂该名字已被注册，重新想一个吧";
        }
        return "";
    }

    @Override
    public String getUserEmailFlag(String net) {
//        User useMail = userMapper.getUserByEmail(userMailFlag);
        User useMail = userMapper.getNet(net);
        if (useMail != null){
            return "🍂邮箱已经被注册过了，换一个吧";
        }
        return "";
    }

    @Override
    public String getUserTel(String net) {
//        User userTel = userMapper.getUserTel(uTelephone);
        User userTel = userMapper.getNet(net);
        if (userTel != null){
            return "🍂手机号已经被注册过了，换一个吧";
        }
        return "";
    }

    @Override
    public ModelAndView registerUser(User user) {
        user.setuPassword(MD5Util.MD5(user.getuPassword()).toLowerCase());
        userMapper.registerUser(user);
        System.out.println("恭喜用户："+user.getuName()+"--注册成功");
        return new ModelAndView("redirect:/tologin.html");
    }

    @Override
    public void updateName(User shiroUser) {
        userMapper.updateName(shiroUser);
    }

    @Override
    public void updateEmail(User shiroUser) {
        userMapper.updateEmail(shiroUser);
    }

    @Override
    public void updatePassword(User shiroUser) {
        userMapper.updatePassword(shiroUser);
    }
}
