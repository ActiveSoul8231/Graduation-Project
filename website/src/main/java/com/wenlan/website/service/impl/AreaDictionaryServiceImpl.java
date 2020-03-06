package com.wenlan.website.service.impl;

import com.wenlan.website.bean.AreaDictionary;
import com.wenlan.website.dao.AreaDictionaryDao;
import com.wenlan.website.service.AreaDictionaryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * @Author wenlan
 * @Date 2020-2-18 14:55
 * @Version 1.0
 * Content:
 */
@Service
public class AreaDictionaryServiceImpl implements AreaDictionaryService {
    @Autowired
    private AreaDictionaryDao areaDictionaryDao;
    @Override
    public List<Map<String, Object>> getArea() {
        return areaDictionaryDao.getArea();
    }

    @Override
    public void adminTodelArea(Integer areaId) {
        areaDictionaryDao.adminTodelArea(areaId);
    }

    @Override
    public void addArea(AreaDictionary areaDictionary) {
        areaDictionaryDao.addArea(areaDictionary);
    }

    @Override
    public AreaDictionary getAreaById(Integer areaId) {
        return areaDictionaryDao.getAreaById(areaId);

    }

    @Override
    public void updateArea(AreaDictionary areaDictionary) {
        areaDictionaryDao.updateArea(areaDictionary);
    }
}
