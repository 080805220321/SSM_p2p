package com.zking.dao;

import com.zking.pojo.Staff;
import org.apache.ibatis.annotations.Select;

import java.util.List;
import java.util.Map;

public interface StaffMapper {
    int deleteByPrimaryKey(Integer staffId);

    int insert(Staff record);

    int insertSelective(Staff record);

    Staff selectByPrimaryKey(Integer staffId);

    int updateByPrimaryKeySelective(Staff record);

    int updateByPrimaryKey(Staff record);

    //根据员工名查询该员工
    Staff selectByStaffName(String staffName);

    //根据员工登录名查询该员工
    @Select("SELECT st.staff_name staffName,ro.role_name roleName,de.dept_name deptName,au.auto_id autoId,au.auto_code autoCode,au.auto_name autoName,au.auto_url autoUrl,au.auto_superclass autoSuperclass FROM tb_staff st, tb_role ro, tb_dept de, tb_auto au, tb_role_auto ra, tb_staff_role_dept srd WHERE st.staff_id= #{staffId} AND srd.staff_id=#{staffId} AND srd.role_id=ro.role_id AND srd.dept_id=de.dept_id AND srd.role_id=ra.role_id AND ra.auto_id=au.auto_id")
    List<Map<String,Object>> getStaffAllAuto(Integer staffId);
}