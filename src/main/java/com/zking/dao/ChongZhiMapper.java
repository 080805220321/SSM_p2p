package com.zking.dao;

import com.zking.pojo.ChongZhi;

public interface ChongZhiMapper {
    int deleteByPrimaryKey(Integer czId);

    int insert(ChongZhi record);

    int insertSelective(ChongZhi record);

    ChongZhi selectByPrimaryKey(Integer czId);

    int updateByPrimaryKeySelective(ChongZhi record);

    int updateByPrimaryKey(ChongZhi record);
}