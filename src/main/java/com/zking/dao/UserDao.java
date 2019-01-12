package com.zking.dao;

import com.zking.pojo.User;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 *
 *
 */
@Service
public interface UserDao {

    //添加
    public int addUser(User user);


    //删除
    public int delUserById(Integer id);


    //根据条件删除
    public int delUser(User user);


    //修改
    public int updateUser(User user);

    //查询所有用户
    @Select("select user_id userId, user_name userName, user_pwd userPwd, user_state userState from t_user")
    public List<User> selectUserAll();

    //根据ID查询
    public User selectUserById(Integer id);

    //根据条件查询用户信息
    public List<User> selectUsers(User user);

    //根据用户名查询用户信息
    @Select("select user_id userId, user_name userName, user_pwd userPwd, user_state userState from t_user where user_name = #{userName}")
    public User selectUserByUserName(String userName);

    //根据用户id查询用户权限
    @Select("SELECT ro.role_name,ri.right_name,ri.right_url,ri.right_code FROM t_role ro,t_right ri,t_user_role ur,t_role_right rr WHERE ur.user_id=#{id} AND ur.role_id=ro.role_id AND ro.role_id=rr.role_id AND rr.right_id =ri.right_id")
    public List<Map<String,Object>> getUserRight(Integer id);

}
