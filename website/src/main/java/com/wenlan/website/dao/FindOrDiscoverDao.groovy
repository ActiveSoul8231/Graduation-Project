package com.wenlan.website.dao

import com.wenlan.website.bean.FindOrDiscover
import org.apache.ibatis.annotations.Mapper
import org.apache.ibatis.annotations.Param

/**
 * @Author wenlan* @Date 2020-2-16 20:39
 * @Version 1.0* Content:
 */

@Mapper
public interface FindOrDiscoverDao {

    def List<Map<String, Object>> getMTypeZero()

    List<Map<String, Object>> getMTypeOne()

    def List<Map<String, Object>> getMTypeZeroAll()

    def List<Map<String, Object>> getMTypeOneAll()

    void insertFind(@Param("findOrDiscover")FindOrDiscover findOrDiscover, @Param("mUId")int mUId,@Param("mLaunchDate")String mLaunchDate)

    def void insertDiscover(@Param("findOrDiscover")FindOrDiscover findOrDiscover, @Param("mUId")int mUId,@Param("mLaunchDate")String mLaunchDate)

    def FindOrDiscover getByMId(@Param("mId")int mId)

    def List<Map<String, Object>> getByMUid(@Param("mUId")int mUId)

    def void toUpdatePost(@Param("msg")FindOrDiscover msg,@Param("mPostStatus")Integer mPostStatus)

    def void toUpdateDel(@Param("msg")FindOrDiscover msg,@Param("mDelStatus") int mDelStatus)

    def List<Map<String, Object>> getAllMsg(@Param("selectByValue")String selectByValue, @Param("pageCount") Integer pageCount,@Param("pageSize") Integer pageSize)

    def FindOrDiscover AgetByMId(@Param("mId")int mId)

    def void AtoUpdateDel(@Param("msg")FindOrDiscover msg,@Param("mDelStatus")int mDelStatus)

    def void AtoUpdatePost(@Param("msg")FindOrDiscover msg,@Param("mPostStatus")Integer mPostStatus)

    int getAllMsgCount()

    List<FindOrDiscover> getAllByDate()

    int getAllByMsg1()

    def int getAllByMsg0()

    def int getAllByDel1()
}