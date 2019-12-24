package cn.itcast.service;

import cn.itcast.dao.UserDao;
import cn.itcast.user.User;
import cn.itcast.user.UserAll;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

@Service("userService")
@Transactional
public class UserServiceImp1 implements UserService{

    @Resource
    private UserDao userDao;
    public User findUser(String name,String password){
        User user = this.userDao.findUser(name,password);
        return user;
    }

    @Override
    public List<UserAll> findAll() {
        return userDao.findAll();
    }

    @Override
    public List<UserAll> areaAll(String area) {
        return userDao.areaAll(area);
    }


//    @Override
//    public UserAll areaAll(String area) {
//        UserAll userAll = this.userDao.areaAll(area);
//        return userAll;
//    }

}
