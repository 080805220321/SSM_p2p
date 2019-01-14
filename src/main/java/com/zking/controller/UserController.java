package com.zking.controller;

import com.alibaba.fastjson.JSON;
import com.zking.pojo.User;
import com.zking.redis.RedisCache;
import com.zking.service.UserService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

/**
 * @author WSJ
 */

@Controller
public class UserController {

    @Resource
    private UserService userService;
    @Resource
    private RedisCache redisCache;

    @RequestMapping(value = "/hello")
    public String hello() throws Exception{
        System.out.print("=====================");
        System.out.print("进来了");
        return "/admin/index.jsp";
    }

    @RequestMapping(value = "/ajax")
    public void ajax(HttpServletRequest req,HttpServletResponse resp) throws  Exception{
        req.setCharacterEncoding("utf-8");
        resp.setCharacterEncoding("utf-8");
        PrintWriter out = resp.getWriter();

        String name = req.getParameter("name");
        out.write(name);
        out.flush();
        out.close();
    }

    //添加用户
    @RequestMapping("/addUser")
    public String addUser(User user,HttpServletRequest req,HttpServletResponse resp) throws Exception{
        req.setCharacterEncoding("utf-8");
        resp.setCharacterEncoding("utf-8");
        int n = userService.addUser(user);
        return "/admin/index.jsp";
    }

    //用户登录验证
    @RequestMapping("/login.do")
    public String login(String name, String pwd, Model model, HttpServletRequest req){

        Subject subject = SecurityUtils.getSubject();//获得subject
        //打包输入的用户名和密码
        AuthenticationToken token = new UsernamePasswordToken(name,pwd);

        try{
            //将打包好的用户名和密码传给MyRealm认证
            subject.login(token);
            //如果认证通过，获取Principal，主体的用户名
            User user = (User) subject.getPrincipal();

            //把用户信息存在session
            req.getSession().setAttribute("user",user);

            //如果没有异常，就登录成功访问index.jsp
            return "redirect:/admin/index.jsp";//重定向
        }catch(UnknownAccountException  e){//出现异常，全抛出
            model.addAttribute("msg","用户名不存在");
            return "/admin/login.jsp";
        }catch(IncorrectCredentialsException e){
            model.addAttribute("msg","密码错误");
            return "/admin/login.jsp";
        }
    }


    @RequestMapping("/getUserAll.do")
    public String getAll(Map map, HttpServletRequest req){
        List<User> user=null;

        //1.先从redis缓存中获取数据
            //先配置redis中的key,key是唯一的,所调用dao方法所在接口的包名+类名+方法名
            String key="com.zking.dao.UserDao.getUserAll";
            //去redis缓存中按key获值
            String data=redisCache.getDataFromRedis(key);
        //判断从redis取出的值是否为null
        if(data==null){
            System.out.println("数据库取值");
        //2.如果缓存中没有就查询数据库
            user=userService.selectUserAll();
            //注意：redis中不能存放对象集合，必须要转换json，引入fastjson
            String str= JSON.toJSONString(user);

            //放入作用域
            req.getSession().setAttribute("UserAll", str);
            //把查询到结果放入到redis中
            redisCache.setDataToRedis(key,str);
        }else{
            //将json数据转成对象集合
            System.out.println("缓存中取值");
            //放入作用域
            req.getSession().setAttribute("UserAll", data);
            user=JSON.parseArray(data, User.class);
        }
            map.put("user", user);
            return "redirect:/admin/select.jsp";
    }


}
