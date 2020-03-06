package com.wenlan.website.service.impl;

import com.wenlan.website.bean.ArticleDictionary;
import com.wenlan.website.dao.ArticleDictionaryDao;
import com.wenlan.website.service.ArticleDictionaryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * @Author wenlan
 * @Date 2020-2-18 14:57
 * @Version 1.0
 * Content:
 */
@Service
public class ArticleDictionaryServiceImpl implements ArticleDictionaryService {
    @Autowired
    private ArticleDictionaryDao articleDictionaryDao;
    @Override
    public List<Map<String, Object>> getArticle() {
        return articleDictionaryDao.getArticle();
    }

    @Override
    public void adminTodelArticle(Integer resId) {
        articleDictionaryDao.adminTodelArticle(resId);
    }

    @Override
    public void addArticle(ArticleDictionary articleDictionary) {
        articleDictionaryDao.addArticle(articleDictionary);
    }

    @Override
    public ArticleDictionary getArticleById(Integer resId) {
        return articleDictionaryDao.getArticleById(resId);
    }

    @Override
    public void updateArticle(ArticleDictionary articleDictionary) {
        articleDictionaryDao.updateArticle(articleDictionary);
    }
}
