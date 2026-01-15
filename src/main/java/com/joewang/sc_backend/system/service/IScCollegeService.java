package com.joewang.sc_backend.system.service;

import com.joewang.sc_backend.system.domain.ScCollege;

import java.util.List;

/**
 * 学院Service接口
 * 
 * @author 王超浩
 * @date 2026-01-14
 */
public interface IScCollegeService 
{
    /**
     * 查询学院
     * 
     * @param id 学院主键
     * @return 学院
     */
    public ScCollege selectScCollegeById(Long id);

    /**
     * 查询学院列表
     * 
     * @param scCollege 学院
     * @return 学院集合
     */
    public List<ScCollege> selectScCollegeList(ScCollege scCollege);

    /**
     * 新增学院
     * 
     * @param scCollege 学院
     * @return 结果
     */
    public int insertScCollege(ScCollege scCollege);

    /**
     * 修改学院
     * 
     * @param scCollege 学院
     * @return 结果
     */
    public int updateScCollege(ScCollege scCollege);

    /**
     * 批量删除学院
     * 
     * @param ids 需要删除的学院主键集合
     * @return 结果
     */
    public int deleteScCollegeByIds(Long[] ids);

    /**
     * 删除学院信息
     * 
     * @param id 学院主键
     * @return 结果
     */
    public int deleteScCollegeById(Long id);
}
