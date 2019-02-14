package com.zking.service.impl;

import com.zking.dao.TiXianMapper;
import com.zking.pojo.TiXian;
import com.zking.service.TiXianService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

@Service("tiXianService")
public class TiXianServiceImpl implements TiXianService {

    @Resource
    private TiXianMapper tiXianMapper;

    @Override
    public int deleteByPrimaryKey(Integer txId) {
        return tiXianMapper.deleteByPrimaryKey(txId);
    }

    @Override
    public int insert(TiXian record) {
        return tiXianMapper.insert(record);
    }

    @Override
    public int insertSelective(TiXian record) {
        return tiXianMapper.insertSelective(record);
    }

    @Override
    public TiXian selectByPrimaryKey(Integer txId) {
        return tiXianMapper.selectByPrimaryKey(txId);
    }

    @Override
    public int updateByPrimaryKeySelective(TiXian record) {
        return tiXianMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(TiXian record) {
        return tiXianMapper.updateByPrimaryKey(record);
    }

    @Override
    public List<Map<String, Object>> getUserTiXianMoneyAll() {
        return tiXianMapper.getUserTiXianMoneyAll();
    }
}
