package com.lyq.service.impl;

import com.lyq.dao.adminDao;
import com.lyq.model.admin;
import com.lyq.model.user;
import com.lyq.service.adminService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service("adminService")
public class adminServiceImpl implements adminService {
    @Resource
    private adminDao adminDao;

    @Override
    public user userlogin(user user) {
        return this.adminDao.userLogin(user);
    }

    @Override
    public int adminreg(user user) {
        return this.adminDao.adminreg(user);
    }

    @Override
    public user userstatus(user user){
        return this.adminDao.checkstatus(user);
    }
}
