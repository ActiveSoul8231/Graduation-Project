package com.website.web_vue.mapper;

import com.website.web_vue.pojo.User;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.web.servlet.ModelAndView;

@Mapper
public interface UserMapper {
    User getByUId(Integer uId);

    User findUserByName(String uName);

    User getNet(String net);

    void registerUser(User user);
}
