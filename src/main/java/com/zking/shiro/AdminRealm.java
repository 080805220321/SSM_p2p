package com.zking.shiro;

import com.zking.dao.StaffMapper;
import com.zking.pojo.Staff;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.subject.Subject;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

public class AdminRealm extends AuthorizingRealm {

    @Resource
    private StaffMapper staffMapper;

    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {

        SimpleAuthorizationInfo info = new SimpleAuthorizationInfo();
        //授权主体(当前登录用户)
        Subject subject = SecurityUtils.getSubject();
        Staff staff = (Staff)subject.getPrincipal();

        List<Map<String,Object>> map = staffMapper.getStaffAllAuto(staff.getStaffId());
        if(map.size()!=0){
            for (Map<String, Object> key : map) {
                //获得权限授权码
                info.addStringPermission(key.get("auto_code").toString());
            }
        }
        return info;
    }


    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authenticationToken) throws AuthenticationException {

        //用户认证
        UsernamePasswordToken token = (UsernamePasswordToken)authenticationToken;
        //根据员工名查询该员工
        Staff dbStaff = staffMapper.selectByStaffName(token.getUsername());
        System.out.println("认证的员工:"+dbStaff);
        //判断是否存在或者是否被禁用
        if(dbStaff==null || dbStaff.getStaffState()==0){
           return null;  //员工不存在
        }
        //用户存在：返回用户数据和密码，匹配密码是否正确
        return new SimpleAuthenticationInfo(dbStaff,dbStaff.getStaffPwd(),"");
    }

}
