package com.joewang.sc_backend.web.mapper;

import com.joewang.sc_backend.web.domain.ScClass;

import java.util.List;

/**
 * 班级Mapper接口
 * 
 * @author 王超浩 
 * @date 2026-01-14
 */
public interface ScClassMapper 
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
     * 删除班级
     * 
     * @param id 班级主键
     * @return 结果
     */
    public int deleteScClassById(Long id);

    /**
     * 批量删除班级
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteScClassByIds(Long[] ids);
}
