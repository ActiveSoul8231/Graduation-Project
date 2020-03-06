package com.wenlan.website.service;

import com.wenlan.website.bean.AreaDictionary;

import java.util.List;
import java.util.Map;

/**
 * @Author wenlan
 * @Date 2020-2-18 14:54
 * @Version 1.0
 * Content:
 */
public interface AreaDictionaryService {
    List<Map<String, Object>> getArea();

    void adminTodelArea(Integer areaId);

    void addArea(AreaDictionary areaDictionary);

    AreaDictionary getAreaById(Integer areaId);

    void updateArea(AreaDictionary areaDictionary);
}
