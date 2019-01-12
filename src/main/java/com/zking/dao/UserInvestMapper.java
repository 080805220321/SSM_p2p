package com.zking.dao;

import com.zking.pojo.UserInvest;

public interface UserInvestMapper {
    int insert(UserInvest record);

    int insertSelective(UserInvest record);
}