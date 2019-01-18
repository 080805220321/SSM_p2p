package com.zking.dao;

import com.zking.pojo.RoleAuto;

public interface RoleAutoMapper {
    int insert(RoleAuto record);

    int insertSelective(RoleAuto record);
}