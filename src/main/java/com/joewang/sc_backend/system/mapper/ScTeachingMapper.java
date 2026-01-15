package com.joewang.sc_backend.system.mapper;

import com.joewang.sc_backend.system.domain.ScTeaching;

import java.util.List;

/**
 * 授课Mapper接口
 * 
 * @author 王超浩
 * @date 2026-01-14
 */
public interface ScTeachingMapper 
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
     * 删除授课
     * 
     * @param id 授课主键
     * @return 结果
     */
    public int deleteScTeachingById(Long id);

    /**
     * 批量删除授课
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteScTeachingByIds(Long[] ids);
}
