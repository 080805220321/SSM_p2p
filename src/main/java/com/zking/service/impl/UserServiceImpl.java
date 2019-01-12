package com.zking.service.impl;

import com.zking.dao.UserDao;
import com.zking.pojo.User;
import com.zking.service.UserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

/**
 *
 *
 */
@Service("userService")
public class UserServiceImpl implements UserService {

    @Resource
    private UserDao userDao;//引用dao包中的接口，实现是通过dao包的调用具体的实现方法

    @Override
    public int addUser(User user) {
        return userDao.addUser(user);
    }

    @Override
    public int delUserById(Integer id) {
        return userDao.delUserById(id);
    }

    @Override
    public int delUser(User user) {
        return userDao.delUser(user);
    }

    @Override
    public int updateUser(User user) {
        return userDao.updateUser(user);
    }

    @Override
    public List<User> selectUserAll() {
        return userDao.selectUserAll();
    }

    @Override
    public User selectUserById(Integer id) {
        return userDao.selectUserById(id);
    }

    @Override
    public List<User> selectUsers(User user) {
        return userDao.selectUsers(user);
    }

    @Override
    public User selectUserByUserName(String userName) {
        return userDao.selectUserByUserName(userName);
    }

    @Override
    public List<Map<String, Object>> getUserRight(Integer id) {
        return userDao.getUserRight(id);
    }
}
