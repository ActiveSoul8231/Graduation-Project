package com.wenlan.website.service.impl;

import com.wenlan.website.bean.User;
import com.wenlan.website.dao.UserDao;
import com.wenlan.website.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

/**
 * @Author wenlan
 * @Date 2020-2-15 21:09
 * @Version 1.0
 * Content:
 */
@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;
    @Autowired
    private HttpServletRequest request;


    /**
     *                      登录方法
     * @param user
     * @return
     */
    @Override
    public ModelAndView userLogin(User user) {
//        查询数据库的中用户的所有的信息
        User user1 = userDao.getUserByUser(user);
//        如果数据库中 有该用户的信息
        if (user1 != null){
//            判断jsp 页面输入的用户密码与数据库中的用户密码进行比较
            if (user1.getuPassword().equals(user.getuPassword())){
                System.out.println(user1.getuName()+user1.getuEmail()+user1.getuPassword()+"++++++++++++++++++++++++++++++++++++++++++++++++++++---");
                if (user1.getuLevel().equals("2")){
                    request.getSession().setAttribute("userSession",user1);
                    ModelAndView modelAndView = new ModelAndView();
                    modelAndView.addObject("userSession",user1);
                    modelAndView.setViewName("redirect:/m/getMassagesList");
                    return modelAndView;

                }else {
                    request.getSession().setAttribute("admin",user1);
                    ModelAndView modelAndView = new ModelAndView("/backStage/index");
                    modelAndView.addObject("admin",user1);
                    return modelAndView;
                }
            }else {
//                判断密码如果错误之后回显用户名，回到登录页面
                ModelAndView modelAndView = new ModelAndView();
                modelAndView.addObject("message","🍂密码错误");
                modelAndView.addObject("uName",user.getuName());
                modelAndView.setViewName("redirect:/user/toLogin");
                return modelAndView;
            }
        }
//        数据库中无此用户的账号去到注册页面
        return new ModelAndView("redirect:/user/toRegister");
    }

    @Override
    public String getUserFlag(String uName) {
//        根据用户名进行对应用户的几种状态的查询
        User user = userDao.getUserByName(uName);
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

    /**
     *              注册时用户名称是否重复注册的ajax  判断查询
     * @param uName
     * @return
     */
    @Override
    public String getUserName(String uName) {
        User userByName = userDao.getUserByName(uName);
        if (userByName !=null){
            return "🍂该名字已被注册，重新想一个吧";
        }
        return "";
    }

    /**
     *                            注册时候验证邮箱是否已经被注册
     * @param userMailFlag
     * @return
     */
    @Override
    public String getUserEmailFlag(String userMailFlag) {
        User useMail = userDao.getUserByEmail(userMailFlag);
        if (useMail != null){
            return "🍂邮箱已经被注册过了，换一个吧";
        }
        return "";
    }

    @Override
    public String getUserTel(String uTelephone) {
        User userTel = userDao.getUserTel(uTelephone);
        if (userTel != null){
            return "🍂手机号已经被注册过了，换一个吧";
        }
        return "";
    }

    @Override
    public ModelAndView registerUser(User user) {
         userDao.registerUser(user);
        return new ModelAndView("/login");
    }

    @Override
    public User getUserNAME(String uName) {
        return userDao.getUserByName(uName);
    }

    @Override
    public User getByUId(Integer uId) {
        return userDao.getUserById(uId);
    }

    @Override
    public User getUserByUser(User user) {
        return userDao.getUserByUser(user);
    }

    @Override
    public List<Map<String, Object>> getAllUser() {
        return userDao.getAllUser();
    }

    @Override
    public List<Map<String, Object>> getAllUser2() {
        return userDao.getAllUser2();
    }

    @Override
    public void updateLevel(User us) {
        userDao.updateLevel(us);
    }

    @Override
    public void updateRecoveryStatus(User us) {
        userDao.updateRecoveryStatus(us);
    }

    @Override
    public void deleteUser(Integer uId) {
        userDao.deleteUser(uId);
    }

    @Override
    public void updateName(User ss) {
        userDao.updateName(ss);
    }

    @Override
    public void updateEmail(User ss) {
        userDao.updateEmail(ss);
    }

    @Override
    public void updatePassword(User userss) {
        userDao.updatePassword(userss);
    }


}
