package cn.itcast.interceptor;

import cn.itcast.user.User;
import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Loginlnterceptor implements HandlerInterceptor {
    @Override
    public boolean preHandle(HttpServletRequest request,
                             HttpServletResponse httpServletResponse,
                             Object o)throws Exception{
        //获取请求的URL
        String url = request.getRequestURI();
        //除了登录的请求外，其他的URL都进行拦截控制
        if (url.indexOf("/login.action")>=0){
            return true;
        }
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("USER_SESSION");
        //判断session中是否有用户数据，如果有则返回true，继续向下执行
        if (user!=null){
            return true;
        }
        request.setAttribute("msg","您还没有登录，请先登录");
        request.getRequestDispatcher("/WEB-INF/jsp/login.jsp").forward(request,httpServletResponse);
        return false;
    }

}
