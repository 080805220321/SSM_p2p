package com.zking.pojo;

import java.util.Date;

public class UserBorrowMoney {
    private String borrowmoneyId;

    private String borrowmoneySynopsis;

    private Long borrowmoneyBorrowmoney;

    private Integer borrowmoneyBorrowdate;

    private String borrowmoneyInterestrate;

    private String borrowmoneyUse;

    private String borrowmoneySource;

    private String borrowmoneyWay;

    private String borrowmoneyRisk;

    private Integer userId;

    private Long borrowmoneyInterest;

    private Date borrowmoneyRaisedate;

    private Date borrowmoneyOrderdate;

    private Integer borrowmoneyState;

    private Long borrowmoneyRaisemoney;

    private String borrowmoneyPlan;

    private Long borrowmoneyMoney;

    public String getBorrowmoneyId() {
        return borrowmoneyId;
    }

    public void setBorrowmoneyId(String borrowmoneyId) {
        this.borrowmoneyId = borrowmoneyId == null ? null : borrowmoneyId.trim();
    }

    public String getBorrowmoneySynopsis() {
        return borrowmoneySynopsis;
    }

    public void setBorrowmoneySynopsis(String borrowmoneySynopsis) {
        this.borrowmoneySynopsis = borrowmoneySynopsis == null ? null : borrowmoneySynopsis.trim();
    }

    public Long getBorrowmoneyBorrowmoney() {
        return borrowmoneyBorrowmoney;
    }

    public void setBorrowmoneyBorrowmoney(Long borrowmoneyBorrowmoney) {
        this.borrowmoneyBorrowmoney = borrowmoneyBorrowmoney;
    }

    public Integer getBorrowmoneyBorrowdate() {
        return borrowmoneyBorrowdate;
    }

    public void setBorrowmoneyBorrowdate(Integer borrowmoneyBorrowdate) {
        this.borrowmoneyBorrowdate = borrowmoneyBorrowdate;
    }

    public String getBorrowmoneyInterestrate() {
        return borrowmoneyInterestrate;
    }

    public void setBorrowmoneyInterestrate(String borrowmoneyInterestrate) {
        this.borrowmoneyInterestrate = borrowmoneyInterestrate == null ? null : borrowmoneyInterestrate.trim();
    }

    public String getBorrowmoneyUse() {
        return borrowmoneyUse;
    }

    public void setBorrowmoneyUse(String borrowmoneyUse) {
        this.borrowmoneyUse = borrowmoneyUse == null ? null : borrowmoneyUse.trim();
    }

    public String getBorrowmoneySource() {
        return borrowmoneySource;
    }

    public void setBorrowmoneySource(String borrowmoneySource) {
        this.borrowmoneySource = borrowmoneySource == null ? null : borrowmoneySource.trim();
    }

    public String getBorrowmoneyWay() {
        return borrowmoneyWay;
    }

    public void setBorrowmoneyWay(String borrowmoneyWay) {
        this.borrowmoneyWay = borrowmoneyWay == null ? null : borrowmoneyWay.trim();
    }

    public String getBorrowmoneyRisk() {
        return borrowmoneyRisk;
    }

    public void setBorrowmoneyRisk(String borrowmoneyRisk) {
        this.borrowmoneyRisk = borrowmoneyRisk == null ? null : borrowmoneyRisk.trim();
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Long getBorrowmoneyInterest() {
        return borrowmoneyInterest;
    }

    public void setBorrowmoneyInterest(Long borrowmoneyInterest) {
        this.borrowmoneyInterest = borrowmoneyInterest;
    }

    public Date getBorrowmoneyRaisedate() {
        return borrowmoneyRaisedate;
    }

    public void setBorrowmoneyRaisedate(Date borrowmoneyRaisedate) {
        this.borrowmoneyRaisedate = borrowmoneyRaisedate;
    }

    public Date getBorrowmoneyOrderdate() {
        return borrowmoneyOrderdate;
    }

    public void setBorrowmoneyOrderdate(Date borrowmoneyOrderdate) {
        this.borrowmoneyOrderdate = borrowmoneyOrderdate;
    }

    public Integer getBorrowmoneyState() {
        return borrowmoneyState;
    }

    public void setBorrowmoneyState(Integer borrowmoneyState) {
        this.borrowmoneyState = borrowmoneyState;
    }

    public Long getBorrowmoneyRaisemoney() {
        return borrowmoneyRaisemoney;
    }

    public void setBorrowmoneyRaisemoney(Long borrowmoneyRaisemoney) {
        this.borrowmoneyRaisemoney = borrowmoneyRaisemoney;
    }

    public String getBorrowmoneyPlan() {
        return borrowmoneyPlan;
    }

    public void setBorrowmoneyPlan(String borrowmoneyPlan) {
        this.borrowmoneyPlan = borrowmoneyPlan == null ? null : borrowmoneyPlan.trim();
    }

    public Long getBorrowmoneyMoney() {
        return borrowmoneyMoney;
    }

    public void setBorrowmoneyMoney(Long borrowmoneyMoney) {
        this.borrowmoneyMoney = borrowmoneyMoney;
    }

    @Override
    public String toString() {
        return "UserBorrowMoney{" +
                "borrowmoneyId='" + borrowmoneyId + '\'' +
                ", borrowmoneySynopsis='" + borrowmoneySynopsis + '\'' +
                ", borrowmoneyBorrowmoney=" + borrowmoneyBorrowmoney +
                ", borrowmoneyBorrowdate=" + borrowmoneyBorrowdate +
                ", borrowmoneyInterestrate='" + borrowmoneyInterestrate + '\'' +
                ", borrowmoneyUse='" + borrowmoneyUse + '\'' +
                ", borrowmoneySource='" + borrowmoneySource + '\'' +
                ", borrowmoneyWay='" + borrowmoneyWay + '\'' +
                ", borrowmoneyRisk='" + borrowmoneyRisk + '\'' +
                ", userId=" + userId +
                ", borrowmoneyInterest=" + borrowmoneyInterest +
                ", borrowmoneyRaisedate=" + borrowmoneyRaisedate +
                ", borrowmoneyOrderdate=" + borrowmoneyOrderdate +
                ", borrowmoneyState=" + borrowmoneyState +
                ", borrowmoneyRaisemoney=" + borrowmoneyRaisemoney +
                ", borrowmoneyPlan='" + borrowmoneyPlan + '\'' +
                ", borrowmoneyMoney=" + borrowmoneyMoney +
                '}';
    }
}