package com.lyq.dao;

import com.lyq.model.knowledge;

import java.util.List;

public interface knowledgeDao {
    int upKonwledge(knowledge knowledge);
    int shapebyid(Integer kid);
    int deletedate(Integer kid);
    int upknowdate(knowledge knowledge);
    int addtype(knowledge knowledge);
    List<knowledge> findtypekonw(String typename);
    knowledge findkonwbyid(Integer kid);
    List<knowledge> findtypebyid();


    knowledge findnamedate(Integer kid);

    List<knowledge> getknowdata(String name);

    List<knowledge> getall();

    List<knowledge> getDataByName(String kname);
}
