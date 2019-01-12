package com.zking.pojo;
/**
 * @author WSJ
 * 员工表
 */
public class Staff {
    private Integer staffId;

    private Integer deptId;

    private Integer roleId;

    private String staffName;

    private String staffPwd;

    private Integer staffState;

    public Integer getStaffId() {
        return staffId;
    }

    public void setStaffId(Integer staffId) {
        this.staffId = staffId;
    }

    public Integer getDeptId() {
        return deptId;
    }

    public void setDeptId(Integer deptId) {
        this.deptId = deptId;
    }

    public Integer getRoleId() {
        return roleId;
    }

    public void setRoleId(Integer roleId) {
        this.roleId = roleId;
    }

    public String getStaffName() {
        return staffName;
    }

    public void setStaffName(String staffName) {
        this.staffName = staffName == null ? null : staffName.trim();
    }

    public String getStaffPwd() {
        return staffPwd;
    }

    public void setStaffPwd(String staffPwd) {
        this.staffPwd = staffPwd == null ? null : staffPwd.trim();
    }

    public Integer getStaffState() {
        return staffState;
    }

    public void setStaffState(Integer staffState) {
        this.staffState = staffState;
    }
}