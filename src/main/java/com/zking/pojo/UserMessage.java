package com.zking.pojo;

import java.util.Date;

public class UserMessage {
    private Integer userId;

    private String usermessageName;

    private String usermessageHead;

    private Date usermessageDate;

    private String usermessageTruename;

    private String usermessageCard;

    private Integer usermessageState;

    private String usermessageNature;

    private String usermessageTrade;

    private String usermessageIncome;

    private String usermessageLiabilities;

    private String usermessageHome;

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getUsermessageName() {
        return usermessageName;
    }

    public void setUsermessageName(String usermessageName) {
        this.usermessageName = usermessageName == null ? null : usermessageName.trim();
    }

    public String getUsermessageHead() {
        return usermessageHead;
    }

    public void setUsermessageHead(String usermessageHead) {
        this.usermessageHead = usermessageHead == null ? null : usermessageHead.trim();
    }

    public Date getUsermessageDate() {
        return usermessageDate;
    }

    public void setUsermessageDate(Date usermessageDate) {
        this.usermessageDate = usermessageDate;
    }

    public String getUsermessageTruename() {
        return usermessageTruename;
    }

    public void setUsermessageTruename(String usermessageTruename) {
        this.usermessageTruename = usermessageTruename == null ? null : usermessageTruename.trim();
    }

    public String getUsermessageCard() {
        return usermessageCard;
    }

    public void setUsermessageCard(String usermessageCard) {
        this.usermessageCard = usermessageCard == null ? null : usermessageCard.trim();
    }

    public Integer getUsermessageState() {
        return usermessageState;
    }

    public void setUsermessageState(Integer usermessageState) {
        this.usermessageState = usermessageState;
    }

    public String getUsermessageNature() {
        return usermessageNature;
    }

    public void setUsermessageNature(String usermessageNature) {
        this.usermessageNature = usermessageNature == null ? null : usermessageNature.trim();
    }

    public String getUsermessageTrade() {
        return usermessageTrade;
    }

    public void setUsermessageTrade(String usermessageTrade) {
        this.usermessageTrade = usermessageTrade == null ? null : usermessageTrade.trim();
    }

    public String getUsermessageIncome() {
        return usermessageIncome;
    }

    public void setUsermessageIncome(String usermessageIncome) {
        this.usermessageIncome = usermessageIncome == null ? null : usermessageIncome.trim();
    }

    public String getUsermessageLiabilities() {
        return usermessageLiabilities;
    }

    public void setUsermessageLiabilities(String usermessageLiabilities) {
        this.usermessageLiabilities = usermessageLiabilities == null ? null : usermessageLiabilities.trim();
    }

    public String getUsermessageHome() {
        return usermessageHome;
    }

    public void setUsermessageHome(String usermessageHome) {
        this.usermessageHome = usermessageHome == null ? null : usermessageHome.trim();
    }
}