package com.website.web_vue.service.impl;

import com.website.web_vue.mapper.AreaDictionaryMapper;
import com.website.web_vue.pojo.AreaDictionary;
import com.website.web_vue.service.AreaDictionaryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AreaDictionaryServiceImpl implements AreaDictionaryService {
    @Autowired
    AreaDictionaryMapper areaDictionaryMapper;

    @Override
    public List<AreaDictionary> getAreaList() {
        return areaDictionaryMapper.getAreaList();
    }
}
