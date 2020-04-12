package com.website.web_vue.pojo.shiro;


import com.website.web_vue.pojo.User;
import com.website.web_vue.service.UserService;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.beans.factory.annotation.Autowired;

public class UserRealm extends AuthorizingRealm {

    @Autowired
    private UserService userService;
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {
        System.out.println("用户授权");
        return null;
    }

    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authenticationToken) throws AuthenticationException {
        System.out.println("用户认证");
        UsernamePasswordToken usernamePasswordToken = (UsernamePasswordToken) authenticationToken;
        //根据用户名称查看用户信息
        User user = userService.findUserByName(usernamePasswordToken.getUsername());
        //2、判断用户名称是否存在
        if (null == user || !user.getuName().equals(usernamePasswordToken.getUsername())) {
            //用户名称不存在，Shiro底层会抛出UnknowAccountException
            return null;
        }
        //3、判断密码是否正确
        return new SimpleAuthenticationInfo(user, user.getuPassword(), getName());
    }
}
