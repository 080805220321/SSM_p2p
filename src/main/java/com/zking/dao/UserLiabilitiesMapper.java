package com.zking.dao;

import com.zking.pojo.UserLiabilities;

public interface UserLiabilitiesMapper {
    int insert(UserLiabilities record);

    int insertSelective(UserLiabilities record);
}