package com.zking.pojo;

public class Staff {
    private Integer staffId;

    private String staffName;

    private String staffPwd;

    private Integer staffState;

    public Integer getStaffId() {
        return staffId;
    }

    public void setStaffId(Integer staffId) {
        this.staffId = staffId;
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