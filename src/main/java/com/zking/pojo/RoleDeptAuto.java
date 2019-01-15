package com.zking.pojo;
/**
 * @author WSJ
 * 权限角色部门关系表
 */
public class RoleDeptAuto {
    private Integer autoId;

    private Integer roleId;

    private Integer deptId;

    public Integer getAutoId() {
        return autoId;
    }

    public void setAutoId(Integer autoId) {
        this.autoId = autoId;
    }

    public Integer getRoleId() {
        return roleId;
    }

    public void setRoleId(Integer roleId) {
        this.roleId = roleId;
    }

    public Integer getDeptId() {
        return deptId;
    }

    public void setDeptId(Integer deptId) {
        this.deptId = deptId;
    }

    @Override
    public String toString() {
        return "RoleDeptAuto{" +
                "autoId=" + autoId +
                ", roleId=" + roleId +
                ", deptId=" + deptId +
                '}';
    }
}