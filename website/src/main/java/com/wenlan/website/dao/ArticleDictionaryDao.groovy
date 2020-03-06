package com.wenlan.website.dao

import com.wenlan.website.bean.ArticleDictionary
import org.apache.ibatis.annotations.Delete
import org.apache.ibatis.annotations.Insert
import org.apache.ibatis.annotations.Mapper
import org.apache.ibatis.annotations.Param
import org.apache.ibatis.annotations.ResultMap
import org.apache.ibatis.annotations.Select
import org.apache.ibatis.annotations.Update

/**
 * @Author wenlan* @Date 2020-2-18 15:08
 * @Version 1.0* Content:
 */
@Mapper
interface ArticleDictionaryDao {

    @ResultMap("ArticleDictionaryMap")
    @Select("select * from tb_article_dictionary")
    def List<Map<String, Object>> getArticle()

    @ResultMap("ArticleDictionaryMap")
    @Delete("delete from tb_article_dictionary where res_id=#{resId}")
    def void adminTodelArticle(@Param("resId")int resId)

    @ResultMap("ArticleDictionaryMap")
    @Insert("insert into tb_article_dictionary(res_name) values(#{articleDictionary.resName})")
    def void addArticle(@Param("articleDictionary")ArticleDictionary articleDictionary)

    @ResultMap("ArticleDictionaryMap")
    @Select("select res_id,res_name from tb_article_dictionary where res_id=#{resId}")
    def ArticleDictionary getArticleById(@Param("resId")int resId)

    @ResultMap("ArticleDictionaryMap")
    @Update("""<script>
                update tb_article_dictionary set
                <if test="articleDictionary.resName != null and articleDictionary.resName != ''">
                    res_name = #{articleDictionary.resName}
                </if>
                where res_id = #{articleDictionary.resId}
            </script>""")
    def void updateArticle(@Param("articleDictionary")ArticleDictionary articleDictionary)
}