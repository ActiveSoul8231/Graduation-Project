package com.wenlan.website.service;

import com.wenlan.website.bean.FindOrDiscover;
import com.wenlan.website.utils.PageCountUtil;

import java.util.List;
import java.util.Map;

/**
 * @Author wenlan
 * @Date 2020-2-16 18:25
 * @Version 1.0
 * Content:
 */
public interface FindOrDiscoverService {

    List<Map<String, Object>> getMTypeZero();

    List<Map<String, Object>> getMTypeOne();

    void insertFind(FindOrDiscover findOrDiscover, Integer mUId, String mImage2);

    void insertDiscover(FindOrDiscover findOrDiscover, Integer mUId, String mImage2);

    FindOrDiscover getByMId(Integer mId);

    List<Map<String, Object>> getByMUid(Integer mUId);

    List<Map<String, Object>> getMTypeZeroAll();

    List<Map<String, Object>> getMTypeOneAll();

    FindOrDiscover toUpdatePost(FindOrDiscover msg);

    FindOrDiscover toUpdateDel(FindOrDiscover msg);

    List<Map<String, Object>> getAllMsg(String selectByValue, PageCountUtil pageCountUtil);

    FindOrDiscover AgetByMId(Integer mId);

    void AtoUpdateDel(FindOrDiscover msg);

    void AtoUpdatePost(FindOrDiscover msg);

    Integer getAllMsgCount();

    List<FindOrDiscover> getAllByDate();

    Integer getAllByMsg1();

    Integer getAllByMsg0();

    Integer getAllByDel1();
}
