package com.zking.dao;

import com.zking.pojo.UserEarnings;

public interface UserEarningsMapper {
    int insert(UserEarnings record);

    int insertSelective(UserEarnings record);
}