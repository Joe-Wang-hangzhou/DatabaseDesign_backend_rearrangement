package com.joewang.sc_backend.system.service;

import com.joewang.sc_backend.system.domain.ScClass;

import java.util.List;

/**
 * 班级Service接口
 * 
 * @author 王超浩 
 * @date 2026-01-14
 */
public interface IScClassService 
{
    /**
     * 查询班级
     * 
     * @param id 班级主键
     * @return 班级
     */
    public ScClass selectScClassById(Long id);

    /**
     * 查询班级列表
     * 
     * @param scClass 班级
     * @return 班级集合
     */
    public List<ScClass> selectScClassList(ScClass scClass);

    /**
     * 新增班级
     * 
     * @param scClass 班级
     * @return 结果
     */
    public int insertScClass(ScClass scClass);

    /**
     * 修改班级
     * 
     * @param scClass 班级
     * @return 结果
     */
    public int updateScClass(ScClass scClass);

    /**
     * 批量删除班级
     * 
     * @param ids 需要删除的班级主键集合
     * @return 结果
     */
    public int deleteScClassByIds(Long[] ids);

    /**
     * 删除班级信息
     * 
     * @param id 班级主键
     * @return 结果
     */
    public int deleteScClassById(Long id);
}
