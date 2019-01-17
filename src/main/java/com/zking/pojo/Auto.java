package com.zking.pojo;

public class Auto {
    private Integer autoId;

    private String autoCode;

    private String autoName;

    private String autoUrl;

    private Integer autoType;

    private Integer autoState;

    private String autoRemark;

    private String autoDo;

    public Integer getAutoId() {
        return autoId;
    }

    public void setAutoId(Integer autoId) {
        this.autoId = autoId;
    }

    public String getAutoCode() {
        return autoCode;
    }

    public void setAutoCode(String autoCode) {
        this.autoCode = autoCode == null ? null : autoCode.trim();
    }

    public String getAutoName() {
        return autoName;
    }

    public void setAutoName(String autoName) {
        this.autoName = autoName == null ? null : autoName.trim();
    }

    public String getAutoUrl() {
        return autoUrl;
    }

    public void setAutoUrl(String autoUrl) {
        this.autoUrl = autoUrl == null ? null : autoUrl.trim();
    }

    public Integer getAutoType() {
        return autoType;
    }

    public void setAutoType(Integer autoType) {
        this.autoType = autoType;
    }

    public Integer getAutoState() {
        return autoState;
    }

    public void setAutoState(Integer autoState) {
        this.autoState = autoState;
    }

    public String getAutoRemark() {
        return autoRemark;
    }

    public void setAutoRemark(String autoRemark) {
        this.autoRemark = autoRemark == null ? null : autoRemark.trim();
    }

    public String getAutoDo() {
        return autoDo;
    }

    public void setAutoDo(String autoDo) {
        this.autoDo = autoDo == null ? null : autoDo.trim();
    }
}