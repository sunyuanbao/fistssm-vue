package cn.itcast.controller;

import cn.itcast.service.UserService;
import cn.itcast.service.UserServiceImp1;
import cn.itcast.user.User;
import cn.itcast.user.UserAll;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Map;
@CrossOrigin
@Controller
public class UserController {

    @Autowired
    private UserService userService;
    @RequestMapping(value="login.action",method = RequestMethod.POST)
    public String login(String name, String password, Model model,
                        HttpSession session){
        User user = userService.findUser(name,password);
        if (user !=null){
            session.setAttribute("USER_SESSION",user);
            return "success";
        }
        model.addAttribute("msg","账号或密码错误，请重新输入！");
        return "visual";
    }

    /**
     * 查询所有数据，给页面返回json数据
     */
//    @RequestMapping("list")
//    //@ResponseBody//用于转换对象为json
//    public ModelAndView list(){
//        //查询数据
//        ModelAndView mv=new ModelAndView("back");
//        List<UserAll>list = userService.findAll();
//        mv.addObject("userList",list);
//        return mv;
//    }

    /**
     * 查询所有数据，给页面返回json数据
     */
    @RequestMapping("list")
    @ResponseBody//用于转换对象为json
    public List<UserAll> list(){

        //查询数据
        List<UserAll>list = userService.findAll();
        return list;

    }

    @RequestMapping("userlist")
    public String userlist(HttpServletRequest request){
        List<UserAll>list = userService.findAll();
        for(UserAll u:list){
            System.out.print(u);
        }
        request.setAttribute("list",list);
        request.setAttribute("msg","hhhhhhhh");
        return "ssw";
    }

//    /**
//     * 查询每个raea的数据，给页面返回json数据
//     */
//    @ResponseBody//用于转换对象为json
//    @RequestMapping(value="login.action",method = RequestMethod.POST)
//    public String login(String area, String alliance, String team , Model model,
//                        HttpSession session){
//        List<UserAll>raea = userService.findAll();
//
//    }
//    public List<UserAll> raea(){1
//        //查询数据
//        List<UserAll>raea = userService.findAll();
//        return raea;
//
//    }
//    @RequestMapping(value="testAjsx")
//    public void testAjsx(String area,HttpSession session){
////        UserAll userAll = userService.areaAll(area);
//        List<UserAll>areaa = userService.areaAll(area);
//        System.out.print("ajsx方法执行了。。。");
//        System.out.print(areaa);
//    }
    @RequestMapping(value="testAjsx")
    public List<UserAll> lists(String area,HttpSession session){
        //查询数据
        List<UserAll>lista = userService.areaAll(area);
        System.out.print(lista);
        return lista;

    }


}
