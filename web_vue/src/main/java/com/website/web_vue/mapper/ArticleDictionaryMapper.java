package com.website.web_vue.mapper;

import com.website.web_vue.pojo.ArticleDictionary;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface ArticleDictionaryMapper {
    List<ArticleDictionary> getArticleList();
}
