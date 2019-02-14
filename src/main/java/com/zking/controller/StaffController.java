package com.zking.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.zking.dao.*;
import com.zking.pojo.*;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Controller
public class StaffController {

    @Resource
    private StaffMapper staffMapper;
    @Resource
    private UserBorrowMoneyMapper userBorrowMoneyMapper;
    @Resource
    private TiXianMapper tiXianMapper;
    @Resource
    private AutoMapper autoMapper;
    @Resource
    private RoleMapper roleMapper;
    @Resource
    private RoleAutoMapper roleAutoMapper;
    @Resource
    private UserMessageMapper userMessageMapper;
    @Resource
    private StaffRoleDeptMapper staffRoleDeptMapper;


    @RequestMapping("/adminLogin")
    public String getStaffAuto(String name, String pwd, Model model, HttpServletRequest req) {

        Subject subject = SecurityUtils.getSubject();//获得subject
        //打包输入的用户名和密码
        AuthenticationToken token = new UsernamePasswordToken(name,pwd);
        try{
            //将打包好的用户名和密码传给AdminRealm认证
            subject.login(token);
            //如果认证通过，获取Principal，主体的用户名
            Staff staff = (Staff)subject.getPrincipal();

            List<Map<String,Object>> map = staffMapper.getStaffAllAuto(staff.getStaffId());
            System.out.println(map);
            //把用户名称存在session
            req.getSession().setAttribute("StaffName",staff.getStaffName());
            //把用户权限信息存在session
            req.getSession().setAttribute("StaffAllAuto",map);

            //如果没有异常，就登录成功访问index.jsp
            return "redirect:/admin/index.jsp";
        }catch(UnknownAccountException e){//出现异常，全抛出
            model.addAttribute("err","用户名不存在或该账号被冻结");
            return "redirect:/admin/login.jsp";//重定向(不会出现.do),默认转发
        }catch(IncorrectCredentialsException e){
            model.addAttribute("err","密码错误");
            return "redirect:/admin/login.jsp";
        }
    }

    //用户退出清除Session
    @RequestMapping("/staffESC")
    public String staffESC(HttpServletRequest req){
        req.getSession().invalidate();
        System.out.println("清除Session");
        return "redirect:/admin/login.jsp";
    }


    //查询所有借款标
    @RequestMapping("/getUserBorrowMoneyAll")
    public String getUserBorrowMoneyAll(HttpServletRequest req){
        List<Map<String,Object>> list =  userBorrowMoneyMapper.getUserBorrowMoneyAll();
        req.getSession().setAttribute("UserBorrowMoneyAll",list);
        return "redirect:/admin/article-list.jsp";
    }
    //根据借款标ID查询标的详情组成
    @RequestMapping("/getUserBorrowMoneyXiangqing")
    public void getUserBorrowMoneyXiangqing(HttpServletRequest req,HttpServletResponse resp,String id)throws Exception{
        List<Map<String,Object>> list =  userBorrowMoneyMapper.getUserBorrowMoneyXiangqing(id);
        req.getSession().setAttribute("UserBorrowMoneyXiangqing",list);
        PrintWriter out = resp.getWriter();
        //集合转JSON
        out.write(1);
        out.flush();
        out.close();
    }


    //根据标状态查询借款标
    @RequestMapping("/getAdminUser")
    public void getAdminUser(String name,String type, HttpServletRequest req, HttpServletResponse resp) throws Exception{
        req.setCharacterEncoding("utf-8");
        resp.setCharacterEncoding("utf-8");
        //获得所有标的Session
        List<Map<String,Object>> list =(List<Map<String,Object>>)req.getSession().getAttribute("UserBorrowMoneyAll");
        List<Map<String,Object>> li= new ArrayList();
        if(name!=null){
            for(Map<String,Object> s : list){
                String i = s.get("userMessageName").toString();
                if(i.equals(name)){
                    li.add(s);
                }
            }
        }else{
            //新的标的集合并放入需要的不同的标
            for(Map<String,Object> s : list){
                String i = s.get("borrowMoneyState").toString();
                if(type.equals(i)){
                    li.add(s);
                }
            }
        }
        PrintWriter out = resp.getWriter();
        //集合转JSON
        String json = JSON.toJSONString(li);
        out.write(json);
        out.flush();
        out.close();
    }


    //标的状态变更
    @RequestMapping("/update_user_drawings")
    public void update_user_drawings(String id, Integer stateId, HttpServletRequest req, HttpServletResponse resp) throws Exception{
        req.setCharacterEncoding("utf-8");
        resp.setCharacterEncoding("utf-8");
        PrintWriter out = resp.getWriter();

            //根据标ID修改标的状态
            UserBorrowMoney userBorrowMoney = new UserBorrowMoney();
            userBorrowMoney.setBorrowmoneyId(id);
            userBorrowMoney.setBorrowmoneyState(stateId);
            userBorrowMoneyMapper.updateByPrimaryKeySelective(userBorrowMoney);

            List<Map<String,Object>> list =  userBorrowMoneyMapper.getUserBorrowMoneyAll();
            req.getSession().setAttribute("UserBorrowMoneyAll",list);
            out.write(id);
            out.flush();
            out.close();
    }


    //财务管理---所有提现数据
    @RequestMapping("/getUserTiXianMoneyAll")
    public String getUserTiXianMoneyAll(HttpServletRequest req){
        List<Map<String,Object>> list =  tiXianMapper.getUserTiXianMoneyAll();
        req.getSession().setAttribute("UserTiXianMoneyAll",list);
        return "redirect:/admin/drawings-list.jsp";
    }
    //财务管理---提现--状态修改
    @RequestMapping("/updateUserTiXianMoney")
    public void updateUserTiXianMoney(HttpServletRequest req,HttpServletResponse resp,Integer id,Integer a)throws Exception{
        System.out.println(id+a);
        TiXian t = new TiXian();
        t.setTxId(id);
        t.setTxState(a);
        tiXianMapper.updateByPrimaryKeySelective(t);

        List<Map<String,Object>> list =  tiXianMapper.getUserTiXianMoneyAll();
        req.getSession().setAttribute("UserTiXianMoneyAll",list);
        PrintWriter out = resp.getWriter();
        out.write(1);
        out.flush();
        out.close();
    }


    //用户管理  用户信息
    //获得所有用户
    @RequestMapping("/getUserAll_admin")
    public String getUserAll_admin(HttpServletRequest req){
        List<UserMessage> li = userMessageMapper.getUserAll_admin();
        req.getSession().setAttribute("UserAll_admin",li);
        return "redirect:/admin/user-index.jsp";
    }


    //员工管理   员工列表
    //获得所有员工
    @RequestMapping("/getStaffAll_admin")
    public String getStaffAll_admin(HttpServletRequest req){
        List<Map<String,Object>> li = staffMapper.getStaffAll_admin();
        req.getSession().setAttribute("StaffAll_admin",li);
        return "/admin/admin-list.jsp";
    }
    //获得所有可选角色名
    @RequestMapping("/getRoleAll_admin_staff")
    public String getRoleAll_admin_staff(HttpServletRequest req,String type){
        List<Role> list =  roleMapper.getRoleAll();
        req.getSession().setAttribute("RoleAll_admin_staff",list);
        if("add".equals(type)){
            return "redirect:/admin/admin-add.jsp";
        }
        return "redirect:/admin/admin-update.jsp";
    }
    //添加新后台员工
    @RequestMapping("/addStaff_admin")
    public void addStaff_admin(String adminName,String password,Integer adminRole,Integer adminDept,HttpServletRequest req,HttpServletResponse resp)throws Exception{
        Staff staff = new Staff();
        staff.setStaffName(adminName);
        staff.setStaffPwd(password);
        staffMapper.insertStaff_ID(staff);

        StaffRoleDept srd = new StaffRoleDept();
        srd.setStaffId(staff.getStaffId());
        srd.setRoleId(adminRole);
        srd.setDeptId(adminDept);
        staffRoleDeptMapper.insert(srd);
        //重新获得所有员工
        List<Map<String,Object>> li = staffMapper.getStaffAll_admin();
        req.getSession().setAttribute("StaffAll_admin",li);

        PrintWriter out = resp.getWriter();
        out.write(1);
        out.flush();
        out.close();
    }
    //员工编辑获得选中员工
    @RequestMapping("/updateStaff_admin_up")
    public void updateStaff_admin_up(String id,HttpServletRequest req,HttpServletResponse resp)throws Exception{
        List<Map<String,Object>> li = (List<Map<String,Object>>)req.getSession().getAttribute("StaffAll_admin");
        List<Map<String,Object>> list= new ArrayList();
        for(Map<String,Object> s : li){
            String i = s.get("staffId").toString();
            if(id.equals(i)){
                list.add(s);
            }
        }
        req.getSession().setAttribute("updateStaff_admin_up_session",list);
        PrintWriter out = resp.getWriter();
        out.write(1);
        out.flush();
        out.close();
    }
    //员工编辑修改员工信息
    @RequestMapping("/updateStaff_admin_update")
    public void updateStaff_admin_update(Integer staffId,String adminName,String password,Integer adminRole,Integer adminDept,HttpServletRequest req,HttpServletResponse resp)throws Exception{
        Staff staff = new Staff();
        staff.setStaffId(staffId);
        staff.setStaffName(adminName);
        staff.setStaffPwd(password);
        staffMapper.updateByPrimaryKeySelective(staff);

        StaffRoleDept srd = new StaffRoleDept();
        srd.setStaffId(staffId);
        srd.setRoleId(adminRole);
        srd.setDeptId(adminDept);
        staffRoleDeptMapper.updateByStaffId(srd);
        //重新获得所有员工
        List<Map<String,Object>> li = staffMapper.getStaffAll_admin();
        req.getSession().setAttribute("StaffAll_admin",li);

        PrintWriter out = resp.getWriter();
        out.write(1);
        out.flush();
        out.close();
    }

    //员工状态修改
    @RequestMapping("/updateStaff_admin")
    public void updateStaff_admin(Integer id, Integer idd, HttpServletRequest req, HttpServletResponse resp) throws Exception {
        req.setCharacterEncoding("utf-8");
        resp.setCharacterEncoding("utf-8");
        PrintWriter out = resp.getWriter();

        //根据标ID修改标的状态
        Staff staff = new Staff();
        staff.setStaffId(id);
        staff.setStaffState(idd);
        staffMapper.updateByPrimaryKeySelective(staff);

        List<Map<String, Object>> list = staffMapper.getStaffAll_admin();
        req.getSession().setAttribute("StaffAll_admin", list);
        out.write(id);
        out.flush();
        out.close();
    }

    //权限管理---所有权限节点
    @RequestMapping("/getAllAuto")
    public String adminGetAllAuto(HttpServletRequest req){
        List<Auto> list =  autoMapper.adminGetAllAuto();
        req.getSession().setAttribute("AdminAutoAll",list);
        return "redirect:/admin/admin-role-add.jsp";
    }


    //权限管理---获得所有角色
    @RequestMapping("/getAllRole")
    public String adminGetRoleAll(HttpServletRequest req){
        List<Role> list =  roleMapper.getRoleAll();
        req.getSession().setAttribute("AdminRoleAll",list);
        return "redirect:/admin/admin-role.jsp";
    }


    //权限管理---添加角色
    @RequestMapping("/AdminAutoAllForm")
    public void getaAutoAllForm(HttpServletRequest req,HttpServletResponse resp,String roleName,String roleBeizhu)throws Exception{
        Role role = new Role();
        role.setRoleName(roleName);
        role.setRoleDescribe(roleBeizhu);
        roleMapper.insertRole_ID(role);
        //System.out.println("返回主键："+role.getRoleId());

        //获得复选框选中的权限
        String[] values = req.getParameterValues("user-Character-0-0");
        if(values!=null&&values.length>0) {
            //遍历权限数组添加进角色权限表
            for(int i= 0 ;i<values.length;i++) {
                //System.out.println(values[i]);
                RoleAuto roleAuto = new RoleAuto();
                roleAuto.setAutoId(Integer.parseInt(values[i]));
                roleAuto.setRoleId(role.getRoleId());
                roleAutoMapper.insert(roleAuto);
            }
        }
        //重新查询所有角色数据，覆盖Session
        this.adminGetRoleAll(req);
        PrintWriter out = resp.getWriter();
        out.write(1);
        out.flush();
        out.close();
    }

    //权限管理---编辑角色_获取选中角色权限
    @RequestMapping("/AdminUpdateRoleById")
    public void updateRoleById(String id, HttpServletRequest req,HttpServletResponse resp)throws Exception{
        List<Role> list =(List<Role>)req.getSession().getAttribute("AdminRoleAll");
        for(Role r : list){
            if(r.getRoleId()==Integer.parseInt(id)){
                req.getSession().setAttribute("Admin_Role",r);
            }
        }
        //根据角色ID查询拥有权限ID
        List<RoleAuto> ra = roleAutoMapper.getRoleAutoById(Integer.parseInt(id));
        req.getSession().setAttribute("RoleAutoById",ra);
        //获得所有权限节点
        List<Auto> li =  autoMapper.adminGetAllAuto();
        req.getSession().setAttribute("AdminAutoAll",li);

        PrintWriter out = resp.getWriter();
        out.write(1);
        out.flush();
        out.close();
    }
    //权限管理---编辑角色_修改角色权限
    @RequestMapping("/AdminUpdateRoleById_All")
    public void updateRoleById_All(Integer role_id,String roleName,String roleBeizhu,HttpServletRequest req,HttpServletResponse resp)throws Exception{
        //System.out.println(role_id+roleName+roleBeizhu);
        Role role = new Role();
        role.setRoleId(role_id);
        role.setRoleName(roleName);
        role.setRoleDescribe(roleBeizhu);
        //修改角色信息
        roleAutoMapper.adminUpdateRoleById(role);
        //删除编辑角色权限
        roleAutoMapper.adminDelRoleAutoByRoleId(role_id);

        //获得复选框选中的权限
        String[] values = req.getParameterValues("user-Character-0-0");
        if(values!=null&&values.length>0) {
            //遍历权限数组添加进角色权限表
            for(int i= 0 ;i<values.length;i++) {
                //System.out.println(values[i]);
                RoleAuto roleAuto = new RoleAuto();
                roleAuto.setAutoId(Integer.parseInt(values[i]));
                roleAuto.setRoleId(role_id);
                roleAutoMapper.insert(roleAuto);
            }
        }
        //重新查询所有角色数据，覆盖Session
        this.adminGetRoleAll(req);
        PrintWriter out = resp.getWriter();
        out.write(1);
        out.flush();
        out.close();
    }

}
