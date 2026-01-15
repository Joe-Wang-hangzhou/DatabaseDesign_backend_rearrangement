package com.joewang.sc_backend.system.service.impl;

import com.joewang.sc_backend.system.domain.ScTeaching;
import com.joewang.sc_backend.system.mapper.ScTeachingMapper;
import com.joewang.sc_backend.system.service.IScTeachingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 授课Service业务层处理
 * 
 * @author 王超浩
 * @date 2026-01-14
 */
@Service
public class ScTeachingServiceImpl implements IScTeachingService 
{
    @Autowired
    private ScTeachingMapper scTeachingMapper;

    /**
     * 查询授课
     * 
     * @param id 授课主键
     * @return 授课
     */
    @Override
    public ScTeaching selectScTeachingById(Long id)
    {
        return scTeachingMapper.selectScTeachingById(id);
    }

    /**
     * 查询授课列表
     * 
     * @param scTeaching 授课
     * @return 授课
     */
    @Override
    public List<ScTeaching> selectScTeachingList(ScTeaching scTeaching)
    {
        return scTeachingMapper.selectScTeachingList(scTeaching);
    }

    /**
     * 新增授课
     * 
     * @param scTeaching 授课
     * @return 结果
     */
    @Override
    public int insertScTeaching(ScTeaching scTeaching)
    {
        return scTeachingMapper.insertScTeaching(scTeaching);
    }

    /**
     * 修改授课
     * 
     * @param scTeaching 授课
     * @return 结果
     */
    @Override
    public int updateScTeaching(ScTeaching scTeaching)
    {
        return scTeachingMapper.updateScTeaching(scTeaching);
    }

    /**
     * 批量删除授课
     * 
     * @param ids 需要删除的授课主键
     * @return 结果
     */
    @Override
    public int deleteScTeachingByIds(Long[] ids)
    {
        return scTeachingMapper.deleteScTeachingByIds(ids);
    }

    /**
     * 删除授课信息
     * 
     * @param id 授课主键
     * @return 结果
     */
    @Override
    public int deleteScTeachingById(Long id)
    {
        return scTeachingMapper.deleteScTeachingById(id);
    }
}
