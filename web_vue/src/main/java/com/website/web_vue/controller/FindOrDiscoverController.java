package com.website.web_vue.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.website.web_vue.pojo.AreaDictionary;
import com.website.web_vue.pojo.ArticleDictionary;
import com.website.web_vue.pojo.FindOrDiscover;
import com.website.web_vue.pojo.User;
import com.website.web_vue.service.AreaDictionaryService;
import com.website.web_vue.service.ArticleDictionaryService;
import com.website.web_vue.service.FindOrDiscoverService;
import com.website.web_vue.service.UserService;
import com.website.web_vue.utils.ResultUtil;
import com.website.web_vue.utils.UploadUtil;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.crypto.hash.Hash;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.jws.WebParam;
import java.text.SimpleDateFormat;
import java.util.*;

@RestController
public class FindOrDiscoverController {

    @Autowired FindOrDiscoverService findOrDiscoverService;
    @Autowired private UserService userService;
    @Autowired private AreaDictionaryService areaDictionaryService;
    @Autowired private ArticleDictionaryService articleDictionaryService;

//    异步首页
    @RequestMapping("/getMassages")
    public ResultUtil list(){
        ResultUtil result = new ResultUtil("500");
        try {
            List<FindOrDiscover> getMTypeZero = findOrDiscoverService.getMTypeZero();
            List<FindOrDiscover> getMTypeOne = findOrDiscoverService.getMTypeOne();
            HashMap<String, Object> stringObjectHashMap = new HashMap<>();
            stringObjectHashMap.put("D",getMTypeZero);
            stringObjectHashMap.put("F",getMTypeOne);
            System.out.println("失物招领的信息条数："+getMTypeZero.size());
            System.out.println("寻物启事的信息条数："+getMTypeOne.size());
            System.out.println("//////////////////////////////////////////////////////////////");
            result.setData(stringObjectHashMap);
            result.setState("200");
            result.setMsg("success");
        }catch (Exception e){
            e.printStackTrace();
            result.setMsg("服务器错误");
        }
        return result;
    }

    @RequestMapping("/getAllListD")
    public ResultUtil listD (@RequestParam(value = "start", defaultValue = "1") int start, @RequestParam(value = "size", defaultValue = "5") int size) throws Exception{
        ResultUtil result = new ResultUtil("500");
        try {
            PageHelper.startPage(start,size,"mId desc");
            List<FindOrDiscover> getMTypeZero = findOrDiscoverService.getMTypeZeroAll();
            PageInfo<FindOrDiscover> findOrDiscoverPageInfo = new PageInfo<>(getMTypeZero, 5);//5表示导航分页最多有5个，像 [1,2,3,4,5] 这样
            result.setData(findOrDiscoverPageInfo);
            result.setState("200");
            result.setMsg("success");
        } catch (Exception e){
            e.printStackTrace();
            result.setMsg("服务器错误");
        }
        return result;
    }
    @RequestMapping("/getAllListF")
    public ResultUtil listF (@RequestParam(value = "start", defaultValue = "1") int start, @RequestParam(value = "size", defaultValue = "5") int size) throws Exception{
        ResultUtil result = new ResultUtil("500");
        try {
            PageHelper.startPage(start,size,"mId desc");
            List<FindOrDiscover> getMTypeOne = findOrDiscoverService.getMTypeOneAll();
            PageInfo<FindOrDiscover> find = new PageInfo<>(getMTypeOne, 5);//5表示导航分页最多有5个，像 [1,2,3,4,5] 这样
            result.setData(find);
            result.setState("200");
            result.setMsg("success");
        } catch (Exception e){
            e.printStackTrace();
            result.setMsg("服务器错误");
        }
        return result;
    }
    @RequestMapping("/getAreaAndArticleList")
    public ResultUtil listAAA ()throws Exception{
        ResultUtil result = new ResultUtil("500");
        try {
            List<AreaDictionary> getAreaList = areaDictionaryService.getAreaList();
            List<ArticleDictionary> getArticleList = articleDictionaryService.getArticleList();
            HashMap<String, Object> stringObjectHashMap = new HashMap<>();
            stringObjectHashMap.put("areaList",getAreaList);
            stringObjectHashMap.put("articleList",getArticleList);
            result.setData(stringObjectHashMap);
            result.setMsg("success");
            result.setState("200");
        }catch (Exception e){
            e.printStackTrace();
            result.setMsg("服务器错误");
        }
        return result;
    }
    @RequestMapping("/getPersonMsgList")
    public ResultUtil getPersonMsgList(@RequestParam(value = "start", defaultValue = "1") int start, @RequestParam(value = "size", defaultValue = "5") int size) throws Exception{
        ResultUtil result = new ResultUtil("500");
        try {
            PageHelper.startPage(start,size,"mId desc");
            User user = (User) SecurityUtils.getSubject().getPrincipal();
            Integer mUId = user.getuId();
            List<FindOrDiscover> pMss = findOrDiscoverService.getByMUid(mUId);
            PageInfo<FindOrDiscover> pMs = new PageInfo<>(pMss, 5);//5表示导航分页最多有5个，像 [1,2,3,4,5] 这样
            HashMap<String, Object> stringObjectHashMap = new HashMap<>();
            stringObjectHashMap.put("userMs",user);
            stringObjectHashMap.put("personListMs",pMs);
            result.setData(stringObjectHashMap);
            result.setState("200");
            result.setMsg("success");
        }catch (Exception e){
            e.printStackTrace();
            result.setMsg("服务器错误");
        }
        return result;
    }
    @RequestMapping("/toPost")
    public ResultUtil toPost(Integer mId){
        ResultUtil result = new ResultUtil("500");
        try {
            //获取用户ID
            User user = (User) SecurityUtils.getSubject().getPrincipal();
            FindOrDiscover msg = findOrDiscoverService.getByMId(mId);
            if (user.getuLevel().equals("2")){
//                用户等级为2
                if (msg.getmPostStatus().equals("0")){
                    msg.setmPostStatus("1");
                    findOrDiscoverService.toUpdatePost(msg);
                }else {
                    msg.setmPostStatus("0");
                    findOrDiscoverService.toUpdatePost(msg);
                }
                result.setState("200");
                result.setMsg("success");
//            }else if (user.getuLevel().equals(1)){
////                用户等级为1
//                result.setState("200");
//                result.setMsg("success");
//            }else {
////                用户等级为0
//                if (msg.getmPostStatus().equals("0")){
//                    msg.setmPostStatus("1");
//                    findOrDiscoverService.toUpdatePost(msg);
//                }else {
//                    msg.setmPostStatus("0");
//                    findOrDiscoverService.toUpdatePost(msg);
//                }
//                result.setState("200");
//                result.setMsg("success");
            }
        }catch (Exception e){
            e.printStackTrace();
            result.setMsg("服务器错误");
        }
        return result;
    }
    @RequestMapping("/todel")
    public ResultUtil toDel(Integer mId){
        ResultUtil result = new ResultUtil("500");
        try {
            //获取用户ID
            User user = (User) SecurityUtils.getSubject().getPrincipal();
            FindOrDiscover msg = findOrDiscoverService.getByMId(mId);
            if (user.getuLevel().equals("2")){
                msg.setmDelStatus("1");
//                普通用户删除自己的信息
                findOrDiscoverService.toUpdateDel(msg);
                result.setState("200");
                result.setMsg("success");
            }else if (user.getuLevel().equals("1")||user.getuLevel().equals("0")){
//                管理员删除用户信息
//                ********************************************* ******************************************
//                findOrDiscoverService.adminDelMs(mId);
                result.setState("200");
                result.setMsg("success");
            }
        }catch (Exception e){
            e.printStackTrace();
            result.setMsg("服务器错误");
        }
        return result;
    }



    /*页面跳转  部分*/
//    首页
    @RequestMapping(value = "/",method = RequestMethod.GET)
    public ModelAndView listFOD(){
        ModelAndView modelAndView = new ModelAndView();
        User user = (User) SecurityUtils.getSubject().getPrincipal();
        Map<String,Object> map=new HashMap<>();
        map.put("islogin",0);//未登录
        if (user!=null){
            map.put("user",user);
            map.put("islogin",1);
        }
        modelAndView.addObject("sessionTest",map);
        modelAndView.setViewName("page/listFOD");
        return modelAndView;
    }
    @RequestMapping(value = "/toListD.html",method = RequestMethod.GET)
    public ModelAndView listAllD(){
        ModelAndView modelAndView = new ModelAndView();
        User user = (User) SecurityUtils.getSubject().getPrincipal();
        Map<String,Object> map=new HashMap<>();
        map.put("islogin",0);//未登录
        if (user!=null){
            map.put("user",user);
            map.put("islogin",1);
        }
        modelAndView.addObject("sessionTest",map);
        modelAndView.setViewName("page/listD");
        return modelAndView;
    }
    @RequestMapping(value = "/toListF.html",method = RequestMethod.GET)
    public ModelAndView listAllF(){
        ModelAndView modelAndView = new ModelAndView();
        User user = (User) SecurityUtils.getSubject().getPrincipal();
        Map<String,Object> map=new HashMap<>();
        map.put("islogin",0);//未登录
        if (user!=null){
            map.put("user",user);
            map.put("islogin",1);
        }
        modelAndView.addObject("sessionTest",map);
        modelAndView.setViewName("page/listF");
        return modelAndView;
    }
    @RequestMapping(value = "/toDetails.html",method = RequestMethod.GET)
    public ModelAndView toDetails(Integer mId){
        FindOrDiscover msg1 = findOrDiscoverService.getByMId(mId);
        Integer uId = Integer.valueOf(msg1.getmUId());
        User msg2 = userService.getByUId(uId);
        System.out.println("用户ID为："+uId+"--姓名:"+msg2.getuName()+"--发布信息ID："+msg1.getmId()+"类型为："+msg1.getmType()+"--信息标题为："+msg1.getmTitle());
        ModelAndView modelAndView = new ModelAndView();

        User user = (User) SecurityUtils.getSubject().getPrincipal();
        Map<String,Object> map=new HashMap<>();
        map.put("islogin",0);//未登录
        if (user!=null){
            map.put("user",user);
            map.put("islogin",1);
        }
        modelAndView.addObject("sessionTest",map);

        modelAndView.addObject("msgDetails",msg1);
        modelAndView.addObject("userDetails",msg2);
        modelAndView.setViewName("page/details");
        return modelAndView;
    }
    @RequestMapping("/toLaunchFind.html")
    public ModelAndView toLaunchFind(){
        ModelAndView modelAndView = new ModelAndView();
        User user = (User) SecurityUtils.getSubject().getPrincipal();
        Map<String,Object> map=new HashMap<>();
        map.put("islogin",0);//未登录
        if (user!=null){
            map.put("user",user);
            map.put("islogin",1);
        }
        modelAndView.addObject("sessionTest",map);
        modelAndView.setViewName("page/LaunchFind");
        return modelAndView;
    }
    @RequestMapping("/toLaunchDiscover.html")
    public ModelAndView toLaunchFind(String uName){
        User user = userService.findUserByName(uName);
        ModelAndView modelAndView = new ModelAndView();
//        User user = (User) SecurityUtils.getSubject().getPrincipal();
        Map<String,Object> map=new HashMap<>();
        map.put("islogin",0);//未登录
        if (user!=null){
            map.put("user",user);
            map.put("islogin",1);
        }
        modelAndView.addObject("sessionTest",map);
        modelAndView.setViewName("page/launchDiscover");
        return modelAndView;
    }
    @RequestMapping("toLaunchF")
    public ModelAndView toLaunchF(MultipartFile upload, FindOrDiscover findOrDiscover){
        User user = (User) SecurityUtils.getSubject().getPrincipal();
        //        发布日期
        findOrDiscover.setmLaunchDate(new SimpleDateFormat("yyyy-MM-dd").format(new Date()));
        findOrDiscover.setmUId(String.valueOf(user.getuId()));
        findOrDiscover.setmImage(UploadUtil.fileUpload(upload));
        findOrDiscoverService.insertFind(findOrDiscover);
        return new ModelAndView("redirect:/");
    }
    @RequestMapping("toLaunchD")
    public ModelAndView toLaunchD(MultipartFile upload, FindOrDiscover findOrDiscover){
        User user = (User) SecurityUtils.getSubject().getPrincipal();
        //        发布日期
        findOrDiscover.setmLaunchDate(new SimpleDateFormat("yyyy-MM-dd").format(new Date()));
        findOrDiscover.setmUId(String.valueOf(user.getuId()));
        findOrDiscover.setmImage(UploadUtil.fileUpload(upload));
        findOrDiscoverService.insertDiscover(findOrDiscover);
        return new ModelAndView("redirect:/");
    }
    @RequestMapping("toPersonalCenter.html")
    public ModelAndView toPersonalCenter (){
        User user = (User) SecurityUtils.getSubject().getPrincipal();
        ModelAndView modelAndView = new ModelAndView();
        Map<String,Object> map=new HashMap<>();
        map.put("islogin",0);//未登录
        if (user!=null){
            map.put("user",user);
            map.put("islogin",1);
        }
        modelAndView.addObject("sessionTest",map);
        modelAndView.setViewName("page/personalCenter");
        return modelAndView;
    }



    @RequestMapping("toTest")
    public ModelAndView toTest(){
        return new ModelAndView("page/555555");
    }
    @RequestMapping("toTest2")
    public ModelAndView toTest2(){
        return new ModelAndView("page/demoLayUI");
    }
}
