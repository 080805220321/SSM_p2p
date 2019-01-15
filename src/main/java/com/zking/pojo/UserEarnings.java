package com.zking.pojo;

public class UserEarnings {
    private String borrowmoneyId;

    private Integer userId;

    private Integer userIds;

    private Long earningsMoney;

    private Long earningsEarnings;

    public String getBorrowmoneyId() {
        return borrowmoneyId;
    }

    public void setBorrowmoneyId(String borrowmoneyId) {
        this.borrowmoneyId = borrowmoneyId == null ? null : borrowmoneyId.trim();
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getUserIds() {
        return userIds;
    }

    public void setUserIds(Integer userIds) {
        this.userIds = userIds;
    }

    public Long getEarningsMoney() {
        return earningsMoney;
    }

    public void setEarningsMoney(Long earningsMoney) {
        this.earningsMoney = earningsMoney;
    }

    public Long getEarningsEarnings() {
        return earningsEarnings;
    }

    public void setEarningsEarnings(Long earningsEarnings) {
        this.earningsEarnings = earningsEarnings;
    }

    @Override
    public String toString() {
        return "UserEarnings{" +
                "borrowmoneyId='" + borrowmoneyId + '\'' +
                ", userId=" + userId +
                ", userIds=" + userIds +
                ", earningsMoney=" + earningsMoney +
                ", earningsEarnings=" + earningsEarnings +
                '}';
    }
}