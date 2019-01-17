package com.zking.pojo;

public class UserDeal {
    private Integer userId;

    private Long dealEarnings;

    private Long dealInvestmoney;

    private Long dealLiabilities;

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Long getDealEarnings() {
        return dealEarnings;
    }

    public void setDealEarnings(Long dealEarnings) {
        this.dealEarnings = dealEarnings;
    }

    public Long getDealInvestmoney() {
        return dealInvestmoney;
    }

    public void setDealInvestmoney(Long dealInvestmoney) {
        this.dealInvestmoney = dealInvestmoney;
    }

    public Long getDealLiabilities() {
        return dealLiabilities;
    }

    public void setDealLiabilities(Long dealLiabilities) {
        this.dealLiabilities = dealLiabilities;
    }
}