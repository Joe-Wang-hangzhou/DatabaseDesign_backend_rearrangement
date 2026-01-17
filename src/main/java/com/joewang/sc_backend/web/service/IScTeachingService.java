package com.joewang.sc_backend.web.service;

import com.joewang.sc_backend.web.domain.ScTeaching;

import java.util.List;

/**
 * 授课Service接口
 * 
 * @author 王超浩
 * @date 2026-01-14
 */
public interface IScTeachingService 
{
    /**
     * 查询授课
     * 
     * @param id 授课主键
     * @return 授课
     */
    public ScTeaching selectScTeachingById(Long id);

    /**
     * 查询授课列表
     * 
     * @param scTeaching 授课
     * @return 授课集合
     */
    public List<ScTeaching> selectScTeachingList(ScTeaching scTeaching);

    /**
     * 新增授课
     * 
     * @param scTeaching 授课
     * @return 结果
     */
    public int insertScTeaching(ScTeaching scTeaching);

    /**
     * 修改授课
     * 
     * @param scTeaching 授课
     * @return 结果
     */
    public int updateScTeaching(ScTeaching scTeaching);

    /**
     * 批量删除授课
     * 
     * @param ids 需要删除的授课主键集合
     * @return 结果
     */
    public int deleteScTeachingByIds(Long[] ids);

    /**
     * 删除授课信息
     * 
     * @param id 授课主键
     * @return 结果
     */
    public int deleteScTeachingById(Long id);
}
