package com.lyq.service.impl;

import com.lyq.dao.knowledgeDao;
import com.lyq.model.knowledge;
import com.lyq.service.knowledgeService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("knowledgeService")
public class knowledgeServiceImpl implements knowledgeService {
    @Resource
    private knowledgeDao knowledgeDao;

    @Override
    public int upkonwledge(knowledge knowledge) {

        return this.knowledgeDao.upKonwledge(knowledge);
    }
    @Override
    public int addtype(knowledge knowledge) {

        return this.knowledgeDao.addtype(knowledge);
    }
    @Override
    public int deletedate(Integer kid) {

        return this.knowledgeDao.deletedate(kid);
    }

    @Override
    public knowledge findkonwbyid(Integer kid) {

        return this.knowledgeDao.findkonwbyid(kid);
    }
    @Override
    public List<knowledge> findtypebyid() {

        return this.knowledgeDao.findtypebyid();
    }
    @Override
    public List<knowledge> findtypekonw(String typename) {

        return this.knowledgeDao.findtypekonw(typename);
    }
    @Override
    public knowledge findnamedate(Integer kid) {

        return this.knowledgeDao.findnamedate(kid);
    }

    @Override
    public int shapebyid(Integer kid) {

        return this.knowledgeDao.shapebyid(kid);
    }

    @Override
    public int upkonwdate(knowledge knowledge) {

        return this.knowledgeDao.upknowdate(knowledge);
    }

    @Override
    public List<knowledge> getknowdata(String name) {
        return this.knowledgeDao.getknowdata(name);
    }

    @Override
    public List<knowledge> getall() {
        return this.knowledgeDao.getall();
    }

    @Override
    public List<knowledge> getDataByName(String kname) {
        return this.knowledgeDao.getDataByName(kname);
    }
}
