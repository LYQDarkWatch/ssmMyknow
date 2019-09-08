package com.lyq.service;


import com.lyq.model.user;
import java.util.List;
public interface userService {
    List<user> mycenter(String username);
    int deleteuser(Integer uid);
    int updateuser(user user);
    user finduser(Integer uid);
}
