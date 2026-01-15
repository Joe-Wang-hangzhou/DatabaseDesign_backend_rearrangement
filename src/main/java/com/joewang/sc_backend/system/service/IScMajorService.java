package com.joewang.sc_backend.system.service;

import com.joewang.sc_backend.system.domain.ScMajor;

import java.util.List;

/**
 * 专业Service接口
 * 
 * @author 王超浩 
 * @date 2026-01-14
 */
public interface IScMajorService 
{
    /**
     * 查询专业
     * 
     * @param id 专业主键
     * @return 专业
     */
    public ScMajor selectScMajorById(Long id);

    /**
     * 查询专业列表
     * 
     * @param scMajor 专业
     * @return 专业集合
     */
    public List<ScMajor> selectScMajorList(ScMajor scMajor);

    /**
     * 新增专业
     * 
     * @param scMajor 专业
     * @return 结果
     */
    public int insertScMajor(ScMajor scMajor);

    /**
     * 修改专业
     * 
     * @param scMajor 专业
     * @return 结果
     */
    public int updateScMajor(ScMajor scMajor);

    /**
     * 批量删除专业
     * 
     * @param ids 需要删除的专业主键集合
     * @return 结果
     */
    public int deleteScMajorByIds(Long[] ids);

    /**
     * 删除专业信息
     * 
     * @param id 专业主键
     * @return 结果
     */
    public int deleteScMajorById(Long id);
}
