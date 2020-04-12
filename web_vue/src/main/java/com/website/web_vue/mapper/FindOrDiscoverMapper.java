package com.website.web_vue.mapper;

import com.website.web_vue.pojo.FindOrDiscover;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Map;

@Mapper
@Component
public interface FindOrDiscoverMapper {
    List<FindOrDiscover> getMTypeZero();

    List<FindOrDiscover> getMTypeOne();

    List<FindOrDiscover> getMTypeZeroAll();

    List<FindOrDiscover> getMTypeOneAll();

    FindOrDiscover getByMId(Integer mId);

    void insertFind(FindOrDiscover findOrDiscover);

    void insertDiscover(FindOrDiscover findOrDiscover);

    List<FindOrDiscover> getByMUid(int mUId);

    void toUpdatePost(FindOrDiscover msg);

    void toUpdateDel(FindOrDiscover msg);
}
