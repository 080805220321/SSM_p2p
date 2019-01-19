package com.zking.pojo;

import java.math.BigDecimal;

public class ChongZhi {
    private Integer czId;

    private Integer userbankId;

    private BigDecimal czMoney;

    private Integer czState;

    public Integer getCzId() {
        return czId;
    }

    public void setCzId(Integer czId) {
        this.czId = czId;
    }

    public Integer getUserbankId() {
        return userbankId;
    }

    public void setUserbankId(Integer userbankId) {
        this.userbankId = userbankId;
    }

    public BigDecimal getCzMoney() {
        return czMoney;
    }

    public void setCzMoney(BigDecimal czMoney) {
        this.czMoney = czMoney;
    }

    public Integer getCzState() {
        return czState;
    }

    public void setCzState(Integer czState) {
        this.czState = czState;
    }
}