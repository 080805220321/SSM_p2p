package com.zking.dao;

import com.zking.pojo.UserBorrowMoney;

public interface UserBorrowMoneyMapper {
    int deleteByPrimaryKey(String borrowmoneyId);

    int insert(UserBorrowMoney record);

    int insertSelective(UserBorrowMoney record);

    UserBorrowMoney selectByPrimaryKey(String borrowmoneyId);

    int updateByPrimaryKeySelective(UserBorrowMoney record);

    int updateByPrimaryKey(UserBorrowMoney record);
}