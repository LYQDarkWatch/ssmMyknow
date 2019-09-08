package com.lyq.service;

import com.lyq.model.knowledge;

import java.util.List;

public interface knowledgeService {
    int upkonwledge(knowledge knowledge);

    int deletedate(Integer kid);
    List<knowledge> findtypekonw(String typename);
    knowledge findkonwbyid(Integer kid);
    List<knowledge> findtypebyid();
    int addtype(knowledge knowledge);
    int upkonwdate(knowledge knowledge);

    knowledge findnamedate(Integer kid);

    List<knowledge> getknowdata(String name);

    List<knowledge> getall();

    List<knowledge> getDataByName(String kname);

    int shapebyid(Integer kid);
}
