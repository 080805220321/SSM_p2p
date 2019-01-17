package com.zking.dao;

import com.zking.pojo.Chongzhi;

public interface ChongzhiMapper {
    int deleteByPrimaryKey(Integer czId);

    int insert(Chongzhi record);

    int insertSelective(Chongzhi record);

    Chongzhi selectByPrimaryKey(Integer czId);

    int updateByPrimaryKeySelective(Chongzhi record);

    int updateByPrimaryKey(Chongzhi record);
}