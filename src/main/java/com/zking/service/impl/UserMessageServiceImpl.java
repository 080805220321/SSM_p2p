package com.zking.service.impl;

import com.zking.dao.UserMessageMapper;
import com.zking.pojo.UserMessage;
import com.zking.service.UserMessageService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("userMessageService")
public class UserMessageServiceImpl implements UserMessageService {

    @Resource
    private UserMessageMapper userMessageMapper;

    @Override
    public int deleteByPrimaryKey(Integer userId) {
        return userMessageMapper.deleteByPrimaryKey(userId);
    }

    @Override
    public int insert(UserMessage record) {
        return userMessageMapper.insert(record);
    }

    @Override
    public int insertSelective(UserMessage record) {
        return userMessageMapper.insertSelective(record);
    }

    @Override
    public UserMessage selectByPrimaryKey(Integer userId) {
        return userMessageMapper.selectByPrimaryKey(userId);
    }

    @Override
    public int updateByPrimaryKeySelective(UserMessage record) {
        return userMessageMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKeyWithBLOBs(UserMessage record) {
        return userMessageMapper.updateByPrimaryKeyWithBLOBs(record);
    }

    @Override
    public int updateByPrimaryKey(UserMessage record) {
        return userMessageMapper.updateByPrimaryKey(record);
    }

    @Override
    public List<UserMessage> getUserAll_admin() {
        return userMessageMapper.getUserAll_admin();
    }
}
