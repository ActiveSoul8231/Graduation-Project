package com.website.web_vue.mapper;

import com.website.web_vue.pojo.AreaDictionary;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface AreaDictionaryMapper {
    List<AreaDictionary> getAreaList();
}
