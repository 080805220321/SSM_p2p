package com.zking.controller;

import com.zking.dao.UserBorrowMoneyMapper;
import com.zking.dao.UserMapper;
import com.zking.dao.UserMessageMapper;
import com.zking.pojo.User;
import com.zking.pojo.UserBorrowMoney;
import com.zking.pojo.UserMessage;
import com.zking.redis.RedisCache;
import com.zking.util.JuHe_PhoneNote;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.xml.crypto.Data;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * @author WSJ
 */

@Controller
public class UserController {
    @Autowired
    private UserMapper userMapper;
    @Autowired
    private UserMessageMapper userMessageMapper;
    @Autowired
    private UserBorrowMoneyMapper userBorrowMoneyMapper;
    @Resource
    private RedisCache redisCache;


    @RequestMapping("/register")
    public String phone(HttpServletRequest request, User user){
        int result = userMapper.insert(user);
        if(result>0){
            System.out.println(user);
            User user1 = userMapper.getUser(user.getUserPhone(),user.getUserPwd());
            System.out.println(user1);
            UserMessage userMessage = new UserMessage();
            userMessage.setUserId(user1.getUserId());
            userMessage.setUsermessageName("Wixd_"+user1.getUserId());
            int insert = userMessageMapper.insert(userMessage);
            if(insert>0&&result>0){
                return "redirect:/login.jsp";
            }
        }

        return "register.jsp";
    }


    @RequestMapping("/phone")
    public void userPhone(HttpServletRequest request, HttpServletResponse resp) throws  Exception{
        String phone = request.getParameter("phone");
        System.out.println(phone);
        String randomVcode = JuHe_PhoneNote.createRandomVcode();
        JuHe_PhoneNote.mobileQuery(phone,"#code#="+randomVcode);
        PrintWriter out = resp.getWriter();
        out.println(randomVcode);
        out.close();
    }
    @RequestMapping("/login")
    public String login(HttpServletRequest request,HttpServletResponse resp,User user) throws Exception{
        User u = userMapper.getUser(user.getUserPhone(), user.getUserPwd());
        if(u!=null){
            UserMessage userMessage = userMessageMapper.selectByPrimaryKey(u.getUserId());
            HttpSession session = request.getSession();
            session.setAttribute("user", userMessage);
            return "redirect:/index1.jsp";
        }


        return "login.jsp";
    }
    @RequestMapping("/borrow")
    public String borrow(HttpServletRequest request, HttpServletResponse resp, UserBorrowMoney userBorrowMoney) throws Exception{
        String borrowmoneyId="wxid"+System.currentTimeMillis();
        String borrowmoneyWay="等额本息";
        UserMessage user = (UserMessage) request.getSession().getAttribute("user");
        double a=Double.longBitsToDouble(userBorrowMoney.getBorrowmoneyBorrowmoney())*0.12;
        Long borrowmoneyInterest=Double.doubleToLongBits(a);
        String pa="2019-2-21";
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        Date borrowmoneyRaisedate = sdf.parse(pa);
        String pa1="2019-2-14";
        SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy-MM-dd");
        Date borrowmoneyOrderdate = sdf1.parse(pa1);
        double c=Double.longBitsToDouble(userBorrowMoney.getBorrowmoneyBorrowmoney())*1.03;
        Long borrowmoneyMoney=Double.doubleToLongBits(c);
        userBorrowMoney.setUserId(user.getUserId());
        userBorrowMoney.setBorrowmoneyRaisedate(borrowmoneyRaisedate);
        userBorrowMoney.setBorrowmoneyOrderdate(borrowmoneyOrderdate);
        userBorrowMoney.setBorrowmoneyMoney(borrowmoneyMoney);
        userBorrowMoney.setBorrowmoneyInterest(borrowmoneyInterest);
        userBorrowMoney.setBorrowmoneyWay(borrowmoneyWay);
        userBorrowMoney.setBorrowmoneyId(borrowmoneyId);
        int insert = userBorrowMoneyMapper.insert(userBorrowMoney);
        if(insert>0){
            return "index1.jsp";
        }
        System.out.println(userBorrowMoney);
        return null;
    }
}
