package com.zking.dao;

import com.zking.pojo.StaffRoleDept;
import org.apache.ibatis.annotations.Update;

public interface StaffRoleDeptMapper {
    int insert(StaffRoleDept record);

    int insertSelective(StaffRoleDept record);

    @Update("update tb_staff_role_dept set role_id=#{roleId},dept_id=#{deptId} where staff_id=#{staffId}")
    int updateByStaffId(StaffRoleDept record);
}