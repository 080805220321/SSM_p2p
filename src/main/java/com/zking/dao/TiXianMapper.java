package com.zking.dao;

import com.zking.pojo.TiXian;

import java.util.List;
import java.util.Map;

public interface TiXianMapper {
    int deleteByPrimaryKey(Integer txId);

    int insert(TiXian record);

    int insertSelective(TiXian record);

    TiXian selectByPrimaryKey(Integer txId);

    int updateByPrimaryKeySelective(TiXian record);

    int updateByPrimaryKey(TiXian record);

    //查询所有提现
    List<Map<String,Object>> getUserTiXianMoneyAll();
}