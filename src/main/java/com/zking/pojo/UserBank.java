package com.zking.pojo;

public class UserBank {
    private Integer userbankId;

    private Integer userId;

    private String userbankCard;

    private String userbankName;

    public Integer getUserbankId() {
        return userbankId;
    }

    public void setUserbankId(Integer userbankId) {
        this.userbankId = userbankId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getUserbankCard() {
        return userbankCard;
    }

    public void setUserbankCard(String userbankCard) {
        this.userbankCard = userbankCard == null ? null : userbankCard.trim();
    }

    public String getUserbankName() {
        return userbankName;
    }

    public void setUserbankName(String userbankName) {
        this.userbankName = userbankName == null ? null : userbankName.trim();
    }

    @Override
    public String toString() {
        return "UserBank{" +
                "userbankId=" + userbankId +
                ", userId=" + userId +
                ", userbankCard='" + userbankCard + '\'' +
                ", userbankName='" + userbankName + '\'' +
                '}';
    }
}