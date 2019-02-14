package com.zking.dao;

import com.zking.pojo.UserMessage;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface UserMessageMapper {
    int deleteByPrimaryKey(Integer userId);

    int insert(UserMessage record);

    int insertSelective(UserMessage record);

    UserMessage selectByPrimaryKey(Integer userId);

    int updateByPrimaryKeySelective(UserMessage record);

    int updateByPrimaryKeyWithBLOBs(UserMessage record);

    int updateByPrimaryKey(UserMessage record);

    @Select("select user_id userId,userMessage_name usermessageName,userMessage_date usermessageDate,userMessage_truename usermessageTruename,userMessage_state usermessageState  from tb_usermessage")
    List<UserMessage> getUserAll_admin();
}