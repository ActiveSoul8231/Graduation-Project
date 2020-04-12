package com.website.web_vue.service.impl;

import com.website.web_vue.mapper.ArticleDictionaryMapper;
import com.website.web_vue.pojo.ArticleDictionary;
import com.website.web_vue.service.ArticleDictionaryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ArticleDictionaryServiceImpl implements ArticleDictionaryService {
    @Autowired
    ArticleDictionaryMapper articleDictionaryMapper;

    @Override
    public List<ArticleDictionary> getArticleList() {
        return articleDictionaryMapper.getArticleList();
    }
}
