package com.wenlan.website.controller;

import com.wenlan.website.bean.AreaDictionary;
import com.wenlan.website.bean.ArticleDictionary;
import com.wenlan.website.bean.FindOrDiscover;
import com.wenlan.website.bean.User;
import com.wenlan.website.service.AreaDictionaryService;
import com.wenlan.website.service.ArticleDictionaryService;
import com.wenlan.website.service.FindOrDiscoverService;
import com.wenlan.website.service.UserService;
import com.wenlan.website.utils.PageCountUtil;
import com.wenlan.website.utils.UploadUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * @Author wenlan
 * @Date 2020-2-16 18:04
 * @Version 1.0
 * Content:
 */

@Controller
@RequestMapping("m")
public class FindOrDiscoverController {
    @Autowired
    private FindOrDiscoverService findOrDiscoverService;
    @Autowired
    private UserService userService;
    @Autowired
    private AreaDictionaryService areaDictionaryService;
    @Autowired
    private ArticleDictionaryService articleDictionaryService;
    @Autowired
    private HttpServletRequest request;


    /**
     * 通过mType查询不同类型的信息
     * 信息类型（0为失物招领，1为寻物启事）
     */
    @RequestMapping(path = "getMassagesList",method = RequestMethod.GET)
    public ModelAndView getMassagesList(){
        request.getSession().getAttribute("userSession");
        ModelAndView modelAndView = new ModelAndView();
        List<Map<String,Object>> getMTypeZero = findOrDiscoverService.getMTypeZero();
        List<Map<String,Object>> getMTypeOne = findOrDiscoverService.getMTypeOne();
        modelAndView.addObject("mTypeZero",getMTypeZero);   //信息类型等于0 ：失物招领
        modelAndView.addObject("mTypeOne",getMTypeOne);     //信息类型等于1 ：寻物启事
        modelAndView.setViewName("/index");
        return modelAndView;
    }

    @RequestMapping(path = "getDiscoverList",method = RequestMethod.GET)
    public ModelAndView getDiscoverList(){
        ModelAndView modelAndView = new ModelAndView();
        List<Map<String,Object>> getMTypeZero = findOrDiscoverService.getMTypeZeroAll();
        modelAndView.addObject("mTypeZero",getMTypeZero);   //信息类型等于0 ：失物招领
        modelAndView.setViewName("/listDiscover");
        return modelAndView;
    }

    @RequestMapping(path = "getFindList",method = RequestMethod.GET)
    public ModelAndView getFindList(){
        ModelAndView modelAndView = new ModelAndView();
        List<Map<String,Object>> getMTypeOne = findOrDiscoverService.getMTypeOneAll();
        modelAndView.addObject("mTypeOne",getMTypeOne);     //信息类型等于1 ：寻物启事
        modelAndView.setViewName("/listFind");
        return modelAndView;
    }

    /**
     * 详情细览页面
     * @param mId
     * @return
     */
    @RequestMapping(path = "toDetails",method = RequestMethod.GET)
    public ModelAndView toDetails(Integer mId){
        FindOrDiscover msg1 = findOrDiscoverService.getByMId(mId);
        Integer uId = Integer.valueOf(msg1.getmUId());
        User msg2 = userService.getByUId(uId);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("msgDetails",msg1);
        modelAndView.addObject("userDetails",msg2);
        modelAndView.setViewName("/details");
        return modelAndView;
    }



//    去发布寻物jsp
    @RequestMapping(path = "toLaunchFind")
    public ModelAndView toLaunchFind(String uName){
        User getUserByName = userService.getUserNAME(uName);
        List<Map<String,Object>> getArea = areaDictionaryService.getArea();
        List<Map<String,Object>> getArticle = articleDictionaryService.getArticle();
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("userByName",getUserByName);
        modelAndView.addObject("getArea",getArea);
        modelAndView.addObject("getArticle",getArticle);
        modelAndView.setViewName("/launchFind");
        return modelAndView;
    }

//    去发布招领jsp
    @RequestMapping(path = "toLaunchDiscover")
    public ModelAndView toLaunchDiscover(String uName){
        User getUserByName = userService.getUserNAME(uName);
        List<Map<String,Object>> getArea = areaDictionaryService.getArea();
        List<Map<String,Object>> getArticle = articleDictionaryService.getArticle();
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("userByName",getUserByName);
        modelAndView.addObject("getArea",getArea);
        modelAndView.addObject("getArticle",getArticle);
        modelAndView.setViewName("/launchDiscover");
        return modelAndView;
    }

//    提交发布
    @RequestMapping(path = "toLaunchF",method = RequestMethod.POST)
    public ModelAndView toLaunchF(MultipartFile upload, FindOrDiscover findOrDiscover, Integer mUId){
        String mImage2 = UploadUtil.fileUpload(upload);
        findOrDiscoverService.insertFind(findOrDiscover,mUId,mImage2);
        return new ModelAndView("redirect:/m/getMassagesList");
    }

//    提交发布
    @RequestMapping(path = "toLaunchD",method = RequestMethod.POST)
    public ModelAndView toLaunchD(MultipartFile upload, FindOrDiscover findOrDiscover, Integer mUId){
        String mImage2 = UploadUtil.fileUpload(upload);
         findOrDiscoverService.insertDiscover(findOrDiscover,mUId,mImage2);
        System.out.println(findOrDiscover.getmAreaId()+"======"+findOrDiscover.getmArticleTypeId()+"==========="+findOrDiscover.getmTitle()+"======="+findOrDiscover.getmAreaDetail());
        return new ModelAndView("redirect:/m/getMassagesList");
    }

    /**
     * 个人中心
     * @param
     * @return
     */
    @RequestMapping(path = "toPersonalCenter",method = RequestMethod.GET)
    public ModelAndView toPersonalCenter(){
        ModelAndView modelAndView = new ModelAndView();
        User users = (User) request.getSession().getAttribute("userSession");
        if(users !=null){
            String uName = users.getuName();
            User getUser = userService.getUserNAME(uName);
            Integer mUId = getUser.getuId();
            List<Map<String,Object>> ms = findOrDiscoverService.getByMUid(mUId);
            modelAndView.addObject("userMs",getUser);
            modelAndView.addObject("UserLaunchMs",ms);
            modelAndView.setViewName("/personalCenter");
        }else {
            modelAndView.setViewName("redirect:/user/toLogin");
        }
        return modelAndView;
    }

    /**
     * 个人中心页面用户自行修改信息的发布状态
     * @param mId
     * @return
     */
    @RequestMapping(path = "toPost")
    public ModelAndView toPost(Integer mId){
        FindOrDiscover msg =  findOrDiscoverService.getByMId(mId);
        if (msg.getmPostStatus().equals("0")){
            msg.setmPostStatus("1");
        }else {
            msg.setmPostStatus("0");
        }
        FindOrDiscover jjj = findOrDiscoverService.toUpdatePost(msg);
        Integer mUId = Integer.valueOf(jjj.getmUId());
        User getUser = userService.getByUId(mUId);
        List<Map<String,Object>> ms = findOrDiscoverService.getByMUid(mUId);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("UserLaunchMs",ms);
        modelAndView.addObject("userMs",getUser);
        modelAndView.setViewName("/personalCenter");
        return modelAndView;
    }

    /**
     * 个人中心页面用户删除消息
     * @param mId
     * @return
     */
    @RequestMapping(path = "todel")
    public ModelAndView todel(Integer mId){
        FindOrDiscover msg =  findOrDiscoverService.getByMId(mId);
        msg.setmDelStatus("1");
        FindOrDiscover jjj = findOrDiscoverService.toUpdateDel(msg);
        Integer mUId = Integer.valueOf(jjj.getmUId());
        User getUser = userService.getByUId(mUId);
        List<Map<String,Object>> ms = findOrDiscoverService.getByMUid(mUId);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("UserLaunchMs",ms);
        modelAndView.addObject("userMs",getUser);
        modelAndView.setViewName("/personalCenter");
        return modelAndView;
    }

    /*------------------------------------后台---------------------------------*/

    @RequestMapping(path = "getAllMsg",method = RequestMethod.GET)
    public ModelAndView getAllMsg(Integer pageNow,Integer pageSize,String selectByValue){
        ModelAndView modelAndView = new ModelAndView();

        /*加分页*/
//        获取信息总条数
        Integer tableCount = findOrDiscoverService.getAllMsgCount();
//        分页工具类
        PageCountUtil pageCountUtil = new PageCountUtil(pageNow, pageSize, tableCount);
//        首页
        List<Map<String,Object>> allMsg = findOrDiscoverService.getAllMsg(selectByValue,pageCountUtil);
        modelAndView.addObject("tableCount",tableCount);
        /*加分页*/

        modelAndView.addObject("pageCountUtil",pageCountUtil);
        modelAndView.addObject("selectByValue",selectByValue);
//        地区管理
//        List<Map<String,Object>> getArea = areaDictionaryService.getArea();
//        类型管理
//        List<Map<String,Object>> getArticle = articleDictionaryService.getArticle();
        modelAndView.addObject("allMsg",allMsg);
//        modelAndView.addObject("allArea",getArea);
//        modelAndView.addObject("allArticle",getArticle);
        modelAndView.setViewName("/backStage/allMsgList");
        return modelAndView;
    }

    /**
     * 管理员修改信息的发布状态
     * @param mId
     * @return
     */
    @RequestMapping(path = "adminToPost")
    public ModelAndView adminToPost(Integer mId){
        FindOrDiscover msg =  findOrDiscoverService.AgetByMId(mId);
        if (msg.getmPostStatus().equals("0")){
            msg.setmPostStatus("1");
        }else {
            msg.setmPostStatus("0");
        }
         findOrDiscoverService.AtoUpdatePost(msg);
        return new ModelAndView("redirect:/m/getAllMsg");
    }

    /**
     * 管理员删除消息
     * @param mId
     * @return
     */
    @RequestMapping(path = "adminTodel")
    public ModelAndView adminTodel(Integer mId){
        FindOrDiscover msg =  findOrDiscoverService.AgetByMId(mId);
        if (msg.getmDelStatus().equals("0")){
            msg.setmDelStatus("1");
        }else {
            msg.setmDelStatus("0");
        }
         findOrDiscoverService.AtoUpdateDel(msg);
        return new ModelAndView("redirect:/m/getAllMsg");
    }
/*----------------------------toGetArea-------------------------*/
    @RequestMapping(path = "toGetArea",method = RequestMethod.GET)
    public ModelAndView toGetArea(){
        ModelAndView modelAndView = new ModelAndView();
        //        地区管理
        List<Map<String,Object>> getAreas = areaDictionaryService.getArea();
        modelAndView.addObject("allArea",getAreas);
        modelAndView.setViewName("/backStage/allAreaList");
        return modelAndView;
    }

    @RequestMapping(path = "adminTodelArea")
    public ModelAndView adminTodelArea(Integer areaId){
        areaDictionaryService.adminTodelArea(areaId);
        return new ModelAndView("redirect:/m/toGetArea");
    }

    @RequestMapping(path = "adminToAddArea")
    public ModelAndView adminToAddArea(){
        return new ModelAndView("/backStage/addArea");
    }

    @RequestMapping(path = "addArea",method = RequestMethod.POST)
    public ModelAndView addArea(AreaDictionary areaDictionary){
        areaDictionaryService.addArea(areaDictionary);
        return new ModelAndView("redirect:/m/toGetArea");
    }

    @RequestMapping(path = "adminToUpdateArea",method = RequestMethod.GET)
    public ModelAndView adminToUpdateArea(Integer areaId){
        AreaDictionary kkk = areaDictionaryService.getAreaById(areaId);
        ModelAndView modelAndView = new ModelAndView("/backStage/updateArea");
        modelAndView.addObject("getAreaById",kkk);
        return modelAndView;
    }
    @RequestMapping(path = "updateArea",method = RequestMethod.POST)
    public ModelAndView updateArea(AreaDictionary areaDictionary){
        areaDictionaryService.updateArea(areaDictionary);
        return new ModelAndView("redirect:/m/toGetArea");
    }
/*----------------------toGetArticle------------------------------------toGetArticle-----toGetArticle---*/
@RequestMapping(path = "toGetArticle",method = RequestMethod.GET)
public ModelAndView toGetArticle(){
    ModelAndView modelAndView = new ModelAndView();
    //        物品类型管理
    List<Map<String,Object>> getArticles = articleDictionaryService.getArticle();
    modelAndView.addObject("allArticle",getArticles);
    modelAndView.setViewName("/backStage/allArticleList");
    return modelAndView;
}

    @RequestMapping(path = "adminTodelArticle")
    public ModelAndView adminTodelArticle(Integer resId){
        articleDictionaryService.adminTodelArticle(resId);
        return new ModelAndView("redirect:/m/toGetArticle");
    }

    @RequestMapping(path = "adminToAddArticle")
    public ModelAndView adminToAddArticle(){
        return new ModelAndView("/backStage/addArticle");
    }

    @RequestMapping(path = "addArticle",method = RequestMethod.POST)
    public ModelAndView addArticle(ArticleDictionary articleDictionary){
        articleDictionaryService.addArticle(articleDictionary);
        return new ModelAndView("redirect:/m/toGetArticle");
    }

    @RequestMapping(path = "adminToUpdateArticle",method = RequestMethod.GET)
    public ModelAndView adminToUpdateArticle(Integer resId){
        ArticleDictionary kkk = articleDictionaryService.getArticleById(resId);
        ModelAndView modelAndView = new ModelAndView("/backStage/updateArticle");
        modelAndView.addObject("getArticleById",kkk);
        return modelAndView;
    }
    @RequestMapping(path = "updateArticle",method = RequestMethod.POST)
    public ModelAndView updateArticle(ArticleDictionary articleDictionary){
        articleDictionaryService.updateArticle(articleDictionary);
        return new ModelAndView("redirect:/m/toGetArticle");
    }
    /*-----------------------------------------------------------------------用户管理---------------------------------*/
    @RequestMapping(path = "adminToGetUser")
    public ModelAndView adminToGetUser(String uName){
        ModelAndView modelAndView = new ModelAndView();
        User users = userService.getUserNAME(uName);
        if (users.getuLevel().equals("0")){
            List<Map<String,Object>> user1R2 = userService.getAllUser();
            modelAndView.addObject("user",user1R2);
        }else{
            List<Map<String,Object>> user2 = userService.getAllUser2();
            modelAndView.addObject("user",user2);
        }
        modelAndView.addObject("admin222",users);
        modelAndView.setViewName("/backStage/allUserList");
        return modelAndView;
    }

    @RequestMapping(path = "adminToLevel")
    public ModelAndView adminToLevel(Integer uId,String uName){
        User us = userService.getByUId(uId);
        if (us.getuLevel().equals("1")){
            us.setuLevel("2");
        }else {
            us.setuLevel("1");
        }
        userService.updateLevel(us);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("uName",uName);
        modelAndView.setViewName("redirect:/m/adminToGetUser");
        return modelAndView;
    }

    @RequestMapping(path = "adminToRecoveryStatus")
    public ModelAndView adminToRecoveryStatus(Integer uId,String uName){
        User us = userService.getByUId(uId);
        if (us.getuRecoveryStatus().equals('0')){
            us.setuRecoveryStatus('1');
        }else {
            us.setuRecoveryStatus('0');
        }
        userService.updateRecoveryStatus(us);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("uName",uName);
        modelAndView.setViewName("redirect:/m/adminToGetUser");
        return modelAndView;
    }
    @RequestMapping(path = "deleteUser")
    public ModelAndView deleteUser (Integer uId,String uName){
        userService.deleteUser(uId);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("uName",uName);
        modelAndView.setViewName("redirect:/m/adminToGetUser");
        return modelAndView;
    }

//    @RequestMapping(path = "getAllDataTest",method = RequestMethod.GET)
//    @ResponseBody
//    public ModelAndView getAllDataTest(){
////        返回来一个最新一周时间的发布信息条数（条数--日期）  0失物招领    1寻物启事
//        List<FindOrDiscover> allData = findOrDiscoverService.getAllByDate();
//        int[] tiaoshu0 = new int[allData.size()];
//        int[] tiaoshu1 = new int[allData.size()];
//        String[] riqi0 = new String[allData.size()];
//        String[] riqi1 = new String[allData.size()];
//        for (int i = 0; i < allData.size(); i++) {
//            if (allData.get(i).getmType().equals("0")){
//                tiaoshu0[i]=allData.get(i).getmId();
//                riqi0[i]=allData.get(i).getmLaunchDate();
//            }else {
//                tiaoshu1[i]=allData.get(i).getmId();
//                riqi1[i]=allData.get(i).getmLaunchDate();
//            }
//            if (riqi0[i].equals(riqi1[i])){
//                riqi0 = riqi1;
//            }
//        }
//        ModelAndView modelAndView = new ModelAndView();
//            //        失物招领
//            Map<String,Object> datamap =new HashMap<>();
//                datamap.put("ts0",tiaoshu0);
//                datamap.put("ts1",tiaoshu1);
//                datamap.put("rq",riqi0);
//
//                modelAndView.addObject("datamap",datamap);
//                modelAndView.setViewName("/backStage/index3");
//                return modelAndView;
//        }


    @RequestMapping(path = "getAllData",method = RequestMethod.GET)
    @ResponseBody
    public ModelAndView getAllData(){
        ModelAndView modelAndView = new ModelAndView();
        try {
//       返回来（m_id   m_type   m_launch_date）
            List<FindOrDiscover> allData = findOrDiscoverService.getAllByDate();
            //时间集合
            List<String> datelist=new ArrayList<>();
            //失物招领集合
            List<Integer> slist=new ArrayList<>();
            //寻物招领集合
            List<Integer> xlist=new ArrayList<>();

            int allsize=allData.size();

            for (int i = 0; i <allsize ; i++) {
                //定义初始时间
                String temptime=allData.get(i).getmLaunchDate();
                List<FindOrDiscover> list2=new ArrayList<>();
                list2.add(allData.get(i));
                int tag=0;
                for (int j = i+1; j < allsize; j++) {
                    if (allData.get(j).getmLaunchDate().equals(temptime)){
                        list2.add(allData.get(j));
                        tag=j;
                    }
                }
                int tempnum=0;
                for (int j = 0; j < list2.size(); j++) {
                    if (list2.get(j).getmType().equals("0")){
                        tempnum++;
                    }
                }
                datelist.add(temptime);
                slist.add(tempnum);
                xlist.add(list2.size()-tempnum);
                if (tag!=0){
                    i=tag;
                }

            }
/*查第二的图标的信息（饼状图）*/
            Integer unfinishedList = findOrDiscoverService.getAllByMsg1();
            Integer accomplishList = findOrDiscoverService.getAllByMsg0();
            Integer removeList = findOrDiscoverService.getAllByDel1();
            System.out.println("ok");
            System.out.println("未找到"+unfinishedList);
            System.out.println("已找到"+accomplishList);
            System.out.println("已删除"+removeList);
            modelAndView.addObject("sList",slist.toArray());
            modelAndView.addObject("xList",xlist.toArray());
            modelAndView.addObject("dateList",datelist.toArray());
//            饼状图
            modelAndView.addObject("unfinishedList",unfinishedList);
            modelAndView.addObject("accomplishList",accomplishList);
            modelAndView.addObject("removeList",removeList);

            modelAndView.setViewName("/backStage/index3");
        }catch (Exception e){
            e.printStackTrace();
        }

        return modelAndView;
    }



}
