package com.wenlan.website.dao;

import com.wenlan.website.entity.TbFindOrDiscover;
import org.apache.ibatis.annotations.Param;
import java.util.List;

/**
 * (TbFindOrDiscover)表数据库访问层
 *
 * @author makejava
 * @since 2020-02-15 14:49:45
 */
public interface TbFindOrDiscoverDao {

    /**
     * 通过ID查询单条数据
     *
     * @param mId 主键
     * @return 实例对象
     */
    TbFindOrDiscover queryById(Integer mId);

    /**
     * 查询指定行数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<TbFindOrDiscover> queryAllByLimit(@Param("offset") int offset, @Param("limit") int limit);


    /**
     * 通过实体作为筛选条件查询
     *
     * @param tbFindOrDiscover 实例对象
     * @return 对象列表
     */
    List<TbFindOrDiscover> queryAll(TbFindOrDiscover tbFindOrDiscover);

    /**
     * 新增数据
     *
     * @param tbFindOrDiscover 实例对象
     * @return 影响行数
     */
    int insert(TbFindOrDiscover tbFindOrDiscover);

    /**
     * 修改数据
     *
     * @param tbFindOrDiscover 实例对象
     * @return 影响行数
     */
    int update(TbFindOrDiscover tbFindOrDiscover);

    /**
     * 通过主键删除数据
     *
     * @param mId 主键
     * @return 影响行数
     */
    int deleteById(Integer mId);

}