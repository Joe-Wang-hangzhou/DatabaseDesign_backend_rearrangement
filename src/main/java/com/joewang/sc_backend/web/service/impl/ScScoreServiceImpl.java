package com.joewang.sc_backend.web.service.impl;

import com.joewang.sc_backend.web.domain.ScScore;
import com.joewang.sc_backend.web.mapper.ScScoreMapper;
import com.joewang.sc_backend.web.service.IScScoreService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 成绩Service业务层处理
 * 
 * @author 王超浩
 * @date 2026-01-14
 */
@Service
public class ScScoreServiceImpl implements IScScoreService 
{
    @Autowired
    private ScScoreMapper scScoreMapper;

    /**
     * 查询成绩
     * 
     * @param id 成绩主键
     * @return 成绩
     */
    @Override
    public ScScore selectScScoreById(Long id)
    {
        return scScoreMapper.selectScScoreById(id);
    }

    /**
     * 查询成绩列表
     * 
     * @param scScore 成绩
     * @return 成绩
     */
    @Override
    public List<ScScore> selectScScoreList(ScScore scScore)
    {
        return scScoreMapper.selectScScoreList(scScore);
    }

    /**
     * 新增成绩
     * 
     * @param scScore 成绩
     * @return 结果
     */
    @Override
    public int insertScScore(ScScore scScore)
    {
        return scScoreMapper.insertScScore(scScore);
    }

    /**
     * 修改成绩
     * 
     * @param scScore 成绩
     * @return 结果
     */
    @Override
    public int updateScScore(ScScore scScore)
    {
        return scScoreMapper.updateScScore(scScore);
    }

    /**
     * 批量删除成绩
     * 
     * @param ids 需要删除的成绩主键
     * @return 结果
     */
    @Override
    public int deleteScScoreByIds(Long[] ids)
    {
        return scScoreMapper.deleteScScoreByIds(ids);
    }

    /**
     * 删除成绩信息
     * 
     * @param id 成绩主键
     * @return 结果
     */
    @Override
    public int deleteScScoreById(Long id)
    {
        return scScoreMapper.deleteScScoreById(id);
    }
}
