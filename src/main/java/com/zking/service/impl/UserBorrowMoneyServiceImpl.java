package com.zking.service.impl;

import com.zking.dao.UserBorrowMoneyMapper;
import com.zking.pojo.UserBorrowMoney;
import com.zking.service.UserBorrowMoneyService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

@Service("userBorrowMoneyService")
public class UserBorrowMoneyServiceImpl implements UserBorrowMoneyService {

    @Resource
    private UserBorrowMoneyMapper userBorrowMoney;

    @Override
    public int deleteByPrimaryKey(String borrowmoneyId) {
        return userBorrowMoney.deleteByPrimaryKey(borrowmoneyId);
    }

    @Override
    public int insert(UserBorrowMoney record) {
        return userBorrowMoney.insert(record);
    }

    @Override
    public int insertSelective(UserBorrowMoney record) {
        return userBorrowMoney.insertSelective(record);
    }

    @Override
    public UserBorrowMoney selectByPrimaryKey(String borrowmoneyId) {
        return userBorrowMoney.selectByPrimaryKey(borrowmoneyId);
    }

    @Override
    public int updateByPrimaryKeySelective(UserBorrowMoney record) {
        return userBorrowMoney.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(UserBorrowMoney record) {
        return userBorrowMoney.updateByPrimaryKey(record);
    }

    @Override
    public List<Map<String,Object>> getUserBorrowMoneyAll() {
        return userBorrowMoney.getUserBorrowMoneyAll();
    }

    @Override
    public List<Map<String, Object>> getUserBorrowMoneyXiangqing(String borrowMoneyId) {
        return userBorrowMoney.getUserBorrowMoneyXiangqing(borrowMoneyId);
    }
}
