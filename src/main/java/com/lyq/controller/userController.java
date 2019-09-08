package com.lyq.controller;

import java.util.List;


import com.lyq.model.knowledge;
import com.lyq.model.user;

import com.lyq.service.knowledgeService;
import com.lyq.service.userService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.*;
@Controller
@RequestMapping("/user")
public class userController {
    @Resource
    private userService userService;

    @RequestMapping("/mycenter")
    public ModelAndView finduser(String username) {
        ModelAndView modelAndView = new ModelAndView();
        List<user> list;
        list = userService.mycenter(username);
        modelAndView.addObject("user", list);
        modelAndView.setViewName("/user");
        return modelAndView;
    }
    @RequestMapping("/deleteuser")
    public String deleteuser(Integer uid, Model model) {
        int row = userService.deleteuser(uid);
        if (row > 0) {
            return "main";
        } else {
            return "main";
        }

    }

    @RequestMapping("/finduser")
    public String finduser(Integer uid, Model model) {
        user user = userService.finduser(uid);
        model.addAttribute("user", user);
        return "upuser";
    }

    @RequestMapping("/updateuser")
    public String upkonwdate(@RequestParam("uid") int uid,
                             @RequestParam("username") String username,
                             @RequestParam("gender") Integer gender,
                             @RequestParam("email") String email) {
        user user = new user();
        user.setUsername(username);
        user.setGender(gender);
        user.setEmail(email);
        user.setUid(uid);

        int i = userService.updateuser(user);
        if (i == 1) {
            return "main";
        } else {
            return null;
        }
    }
}
