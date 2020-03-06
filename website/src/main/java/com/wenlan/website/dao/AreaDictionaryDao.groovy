package com.wenlan.website.dao

import com.wenlan.website.bean.AreaDictionary
import org.apache.ibatis.annotations.Delete
import org.apache.ibatis.annotations.Insert
import org.apache.ibatis.annotations.Mapper
import org.apache.ibatis.annotations.Param
import org.apache.ibatis.annotations.ResultMap
import org.apache.ibatis.annotations.Select
import org.apache.ibatis.annotations.Update

/**
 * @Author wenlan* @Date 2020-2-18 15:07
 * @Version 1.0* Content:
 */
@Mapper
interface AreaDictionaryDao {

    @ResultMap("AreaDictionaryMap")
    @Select("select * from tb_area_dictionary")
    def List<Map<String, Object>> getArea()

    @ResultMap("AreaDictionaryMap")
    @Delete("delete from tb_area_dictionary where area_id=#{areaId}")
    def void adminTodelArea(@Param("areaId")int areaId)

    @ResultMap("AreaDictionaryMap")
    @Insert("insert into tb_area_dictionary(area_name) values(#{areaDictionary.areaName})")
    def void addArea(@Param("areaDictionary")AreaDictionary areaDictionary)

    @ResultMap("AreaDictionaryMap")
    @Select("select area_id,area_name from tb_area_dictionary where area_id=#{areaId}")
    def AreaDictionary getAreaById(@Param("areaId")int areaId)

    @ResultMap("AreaDictionaryMap")
    @Update("""<script>
                update tb_area_dictionary set
                <if test="areaDictionary.areaName != null and areaDictionary.areaName != ''">
                    area_name = #{areaDictionary.areaName}
                </if>
                where area_id = #{areaDictionary.areaId}
            </script>""")
    def void updateArea(@Param("areaDictionary")AreaDictionary areaDictionary)
}