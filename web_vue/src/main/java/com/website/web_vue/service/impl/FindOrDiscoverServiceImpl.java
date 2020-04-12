package com.website.web_vue.service.impl;

import com.website.web_vue.mapper.FindOrDiscoverMapper;
import com.website.web_vue.pojo.FindOrDiscover;
import com.website.web_vue.service.FindOrDiscoverService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class FindOrDiscoverServiceImpl implements FindOrDiscoverService {
    @Autowired FindOrDiscoverMapper findOrDiscoverMapper;

    @Override
    public List<FindOrDiscover> getMTypeZero() {
        return findOrDiscoverMapper.getMTypeZero();
    }

    @Override
    public List<FindOrDiscover> getMTypeOne() {
        return findOrDiscoverMapper.getMTypeOne();
    }

    @Override
    public List<FindOrDiscover> getMTypeZeroAll() {
        return findOrDiscoverMapper.getMTypeZeroAll();
    }

    @Override
    public List<FindOrDiscover> getMTypeOneAll() {
        return findOrDiscoverMapper.getMTypeOneAll();
    }

    @Override
    public FindOrDiscover getByMId(Integer mId) {
        return findOrDiscoverMapper.getByMId(mId);
    }

    @Override
    public void insertFind(FindOrDiscover findOrDiscover) {
        findOrDiscoverMapper.insertFind(findOrDiscover);
    }

    @Override
    public void insertDiscover(FindOrDiscover findOrDiscover) {
        findOrDiscoverMapper.insertDiscover(findOrDiscover);
    }

    @Override
    public List<FindOrDiscover> getByMUid(int mUId) {
        return findOrDiscoverMapper.getByMUid(mUId);
    }

    @Override
    public void toUpdatePost(FindOrDiscover msg) {
        findOrDiscoverMapper.toUpdatePost(msg);
    }

    @Override
    public void toUpdateDel(FindOrDiscover msg) {
        findOrDiscoverMapper.toUpdateDel(msg);
    }
}
