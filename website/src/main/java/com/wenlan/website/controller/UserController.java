package com.wenlan.website.controller;

import com.wenlan.website.bean.User;
import com.wenlan.website.service.UserService;
import com.wenlan.website.utils.MailSender;
import com.wenlan.website.utils.SendEmail;
import com.wenlan.website.utils.VerificationCodeUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import javax.jws.WebParam;
import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;

/**
 * @Author wenlan
 * @Date 2020-2-15 21:01
 * @Version 1.0
 * Content:
 */
@RestController
@RequestMapping("user")
public class UserController {

    /*自动注入*/
    @Autowired
    private UserService userService;
    @Autowired
    HttpServletRequest request;

    @RequestMapping(path = "toIndex")
    public ModelAndView toIndex(){
        ModelAndView modelAndView = new ModelAndView();
        return new ModelAndView("/register");
    }

    @RequestMapping("toLogin")
    public ModelAndView toLogin(){
        return new ModelAndView("/login");
    }

    @RequestMapping("toRegister")
    public ModelAndView toRegister(){
        return new ModelAndView("/register");
    }



    /**
     *                      登录
     * @param user
     * @return
     */
//    @RequestMapping(path = "userLogin",method = RequestMethod.POST)
//    public String userLogin(User user){
//        String jsp = userService.userLogin(user);
//        return jsp;
//    }

    @RequestMapping(path = "userLogin",method = RequestMethod.POST)
    public ModelAndView userLogin(User user){
        return userService.userLogin(user);
    }

//    @RequestMapping(path = "toLogin",method = RequestMethod.GET)
//    public String aaa(){
//        return "user/login";
//    }

    /**
     *                                    获取用户账号的状态
     * 通过  @ResponseBody   将返回的信息转为 ajax 可识别的  json 文件
     * @param uName
     * @return
     */
    @RequestMapping(path = "getUserFlag",method = RequestMethod.POST)
    @ResponseBody
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

    @RequestMapping(path = "logout",method = RequestMethod.GET)
    public ModelAndView logout() {
        request.getSession().removeAttribute("userSession");
        return new ModelAndView("redirect:/m/getMassagesList");
    }

    @RequestMapping(path = "adminLogout",method = RequestMethod.GET)
    public ModelAndView adminLogout() {
        request.getSession().removeAttribute("admin");
        return new ModelAndView("redirect:/m/getMassagesList");
    }


    /**
     *                      ajax注册验证
     * @param uName
     * @return
     */
    @RequestMapping(path = "getUserName",method = RequestMethod.POST)
    @ResponseBody
    public Map<String,Object> getUserName(String uName){
        String userName1 = userService.getUserName(uName);
        HashMap<String, Object> stringObjectHashMap = new HashMap<>();
        stringObjectHashMap.put("message",userName1);
        return stringObjectHashMap;
    }


    @RequestMapping(path = "sendMail",method = RequestMethod.POST)
    @ResponseBody
    public Map<String,Object> sendMail(String uEmail) throws Exception {
        String nonce_str = VerificationCodeUtil.getNonce_str();
//        发右键（用户邮箱，随机数）
        MailSender.sendMailFunction(uEmail,nonce_str);
        HashMap<String, Object> stringObjectHashMap = new HashMap<>();
//        将产生的随机数塞进  id='mailCodeReturn'  的表单中  键 为 “mailCode”
        stringObjectHashMap.put("mailCode",nonce_str);
        return stringObjectHashMap;
    }
    @RequestMapping(path = "sendMailUpdate",method = RequestMethod.POST)
    @ResponseBody
    public Map<String,Object> sendMailUpdate(String uEmail) throws Exception {
        User userSess = (User) request.getSession().getAttribute("userSession");
        String username = userSess.getuName();
        String code = VerificationCodeUtil.get6Nonce_str();
//        发邮件（用户邮箱，随机数）
        SendEmail.sendMail(uEmail,code,username);
        HashMap<String, Object> stringObjectHashMap = new HashMap<>();
//        将产生的随机数塞进  id='mailCodeReturn'  的表单中  键 为 “mailCode”
        stringObjectHashMap.put("mailCode",code);
        return stringObjectHashMap;
    }
    @RequestMapping(path = "sendMailNew",method = RequestMethod.POST)
    @ResponseBody
    public Map<String,Object> sendMailNew(String uEmail) throws Exception {
        User userSess = (User) request.getSession().getAttribute("userSession");
        String username = userSess.getuName();
        String code = VerificationCodeUtil.get6Nonce_str();
//        发邮件（用户邮箱，随机数）
        SendEmail.sendMail(uEmail,code,username);
        HashMap<String, Object> stringObjectHashMap = new HashMap<>();
//        将产生的随机数塞进  id='mailCodeReturn'  的表单中  键 为 “mailCode”
        stringObjectHashMap.put("mailCode",code);
        return stringObjectHashMap;
    }

    /**
     *                      注册时ajax  判断邮箱是否已经被注册
     * @param userMailFlag
     * @return
     */
    @RequestMapping(path = "userEmailFlag",method = RequestMethod.POST)
    @ResponseBody
    public Map<String,Object> userEmailFlag(String userMailFlag) {
        String userMail = userService.getUserEmailFlag(userMailFlag);
        HashMap<String, Object> stringObjectHashMap = new HashMap<>();
        stringObjectHashMap.put("mailFlag",userMail);
        return stringObjectHashMap;
    }

    /**
     *                      注册时 ajax 判断用户手机号是否已经被注册
     * @param uTelephone
     * @return
     */
    @RequestMapping(path = "userTel",method = RequestMethod.POST)
    @ResponseBody
    public Map<String,Object> userTel(String uTelephone){
        String userTele=userService.getUserTel(uTelephone);
        HashMap<String, Object> stringObjectHashMap = new HashMap<>();
        stringObjectHashMap.put("phoneFlag",userTele);
        return stringObjectHashMap;

    }

    /**
     *                      普通用户注册
     * @param user
     * @param
     * @return
     */
//    @RequestMapping(path = "userRegister",method = RequestMethod.POST)
//    public String registerUser(User user) {
//        userService.registerUser(user);
//        return "user/login";
//    }

    @RequestMapping(path = "userRegister",method = RequestMethod.POST)
    public ModelAndView userRegister(User user){
        return userService.registerUser(user);
    }

    @RequestMapping(path = "userUpdateName",method = RequestMethod.POST)
    public ModelAndView userUpdateName(String uName){
        User userss = (User) request.getSession().getAttribute("userSession");
        Integer uId = userss.getuId();
        User ss = userService.getByUId(uId);
        ss.setuName(uName);
        userService.updateName(ss);
        return new ModelAndView("redirect:/user/logout");
    }
    @RequestMapping(path = "userUpdateEmail",method = RequestMethod.POST)
    public ModelAndView userUpdateEmail(String uEmail){
        User userss = (User) request.getSession().getAttribute("userSession");
        Integer uId = userss.getuId();
        User ss = userService.getByUId(uId);
        ss.setuEmail(uEmail);
        userService.updateEmail(ss);
        return new ModelAndView("redirect:/user/logout");
    }
    @RequestMapping(path = "userUpdatePassword",method = RequestMethod.POST)
    public ModelAndView userUpdatePassword(String uPassword){
        User userss = (User) request.getSession().getAttribute("userSession");
        userss.setuPassword(uPassword);
        userService.updatePassword(userss);
        return new ModelAndView("redirect:/user/logout");
    }

}
