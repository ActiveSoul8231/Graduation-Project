package com.wenlan.website.service.impl;

import com.wenlan.website.bean.FindOrDiscover;
import com.wenlan.website.dao.FindOrDiscoverDao;
import com.wenlan.website.service.FindOrDiscoverService;
import com.wenlan.website.utils.PageCountUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

/**
 * @Author wenlan
 * @Date 2020-2-16 20:36
 * @Version 1.0
 * Content:
 */
@Service
public class FindOrDiscoverServiceImpl implements FindOrDiscoverService {

    @Autowired
    private FindOrDiscoverDao FindOrDiscoverDao;


    /**
     * 通过m_type查询单条数据
     *
     *   信息类型（0为失物招领）
     * @return 实例对象
     */
    @Override
    public List<Map<String, Object>> getMTypeZero() {
        return FindOrDiscoverDao.getMTypeZero();
    }

    /**
     * 通过m_type查询单条数据
     *
     *   信息类型（1为寻物启事）
     * @return 实例对象
     */
    @Override
    public List<Map<String, Object>> getMTypeOne() {
        return FindOrDiscoverDao.getMTypeOne();
    }

    @Override
    public void insertFind(FindOrDiscover findOrDiscover, Integer mUId, String mImage2) {
        //        发布日期
        SimpleDateFormat sf_ = new SimpleDateFormat("yyyy-MM-dd");
        String mLaunchDate = sf_.format(new Date());
        findOrDiscover.setmImage(mImage2);
        FindOrDiscoverDao.insertFind(findOrDiscover,mUId,mLaunchDate);
    }

    @Override
    public void insertDiscover(FindOrDiscover findOrDiscover, Integer mUId, String mImage2) {
        //        发布日期
        SimpleDateFormat sf_ = new SimpleDateFormat("yyyy-MM-dd");
        String mLaunchDate = sf_.format(new Date());
        findOrDiscover.setmImage(mImage2);
        FindOrDiscoverDao.insertDiscover(findOrDiscover,mUId,mLaunchDate);
    }

    @Override
    public FindOrDiscover getByMId(Integer mId) {
        return FindOrDiscoverDao.getByMId(mId);
    }

    @Override
    public List<Map<String,Object>> getByMUid(Integer mUId) {
        return FindOrDiscoverDao.getByMUid(mUId);
    }

    @Override
    public List<Map<String, Object>> getMTypeZeroAll() {
        return FindOrDiscoverDao.getMTypeZeroAll();
    }

    @Override
    public List<Map<String, Object>> getMTypeOneAll() {
        return FindOrDiscoverDao.getMTypeOneAll();
    }

    /**
     * 用户修改自己发布信息的状态
     * @param msg
     * @return
     */
    @Override
    public FindOrDiscover toUpdatePost(FindOrDiscover msg) {
        Integer mPostStatus = Integer.valueOf(msg.getmPostStatus());
        FindOrDiscoverDao.toUpdatePost(msg,mPostStatus);
        return msg;
    }

    /**
     * 用户删除自己发布的信息
     * @param msg
     * @return
     */
    @Override
    public FindOrDiscover toUpdateDel(FindOrDiscover msg) {
        Integer mDelStatus =  Integer.valueOf(msg.getmDelStatus());
        FindOrDiscoverDao.toUpdateDel(msg,mDelStatus);
        return msg;
    }
/*-----------------------------------------后台----------------------------------------------------*/
    @Override
    public List<Map<String, Object>> getAllMsg(String selectByValue, PageCountUtil pageCountUtil) {
        return FindOrDiscoverDao.getAllMsg(selectByValue,pageCountUtil.getPageCount(),pageCountUtil.getPageSize());
    }

    @Override
    public FindOrDiscover AgetByMId(Integer mId) {
        return FindOrDiscoverDao.AgetByMId(mId);
    }

    @Override
    public void AtoUpdateDel(FindOrDiscover msg) {
        Integer mDelStatus =  Integer.valueOf(msg.getmDelStatus());
        FindOrDiscoverDao.AtoUpdateDel(msg,mDelStatus);

    }

    @Override
    public void AtoUpdatePost(FindOrDiscover msg) {
        Integer mPostStatus = Integer.valueOf(msg.getmPostStatus());
        FindOrDiscoverDao.AtoUpdatePost(msg,mPostStatus);
    }

    @Override
    public Integer getAllMsgCount() {
        return FindOrDiscoverDao.getAllMsgCount();
    }

    @Override
    public List<FindOrDiscover> getAllByDate() {
        return FindOrDiscoverDao.getAllByDate();
    }

    @Override
    public Integer getAllByMsg1() {
        return FindOrDiscoverDao.getAllByMsg1();
    }

    @Override
    public Integer getAllByMsg0() {
        return FindOrDiscoverDao.getAllByMsg0();
    }

    @Override
    public Integer getAllByDel1() {
        return FindOrDiscoverDao.getAllByDel1();
    }


}
