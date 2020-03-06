package com.wenlan.website.dao

import com.wenlan.website.bean.User
import org.apache.ibatis.annotations.Delete
import org.apache.ibatis.annotations.Insert
import org.apache.ibatis.annotations.Mapper
import org.apache.ibatis.annotations.Param
import org.apache.ibatis.annotations.ResultMap
import org.apache.ibatis.annotations.Select
import org.apache.ibatis.annotations.Update

/**
 * @Author wenlan* @Date 2020-2-15 21:11
 * @Version 1.0* Content:
 */
@Mapper
interface UserDao {

//    登录时根据登录页面输入的userName 查询是否有该用户
    def User getUserByUser(@Param("user")User user)
//    根据用户名查询对应用户的几种状态
    def User getUserByName(@Param("uName")String uName)

    def User getUserByEmail(@Param("userMailFlag")String userMailFlag)

    def User getUserTel(@Param("uTelephone")String uTelephone)

//    注册时
    def void registerUser(@Param("user")User user)

    def User getUserById(int uId)

    def List<Map<String, Object>> getAllUser()

    def List<Map<String, Object>> getAllUser2()

    def void updateLevel(@Param("us")User us)

    def void updateRecoveryStatus(@Param("us")User us)

    def void deleteUser(@Param("uId")int uId)

    def void updateName(@Param("ss")User ss)

    def void updateEmail(@Param("ss")User ss)

    def void updatePassword(@Param("userss")User userss)
}