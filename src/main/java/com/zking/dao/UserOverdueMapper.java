package com.zking.dao;

import com.zking.pojo.UserOverdue;

public interface UserOverdueMapper {
    int insert(UserOverdue record);

    int insertSelective(UserOverdue record);
}