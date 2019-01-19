package com.zking.dao;

import com.zking.pojo.UserBank;

public interface UserBankMapper {
    int insert(UserBank record);

    int insertSelective(UserBank record);
}