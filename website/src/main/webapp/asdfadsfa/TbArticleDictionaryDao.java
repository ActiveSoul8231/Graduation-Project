package com.wenlan.website.dao;

import com.wenlan.website.entity.TbArticleDictionary;
import org.apache.ibatis.annotations.Param;
import java.util.List;

/**
 * (TbArticleDictionary)表数据库访问层
 *
 * @author makejava
 * @since 2020-02-15 14:49:43
 */
public interface TbArticleDictionaryDao {

    /**
     * 通过ID查询单条数据
     *
     * @param resId 主键
     * @return 实例对象
     */
    TbArticleDictionary queryById(Integer resId);

    /**
     * 查询指定行数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<TbArticleDictionary> queryAllByLimit(@Param("offset") int offset, @Param("limit") int limit);


    /**
     * 通过实体作为筛选条件查询
     *
     * @param tbArticleDictionary 实例对象
     * @return 对象列表
     */
    List<TbArticleDictionary> queryAll(TbArticleDictionary tbArticleDictionary);

    /**
     * 新增数据
     *
     * @param tbArticleDictionary 实例对象
     * @return 影响行数
     */
    int insert(TbArticleDictionary tbArticleDictionary);

    /**
     * 修改数据
     *
     * @param tbArticleDictionary 实例对象
     * @return 影响行数
     */
    int update(TbArticleDictionary tbArticleDictionary);

    /**
     * 通过主键删除数据
     *
     * @param resId 主键
     * @return 影响行数
     */
    int deleteById(Integer resId);

}