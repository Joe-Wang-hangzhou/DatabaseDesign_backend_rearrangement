package com.joewang.sc_backend.system.mapper;

import com.joewang.sc_backend.system.domain.ScScore;

import java.util.List;

/**
 * 成绩Mapper接口
 * 
 * @author 王超浩
 * @date 2026-01-14
 */
public interface ScScoreMapper 
{
    /**
     * 查询成绩
     * 
     * @param id 成绩主键
     * @return 成绩
     */
    public ScScore selectScScoreById(Long id);

    /**
     * 查询成绩列表
     * 
     * @param scScore 成绩
     * @return 成绩集合
     */
    public List<ScScore> selectScScoreList(ScScore scScore);

    /**
     * 新增成绩
     * 
     * @param scScore 成绩
     * @return 结果
     */
    public int insertScScore(ScScore scScore);

    /**
     * 修改成绩
     * 
     * @param scScore 成绩
     * @return 结果
     */
    public int updateScScore(ScScore scScore);

    /**
     * 删除成绩
     * 
     * @param id 成绩主键
     * @return 结果
     */
    public int deleteScScoreById(Long id);

    /**
     * 批量删除成绩
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteScScoreByIds(Long[] ids);
}
