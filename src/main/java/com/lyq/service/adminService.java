package com.lyq.service;

import com.lyq.model.admin;
import com.lyq.model.user;

public interface adminService {
    user userlogin(user user);

    int adminreg(user user);

    user userstatus(user user);
}
