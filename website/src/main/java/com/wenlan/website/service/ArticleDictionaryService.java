package com.wenlan.website.service;

import com.wenlan.website.bean.ArticleDictionary;

import java.util.List;
import java.util.Map;

/**
 * @Author wenlan
 * @Date 2020-2-18 14:55
 * @Version 1.0
 * Content:
 */
public interface ArticleDictionaryService {
    List<Map<String, Object>> getArticle();

    void adminTodelArticle(Integer resId);

    void addArticle(ArticleDictionary articleDictionary);

    ArticleDictionary getArticleById(Integer resId);

    void updateArticle(ArticleDictionary articleDictionary);
}
