package com.zking.pojo;

public class UserOverdue {
    private String borrowmoneyId;

    private Long overduemoney;

    private Integer overduedate;

    private Long overdueinterest;

    public String getBorrowmoneyId() {
        return borrowmoneyId;
    }

    public void setBorrowmoneyId(String borrowmoneyId) {
        this.borrowmoneyId = borrowmoneyId == null ? null : borrowmoneyId.trim();
    }

    public Long getOverduemoney() {
        return overduemoney;
    }

    public void setOverduemoney(Long overduemoney) {
        this.overduemoney = overduemoney;
    }

    public Integer getOverduedate() {
        return overduedate;
    }

    public void setOverduedate(Integer overduedate) {
        this.overduedate = overduedate;
    }

    public Long getOverdueinterest() {
        return overdueinterest;
    }

    public void setOverdueinterest(Long overdueinterest) {
        this.overdueinterest = overdueinterest;
    }
}