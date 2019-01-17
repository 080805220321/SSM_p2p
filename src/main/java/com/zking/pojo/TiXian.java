package com.zking.pojo;

import java.math.BigDecimal;
import java.util.Date;

public class TiXian {
    private Integer txId;

    private Integer userId;

    private BigDecimal txMoney;

    private Integer userbankId;

    private Date txDate;

    private Integer txState;

    public Integer getTxId() {
        return txId;
    }

    public void setTxId(Integer txId) {
        this.txId = txId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public BigDecimal getTxMoney() {
        return txMoney;
    }

    public void setTxMoney(BigDecimal txMoney) {
        this.txMoney = txMoney;
    }

    public Integer getUserbankId() {
        return userbankId;
    }

    public void setUserbankId(Integer userbankId) {
        this.userbankId = userbankId;
    }

    public Date getTxDate() {
        return txDate;
    }

    public void setTxDate(Date txDate) {
        this.txDate = txDate;
    }

    public Integer getTxState() {
        return txState;
    }

    public void setTxState(Integer txState) {
        this.txState = txState;
    }
}