package com.zking.dao;

import com.zking.pojo.UserDeal;

public interface UserDealMapper {
    int insert(UserDeal record);

    int insertSelective(UserDeal record);
}