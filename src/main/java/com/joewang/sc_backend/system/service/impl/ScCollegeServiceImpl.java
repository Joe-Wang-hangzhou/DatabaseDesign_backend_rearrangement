package com.joewang.sc_backend.system.service.impl;

import com.joewang.sc_backend.system.domain.ScCollege;
import com.joewang.sc_backend.system.mapper.ScCollegeMapper;
import com.joewang.sc_backend.system.service.IScCollegeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 学院Service业务层处理
 * 
 * @author 王超浩
 * @date 2026-01-14
 */
@Service
public class ScCollegeServiceImpl implements IScCollegeService 
{
    @Autowired
    private ScCollegeMapper scCollegeMapper;

    /**
     * 查询学院
     * 
     * @param id 学院主键
     * @return 学院
     */
    @Override
    public ScCollege selectScCollegeById(Long id)
    {
        return scCollegeMapper.selectScCollegeById(id);
    }

    /**
     * 查询学院列表
     * 
     * @param scCollege 学院
     * @return 学院
     */
    @Override
    public List<ScCollege> selectScCollegeList(ScCollege scCollege)
    {
        return scCollegeMapper.selectScCollegeList(scCollege);
    }

    /**
     * 新增学院
     * 
     * @param scCollege 学院
     * @return 结果
     */
    @Override
    public int insertScCollege(ScCollege scCollege)
    {
        return scCollegeMapper.insertScCollege(scCollege);
    }

    /**
     * 修改学院
     * 
     * @param scCollege 学院
     * @return 结果
     */
    @Override
    public int updateScCollege(ScCollege scCollege)
    {
        return scCollegeMapper.updateScCollege(scCollege);
    }

    /**
     * 批量删除学院
     * 
     * @param ids 需要删除的学院主键
     * @return 结果
     */
    @Override
    public int deleteScCollegeByIds(Long[] ids)
    {
        return scCollegeMapper.deleteScCollegeByIds(ids);
    }

    /**
     * 删除学院信息
     * 
     * @param id 学院主键
     * @return 结果
     */
    @Override
    public int deleteScCollegeById(Long id)
    {
        return scCollegeMapper.deleteScCollegeById(id);
    }
}
