package com.lyq.controller;

import com.lyq.model.user;
import com.lyq.service.adminService;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/admin")
public class adminController {
    @Resource
    adminService adminservice;

    /**
     * 用户登录模块
     *
     * @param user
     * @param model
     * @param session
     * @return
     */
    @RequestMapping(value = "/userlogin", method = RequestMethod.POST)
    public String userlogin(user user, Model model, HttpSession session) {
        // 获取用户名和密码
        String username = user.getUsername();
        String password = user.getPassword();
        int status = user.getStatus();
        if (adminservice.userlogin(user) != null) {

            if(adminservice.userstatus(user)!=null ){
            // 将用户对象添加到Session
            session.setAttribute("user", user);
            // 重定向到主页面的跳转方法
            System.out.println(session);
            return "/main";
        }
            else {
                model.addAttribute("msg", "用户已被封禁！");
            }
    }
        else {
            model.addAttribute("msg", "用户名或密码错误，请重新登录！");
        }
        return "redirect:error";
    }

    /**
     * 用户注册
     *
     * @param username
     * @param password
     * @param gender
     * @param age
     * @param email
     * @param session
     * @return
     */
    @RequestMapping(value = "/adminreg", method = RequestMethod.POST)
    public String userreg(@RequestParam("username") String username,
                          @RequestParam("password") String password,
                          @RequestParam("gender") int gender,
                          @RequestParam("age") int age, @RequestParam("email") String email,
                          HttpSession session) {
        user user = new user();
        user.setUsername(username);
        user.setPassword(password);
        user.setGender(gender);
        user.setAge(age);
        user.setEmail(email);
        int i = adminservice.adminreg(user);
        if (i == 1) {
            return "/main";
        } else {
            return "redirect:register";
        }
    }

    /**
     * 向用户主页面跳转
     */
    @RequestMapping("/main")
    public String toMain() {
        return "/main";
    }

    /**
     * 退出登录
     */
    @RequestMapping(value = "/logout")
    public String logout(HttpSession session) {
        // 清除Session
        session.invalidate();
        //session.removeAttribute();
        // 重定向到登录页面的跳转方法
        return "/login";
    }

    /**
     * 登录错误重定向登录页面
     *
     * @return
     */
    @RequestMapping("/error")
    public String tologin() {
        return "/login";
    }

    /**
     * 注册页面跳转
     *
     * @return
     */
    @RequestMapping(value = "/register")
    @ResponseBody
    public ModelAndView toregistered(HttpServletRequest request) {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("registered");
        return mav;
    }
}