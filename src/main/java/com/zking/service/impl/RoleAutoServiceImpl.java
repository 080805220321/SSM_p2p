package com.zking.service.impl;

import com.zking.dao.RoleAutoMapper;
import com.zking.pojo.Role;
import com.zking.pojo.RoleAuto;
import com.zking.service.RoleAutoService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("roleAutoService")
public class RoleAutoServiceImpl implements RoleAutoService {

    @Resource
    private RoleAutoMapper roleAutoMapper;

    @Override
    public int insert(RoleAuto record) {
        return roleAutoMapper.insert(record);
    }

    @Override
    public int insertSelective(RoleAuto record) {
        return roleAutoMapper.insertSelective(record);
    }

    @Override
    public List<RoleAuto> getRoleAutoById(Integer roleId) {
        return roleAutoMapper.getRoleAutoById(roleId);
    }

    @Override
    public int adminDelRoleAutoByRoleId(Integer roleId) {
        return roleAutoMapper.adminDelRoleAutoByRoleId(roleId);
    }

    @Override
    public int adminUpdateRoleById(Role role) {
        return roleAutoMapper.adminUpdateRoleById(role);
    }

}
