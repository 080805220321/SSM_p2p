package com.zking.shiro;

import com.zking.pojo.User;
import com.zking.service.UserService;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.subject.Subject;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

public class MyRealm extends AuthorizingRealm {

    @Resource
    private UserService userService;

    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {

        SimpleAuthorizationInfo info = new SimpleAuthorizationInfo();
        //授权主体(当前登录用户)
//        Subject subject = SecurityUtils.getSubject();
//        User dbUser = (User) subject.getPrincipal();

        String userName = (String)principalCollection.getPrimaryPrincipal();
        User dbUser = userService.selectUserByUserName(userName);

        List<Map<String,Object>> map = userService.getUserRight(dbUser.getUserId());
        if(map.size()!=0){
            for (Map<String, Object> objectStringMap : map) {
                //获得权限授权码
                info.addStringPermission(objectStringMap.get("right_code").toString());//数据库授权码字段
            }
            //req.setAttribute("right",map);
        }
        return info;
    }

    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authenticationToken) throws AuthenticationException {
        //用户认证
        UsernamePasswordToken token = (UsernamePasswordToken)authenticationToken;
        //根据用户名查询该用户
        User dbUser = userService.selectUserByUserName(token.getUsername());
        if(dbUser==null){
            return null;  //用户不存在
        }
     //   new SimpleAuthenticationInfo(dbUser.getUserName(),dbUser.getUserPwd(),"");
        return null;

        //用户存在：返回用户数据和密码，匹配密码是否正确
    }
}
