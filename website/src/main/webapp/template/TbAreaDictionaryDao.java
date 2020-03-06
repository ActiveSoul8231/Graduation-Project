package com.wenlan.website.dao;

import com.wenlan.website.entity.TbAreaDictionary;
import org.apache.ibatis.annotations.Param;
import java.util.List;

/**
 * (TbAreaDictionary)表数据库访问层
 *
 * @author makejava
 * @since 2020-02-15 14:49:36
 */
public interface TbAreaDictionaryDao {

    /**
     * 通过ID查询单条数据
     *
     * @param areaId 主键
     * @return 实例对象
     */
    TbAreaDictionary queryById(Integer areaId);

    /**
     * 查询指定行数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<TbAreaDictionary> queryAllByLimit(@Param("offset") int offset, @Param("limit") int limit);


    /**
     * 通过实体作为筛选条件查询
     *
     * @param tbAreaDictionary 实例对象
     * @return 对象列表
     */
    List<TbAreaDictionary> queryAll(TbAreaDictionary tbAreaDictionary);

    /**
     * 新增数据
     *
     * @param tbAreaDictionary 实例对象
     * @return 影响行数
     */
    int insert(TbAreaDictionary tbAreaDictionary);

    /**
     * 修改数据
     *
     * @param tbAreaDictionary 实例对象
     * @return 影响行数
     */
    int update(TbAreaDictionary tbAreaDictionary);

    /**
     * 通过主键删除数据
     *
     * @param areaId 主键
     * @return 影响行数
     */
    int deleteById(Integer areaId);

}