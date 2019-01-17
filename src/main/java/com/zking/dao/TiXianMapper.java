package com.zking.dao;

import com.zking.pojo.TiXian;

public interface TiXianMapper {
    int deleteByPrimaryKey(Integer txId);

    int insert(TiXian record);

    int insertSelective(TiXian record);

    TiXian selectByPrimaryKey(Integer txId);

    int updateByPrimaryKeySelective(TiXian record);

    int updateByPrimaryKey(TiXian record);
}