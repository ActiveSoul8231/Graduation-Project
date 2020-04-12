package com.website.web_vue.service;

import com.website.web_vue.pojo.User;
import org.springframework.web.servlet.ModelAndView;

public interface UserService {
    User getByUId(Integer uId);

    User findUserByName(String uName);

    String getUserFlag(String uName);

    String getUserName(String uName);

    String getUserEmailFlag(String userMailFlag);

    String getUserTel(String uTelephone);

    ModelAndView registerUser(User user);

    void updateName(User shiroUser);
}
