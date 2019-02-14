package com.zking.dao;

import com.zking.pojo.UserBorrowMoney;
import org.apache.ibatis.annotations.Select;

import java.util.List;
import java.util.Map;

public interface UserBorrowMoneyMapper {
    int deleteByPrimaryKey(String borrowmoneyId);

    int insert(UserBorrowMoney record);

    int insertSelective(UserBorrowMoney record);

    UserBorrowMoney selectByPrimaryKey(String borrowmoneyId);

    int updateByPrimaryKeySelective(UserBorrowMoney record);

    int updateByPrimaryKey(UserBorrowMoney record);

    //查询所有借款标
    List<Map<String,Object>> getUserBorrowMoneyAll();

    //根据借款标ID查询借款详情
    @Select("SELECT ue.borrowMoney_id borrowmoneyId,ue.user_ids userIds,ue.earnings_money earningsMoney,ue.earnings_earnings earningsEarnings,us.userMessage_name usermessageName FROM tb_userearnings ue,tb_usermessage us WHERE ue.user_ids=us.user_id AND ue.borrowMoney_id=#{borrowMoneyId}")
    List<Map<String,Object>> getUserBorrowMoneyXiangqing(String borrowMoneyId);
}