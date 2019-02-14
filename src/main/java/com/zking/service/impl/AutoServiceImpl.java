package com.zking.service.impl;

import com.zking.dao.AutoMapper;
import com.zking.pojo.Auto;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("autoService")
public class AutoServiceImpl implements AutoMapper {

    @Resource
    private AutoMapper autoMapper;

    @Override
    public int deleteByPrimaryKey(Integer autoId) {
        return autoMapper.deleteByPrimaryKey(autoId);
    }

    @Override
    public int insert(Auto record) {
        return autoMapper.insert(record);
    }

    @Override
    public int insertSelective(Auto record) {
        return autoMapper.insertSelective(record);
    }

    @Override
    public Auto selectByPrimaryKey(Integer autoId) {
        return autoMapper.selectByPrimaryKey(autoId);
    }

    @Override
    public int updateByPrimaryKeySelective(Auto record) {
        return autoMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(Auto record) {
        return autoMapper.updateByPrimaryKey(record);
    }

    @Override
    public List<Auto> adminGetAllAuto() {
        return autoMapper.adminGetAllAuto();
    }
}
