package cn.itcast.dao;

import cn.itcast.user.User;
import cn.itcast.user.UserAll;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import java.util.List;

@Mapper
public interface UserDao {
    User findUser(@Param("name") String name,@Param("password") String password);

    /**
     * 查询所有数据
     */

    List<UserAll>findAll();
//    UserAll areaAll(@Param("area") String area);
    List<UserAll>areaAll(@Param("area") String area);



}
