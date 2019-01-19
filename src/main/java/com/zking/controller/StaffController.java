package com.zking.controller;

import com.zking.dao.StaffMapper;
import com.zking.pojo.Staff;
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
import java.util.List;
import java.util.Map;

@Controller
public class StaffController {

    @Resource
    private StaffMapper staffMapper;

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
            //把用户权限信息存在session
            req.getSession().setAttribute("StaffAllAuto",map);

            //如果没有异常，就登录成功访问index.jsp
            return "redirect:/admin/index.jsp";
        }catch(UnknownAccountException e){//出现异常，全抛出
            model.addAttribute("err","用户名不存在");
            return "redirect:/admin/login.jsp";//重定向(不会出现.do),默认转发
        }catch(IncorrectCredentialsException e){
            model.addAttribute("err","密码错误");
            return "redirect:/admin/login.jsp";
        }
    }

}
