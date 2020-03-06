package com.wenlan.website.service;

import com.wenlan.website.bean.User;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;
import java.util.Map;

/**
 * @Author wenlan
 * @Date 2020-2-15 21:02
 * @Version 1.0
 * Content:
 */
public interface UserService {

    ModelAndView userLogin(User user);

    //    返回来三句话，，使用字符串
    String getUserFlag(String uName);

    String getUserName(String uName);

    String getUserEmailFlag(String userMailFlag);

    String getUserTel(String uTelephone);

    ModelAndView registerUser(User user);

    User getUserNAME(String uName);

    User getByUId(Integer uId);

    User getUserByUser(User user);

    List<Map<String, Object>> getAllUser();

    List<Map<String, Object>> getAllUser2();

    void updateLevel(User us);

    void updateRecoveryStatus(User us);

    void deleteUser(Integer uId);

    void updateName(User ss);

    void updateEmail(User ss);

    void updatePassword(User userss);
}
