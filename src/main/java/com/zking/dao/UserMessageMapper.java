package com.zking.dao;

import com.zking.pojo.UserMessage;

public interface UserMessageMapper {
    int deleteByPrimaryKey(Integer userId);

    int insert(UserMessage record);

    int insertSelective(UserMessage record);

    UserMessage selectByPrimaryKey(Integer userId);

    int updateByPrimaryKeySelective(UserMessage record);

    int updateByPrimaryKeyWithBLOBs(UserMessage record);

    int updateByPrimaryKey(UserMessage record);
}