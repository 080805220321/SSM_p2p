package com.zking.pojo;

public class UserInvest {
    private Integer userId;

    private Long investMoney;

    private Long investPrincipal;

    private Long investInterest;

    private Long investMoneymod;

    private Long investPrincipalmod;

    private Long investInterestmod;

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Long getInvestMoney() {
        return investMoney;
    }

    public void setInvestMoney(Long investMoney) {
        this.investMoney = investMoney;
    }

    public Long getInvestPrincipal() {
        return investPrincipal;
    }

    public void setInvestPrincipal(Long investPrincipal) {
        this.investPrincipal = investPrincipal;
    }

    public Long getInvestInterest() {
        return investInterest;
    }

    public void setInvestInterest(Long investInterest) {
        this.investInterest = investInterest;
    }

    public Long getInvestMoneymod() {
        return investMoneymod;
    }

    public void setInvestMoneymod(Long investMoneymod) {
        this.investMoneymod = investMoneymod;
    }

    public Long getInvestPrincipalmod() {
        return investPrincipalmod;
    }

    public void setInvestPrincipalmod(Long investPrincipalmod) {
        this.investPrincipalmod = investPrincipalmod;
    }

    public Long getInvestInterestmod() {
        return investInterestmod;
    }

    public void setInvestInterestmod(Long investInterestmod) {
        this.investInterestmod = investInterestmod;
    }

    @Override
    public String toString() {
        return "UserInvest{" +
                "userId=" + userId +
                ", investMoney=" + investMoney +
                ", investPrincipal=" + investPrincipal +
                ", investInterest=" + investInterest +
                ", investMoneymod=" + investMoneymod +
                ", investPrincipalmod=" + investPrincipalmod +
                ", investInterestmod=" + investInterestmod +
                '}';
    }
}