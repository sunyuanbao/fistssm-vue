package cn.itcast.service;

import cn.itcast.user.User;
import cn.itcast.user.UserAll;

import java.util.List;

public interface UserService {
    public User findUser(String name,String password);
    public List<UserAll> findAll();
//    public UserAll areaAll(String area);
    public List<UserAll> areaAll(String area);


}
