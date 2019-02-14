package com.zking.service.impl;

import com.zking.dao.StaffMapper;
import com.zking.pojo.Staff;
import com.zking.service.StaffService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

@Service("staffService")
public class StaffServiceImpl implements StaffService {

    @Resource
    private StaffMapper staffMapper;

    @Override
    public int deleteByPrimaryKey(Integer staffId) {
        return staffMapper.deleteByPrimaryKey(staffId);
    }

    @Override
    public int insert(Staff record) {
        return staffMapper.insert(record);
    }

    @Override
    public int insertSelective(Staff record) {
        return staffMapper.insertSelective(record);
    }

    @Override
    public Staff selectByPrimaryKey(Integer staffId) {
        return staffMapper.selectByPrimaryKey(staffId);
    }

    @Override
    public int updateByPrimaryKeySelective(Staff record) {
        return staffMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(Staff record) {
        return staffMapper.updateByPrimaryKey(record);
    }

    @Override
    public Staff selectByStaffName(String staffName) {
        return staffMapper.selectByStaffName(staffName);
    }

    @Override
    public List<Map<String, Object>> getStaffAllAuto(Integer staffId) {
        return staffMapper.getStaffAllAuto(staffId);
    }

    @Override
    public List<Map<String, Object>> getStaffAll_admin() {
        return staffMapper.getStaffAll_admin();
    }

    @Override
    public int insertStaff_ID(Staff staff) {
        return staffMapper.insertStaff_ID(staff);
    }

}
