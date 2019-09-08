package com.lyq.dao;

import com.lyq.model.admin;
import com.lyq.model.user;

public interface adminDao {
    user userLogin(user user);

    int adminreg(user user);

    user checkstatus(user user);

}
