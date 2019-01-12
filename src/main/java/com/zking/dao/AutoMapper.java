package com.zking.dao;

import com.zking.pojo.Auto;

public interface AutoMapper {
    int deleteByPrimaryKey(Integer autoId);

    int insert(Auto record);

    int insertSelective(Auto record);

    Auto selectByPrimaryKey(Integer autoId);

    int updateByPrimaryKeySelective(Auto record);

    int updateByPrimaryKey(Auto record);
}