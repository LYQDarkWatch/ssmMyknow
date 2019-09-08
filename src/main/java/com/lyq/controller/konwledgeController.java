package com.lyq.controller;

import com.lyq.model.knowledge;
import com.lyq.model.user;
import com.lyq.service.knowledgeService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.*;

@Controller
@RequestMapping("/knowledge")
public class konwledgeController {
    @Resource
    private knowledgeService knowledgeService;

    /**
     * 上传新的知识点
     *
     * @param kname
     * @param username
     * @param pnitro
     * @param typename
     * @param httpSession
     * @return
     */
    @RequestMapping(value = "/uploadKnow", method = RequestMethod.POST)
    public String uploadKnowledge(/*@RequestParam("kid") int kid, */
            @RequestParam("kname") String kname,
            @RequestParam("username") String username,
            @RequestParam("pnitro") String pnitro,
            @RequestParam("typename") String typename,
            HttpSession httpSession
            /*@RequestParam("check") String check*/) {
        knowledge knowledge = new knowledge();
        System.out.println(kname);
        knowledge.setKname(kname);
        knowledge.setTypename(typename);
        knowledge.setPnitro(pnitro);
        knowledge.setUsername(username);
        int i = knowledgeService.upkonwledge(knowledge);
        if (i == 1) {
            return "/main";
        } else {
            return "/error";
        }
    }

    /**
     * 获取所有知识点
     *
     * @return
     */
    @RequestMapping(value = "/getalldata", method = RequestMethod.GET)
    @ResponseBody
    public Map<String, Object> getAllData() {
        Map<String, Object> modelMap = new HashMap<String, Object>();
        List<knowledge> knowledgeList = new ArrayList<knowledge>();
        knowledgeList = knowledgeService.getall();
        modelMap.put("knowledgeList", knowledgeList);
        if (knowledgeList != null) {
            modelMap.put("success", true);
        }
        return modelMap;
    }


    @RequestMapping(value = "/gettype", method = RequestMethod.GET)
    @ResponseBody
    public Map<String, Object> getAllType() {
        Map<String, Object> modeltype = new HashMap<String, Object>();
        List<knowledge> knowledgetype = new ArrayList<knowledge>();
        knowledgetype = knowledgeService.findtypebyid();
        modeltype.put("knowledgetype", knowledgetype);
        if (knowledgetype != null) {
            modeltype.put("success", true);
        }
        return modeltype;
    }



    /**
     * 登录错误重定向登录页面
     *
     * @return
     */
    @RequestMapping("/error")
    public String tologin() {
        return "/updatekonw";
    }


    @RequestMapping("/main")
    public String tomain() {
        return "/main";
    }
    /**
     * 获取当前用户上传的知识点
     *
     * @param request
     * @return
     */
    @RequestMapping("/myknowledge")
    public ModelAndView dateList(HttpServletRequest request) {
        HttpSession session = request.getSession();
        user user = (com.lyq.model.user) session.getAttribute("user");
        String name = user.getUsername();
        ModelAndView modelAndView = new ModelAndView();
        List<knowledge> list;
        list = knowledgeService.getknowdata(name);
        modelAndView.addObject("knowledge", list);
        modelAndView.setViewName("/myknowledge");
        return modelAndView;
    }

    /**
     * 删除知识点
     *
     * @param kid
     * @param model
     * @return
     */
    @RequestMapping("/deletedate")
    public String deletedate(Integer kid, Model model) {
        int row = knowledgeService.deletedate(kid);
        if (row > 0) {
            return "main";
        } else {
            return "main";
        }

    }

    /**
     * 获取当前知识点信息修改
     *
     * @param kid
     * @param model
     * @return
     */
    @RequestMapping("/findkonwbyid")
    public String findkonwbyid(Integer kid, Model model) {
        knowledge knowledge = knowledgeService.findkonwbyid(kid);
        model.addAttribute("knowledge", knowledge);
        return "upkonw";
    }

    /**
     * 上传修改知识点
     *
     * @param kid
     * @param kname
     * @param pnitro
     * @param typename
     * @return
     */
    @RequestMapping("/upknow")
    public String upkonwdate(@RequestParam("kid") int kid,
                             @RequestParam("kname") String kname,
                             @RequestParam("pnitro") String pnitro,
                             @RequestParam("typename") String typename) {
        knowledge knowledge = new knowledge();
        knowledge.setKname(kname);
        knowledge.setPnitro(pnitro);
        knowledge.setKid(kid);
        knowledge.setTypename(typename);
        int i = knowledgeService.upkonwdate(knowledge);
        if (i == 1) {
            return "redirect:/admin/main";
        } else {
            return null;
        }
    }

    /**
     * 添加分类
     * @param typename
     * @return
     */
    @RequestMapping("/addtype")
    public String upkonwtype(
                             @RequestParam("typename") String typename
                             ) {
        knowledge knowledge = new knowledge();
        knowledge.setTypename(typename);
        int i = knowledgeService.addtype(knowledge);
        if (i == 1) {
            return "redirect:/knowledge/updatekonw";
        } else {
            return "fail";
        }
    }


    @RequestMapping("/myknow")
    public String tomyknow() {
        return "/myknowledge";
    }
    @RequestMapping("/uptype")
    public String tokonwtype() {
        return "/uptype";
    }

    @RequestMapping("/updatekonw")
    public  ModelAndView toaddkonw( Model model) {
        ModelAndView modelAndView = new ModelAndView();
        List<knowledge> list;
        list = knowledgeService.findtypebyid();
        modelAndView.addObject("knowledge", list);
        modelAndView.setViewName("/updatekonw");
        return modelAndView;
    }

    /**
     * 获取知识点详情
     *
     * @param kid
     * @param model
     * @return
     */
    @RequestMapping("/knowledgedet")
    public String findnamedate(Integer kid, Model model) {
        knowledge knowledge = knowledgeService.findnamedate(kid);

        model.addAttribute("knowledge", knowledge);
        return "knowledgedet";
    }

    /**
     * 搜索
     */
    @RequestMapping("/findDataByName")
    public ModelAndView findDataByName(String kname) {
        ModelAndView modelAndView = new ModelAndView();
        List<knowledge> list;
        list = knowledgeService.getDataByName(kname);
        modelAndView.addObject("knowledge", list);
        modelAndView.setViewName("/findknow");
        return modelAndView;
    }

    //

    @RequestMapping("/typeknowledge")
    public ModelAndView findDatatype(String typename) {
        ModelAndView modelAndView = new ModelAndView();
        List<knowledge> list;
        list = knowledgeService.findtypekonw(typename);
        modelAndView.addObject("knowledge", list);
        modelAndView.setViewName("/typeknowledge");
        return modelAndView;
    }

    /**
     * 将私有知识公开
     *
     * @param kid
     * @param model
     * @return
     */
    @RequestMapping("shapebyid")
    public String getshape(Integer kid, Model model) {
        knowledgeService.shapebyid(kid);
        return "main";
    }
}
