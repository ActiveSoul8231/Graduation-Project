package com.website.web_vue.service;

import com.website.web_vue.pojo.FindOrDiscover;

import java.util.List;

public interface FindOrDiscoverService {
    List<FindOrDiscover> getMTypeZero();

    List<FindOrDiscover> getMTypeOne();

    List<FindOrDiscover> getMTypeZeroAll();

    List<FindOrDiscover> getMTypeOneAll();

    FindOrDiscover getByMId(Integer mId);

    void insertFind(FindOrDiscover findOrDiscover);

    void insertDiscover(FindOrDiscover findOrDiscover);

    List<FindOrDiscover> getByMUid(int mUId);

    void toUpdatePost(FindOrDiscover msg);

    void toUpdateDel(FindOrDiscover msg);
}
