package com.zking.dao;

import com.zking.pojo.User;
import org.apache.ibatis.annotations.Select;

public interface UserMapper {
    int deleteByPrimaryKey(Integer userId);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(Integer userId);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);

    @Select("select user_id as userId,user_phone userPhone,user_pwd userPwd from tb_user where user_phone=#{param1} and user_pwd=#{param2}")
    User getUser(String userPhone,String userPwd);
}