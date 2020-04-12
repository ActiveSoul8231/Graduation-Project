package com.website.web_vue.controller;

import com.sun.xml.internal.ws.policy.EffectiveAlternativeSelector;
import com.website.web_vue.pojo.User;
import com.website.web_vue.service.UserService;
import com.website.web_vue.utils.MD5Util;
import com.website.web_vue.utils.MailSender;
import com.website.web_vue.utils.VerificationCodeUtil;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;

@RestController
public class UserController {
    @Autowired UserService userService;

    @RequestMapping("/tologin.html")
    public ModelAndView toLogin(){
        return new ModelAndView("page/login");
    }
    @RequestMapping("/toregister.html")
    public ModelAndView toRegister(){
        return new ModelAndView("page/register");
    }
    @RequestMapping(path = "getUserFlag",method = RequestMethod.POST)
    public Map<String,Object> getUserFlag(String uName){
        String userFlag = userService.getUserFlag(uName);
//        将方法中的类型  Map<String,Object>  传入 新的 HashMap中的  stringObjectHashMap
        HashMap<String, Object> stringObjectHashMap = new HashMap<>();
//        将用户状态放入 userFlag 中后  put 到  stringObjectHashMap 中给个键  “msg”
        stringObjectHashMap.put("message1",userFlag);
//        将放入HashMap 中的键值返回到注解 @ResponseBody  中转成  json
//        官方话：将controller的方法返回的对象 通过适当的转换器 转换为指定的格式之后，写入到response对象的body区（响应体中），通常用来返回JSON数据或者是XML
        return stringObjectHashMap;
    }

    @RequestMapping("/userDoLogin")
    public ModelAndView login(String uName, String uPassword, Model model) {
        System.out.println("username :" + uName);
        try {
            //1、获取 Subject
            Subject subject = SecurityUtils.getSubject();
            //2、封装用户数据
            UsernamePasswordToken usernamePasswordToken = new UsernamePasswordToken(uName, MD5Util.MD5(uPassword).toLowerCase() );
            //3、执行登录方法
            subject.login(usernamePasswordToken);
            System.out.println("用户"+uName+"登录成功");
            return new ModelAndView("redirect:/");
        } catch (UnknownAccountException e) {//该异常用户名称不存在
            e.printStackTrace();
            //登录失败，用户名称不存在
            model.addAttribute("msg", "用户名称不存在");
            return new ModelAndView("page/register");
        } catch (IncorrectCredentialsException e) {//该异常密码错误
            e.printStackTrace();
            //登录失败，密码错误
            model.addAttribute("msg", "密码错误");
            return new ModelAndView("redirect:/tologin.html");
        }catch (Exception e){
            return new ModelAndView("page/404");
        }
    }
    @RequestMapping("/userDoLogout.html")
    public ModelAndView logout(){
        ModelAndView mv=new ModelAndView("page/login");
        Subject subject = SecurityUtils.getSubject();
        subject.logout();
        subject.getSession().removeAttribute("user");
        return mv;
    }
/*------------------------------------------------------------------------ajax验证注册信息唯一*/
    @RequestMapping("/getUserName")
    public Map<String,Object> getUserName(String uName){
        String userName1 = userService.getUserName(uName);
        HashMap<String, Object> stringObjectHashMap = new HashMap<>();
        stringObjectHashMap.put("message",userName1);
        return stringObjectHashMap;
    }
    @RequestMapping("/getuserEmailFlag")
    public Map<String,Object> userEmailFlag(String userMailFlag) {
        String userMail = userService.getUserEmailFlag(userMailFlag);
        HashMap<String, Object> stringObjectHashMap = new HashMap<>();
        stringObjectHashMap.put("mailFlag",userMail);
        return stringObjectHashMap;
    }
    @RequestMapping("/getuserTel")
    public Map<String,Object> userTel(String uTelephone){
        String userTele=userService.getUserTel(uTelephone);
        HashMap<String, Object> stringObjectHashMap = new HashMap<>();
        stringObjectHashMap.put("phoneFlag",userTele);
        return stringObjectHashMap;
    }
    @RequestMapping("/getsendMail")
    public Map<String,Object> sendMail(String uEmail) throws Exception {
        String nonce_str = VerificationCodeUtil.getNonce_str();
//        发右键（用户邮箱，随机数）
        MailSender.sendMailFunction(uEmail,nonce_str);
        HashMap<String, Object> stringObjectHashMap = new HashMap<>();
//        将产生的随机数塞进  id='mailCodeReturn'  的表单中  键 为 “mailCode”
        stringObjectHashMap.put("mailCode",nonce_str);
        System.out.println(nonce_str+"**********验证码");
        return stringObjectHashMap;
    }

//    ---------------------------------------------------------------------------普通用户注册
    @RequestMapping("/userRegister")
    public ModelAndView userRegister(User user){
         return userService.registerUser(user);
    }

//      --------------------------------------------------------------------------用户修改个人信息
    @RequestMapping("/userUpdateMsg")
    public ModelAndView userUpdateName(User user,Integer status){
//        获取用户信息
        User shiroUser = (User) SecurityUtils.getSubject().getPrincipal();
        /*状态为1修改用户名*/
        if (status == 1){
            shiroUser.setuName(user.getuName());
            userService.updateName(shiroUser);
        }else if (status ==2){

        }else {

        }
        return new ModelAndView("redirect:/userDoLogout.html");
    }
}
