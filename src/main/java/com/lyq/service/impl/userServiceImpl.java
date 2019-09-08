package com.lyq.service.impl;
import javax.annotation.Resource;
import java.util.List;

import com.lyq.model.knowledge;
import com.lyq.model.user;
import com.lyq.service.userService;
import org.springframework.stereotype.Service;
import com.lyq.dao.userDao;
@Service("userService")
public class userServiceImpl implements userService {
    @Resource
    private userDao userDao;
    @Override
    public List<user> mycenter(String username) {

        return this.userDao.mycenter(username);
    }
    @Override
    public int updateuser(user user) {

        return this.userDao.updateuser(user);
    }

    @Override
    public int deleteuser(Integer uid) {

        return this.userDao.deleteuser(uid);
    }

    @Override
    public user finduser(Integer uid) {

        return this.userDao.finduser(uid);
    }
}
