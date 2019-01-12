package com.zking.dao;

import com.zking.pojo.UserMessage;

public interface UserMessageMapper {
    int insert(UserMessage record);

    int insertSelective(UserMessage record);
}