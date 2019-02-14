package com.zking.dao;

import com.zking.pojo.Role;
import com.zking.pojo.RoleAuto;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;

public interface RoleAutoMapper {
    int insert(RoleAuto record);

    int insertSelective(RoleAuto record);

    //根据角色ID查询拥有的权限ID
    @Select("select role_id roleId,auto_id autoId from tb_role_auto where role_id=#{roleId}")
    List<RoleAuto> getRoleAutoById(Integer roleId);

    //根据角色ID删除角色权限
    @Delete("delete from tb_role_auto where role_id=#{roleId}")
    int adminDelRoleAutoByRoleId(Integer roleId);

    //根据角色ID修改角色信息
    @Update("update tb_role set role_name=#{roleName},role_describe=#{roleDescribe} where role_id=#{roleId}")
    int adminUpdateRoleById(Role role);

}