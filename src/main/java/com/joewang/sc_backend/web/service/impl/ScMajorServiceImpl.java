package com.joewang.sc_backend.web.service.impl;

import com.joewang.sc_backend.web.domain.ScMajor;
import com.joewang.sc_backend.web.mapper.ScMajorMapper;
import com.joewang.sc_backend.web.service.IScMajorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 专业Service业务层处理
 * 
 * @author 王超浩 
 * @date 2026-01-14
 */
@Service
public class ScMajorServiceImpl implements IScMajorService 
{
    @Autowired
    private ScMajorMapper scMajorMapper;

    /**
     * 查询专业
     * 
     * @param id 专业主键
     * @return 专业
     */
    @Override
    public ScMajor selectScMajorById(Long id)
    {
        return scMajorMapper.selectScMajorById(id);
    }

    /**
     * 查询专业列表
     * 
     * @param scMajor 专业
     * @return 专业
     */
    @Override
    public List<ScMajor> selectScMajorList(ScMajor scMajor)
    {
        return scMajorMapper.selectScMajorList(scMajor);
    }

    /**
     * 新增专业
     * 
     * @param scMajor 专业
     * @return 结果
     */
    @Override
    public int insertScMajor(ScMajor scMajor)
    {
        return scMajorMapper.insertScMajor(scMajor);
    }

    /**
     * 修改专业
     * 
     * @param scMajor 专业
     * @return 结果
     */
    @Override
    public int updateScMajor(ScMajor scMajor)
    {
        return scMajorMapper.updateScMajor(scMajor);
    }

    /**
     * 批量删除专业
     * 
     * @param ids 需要删除的专业主键
     * @return 结果
     */
    @Override
    public int deleteScMajorByIds(Long[] ids)
    {
        return scMajorMapper.deleteScMajorByIds(ids);
    }

    /**
     * 删除专业信息
     * 
     * @param id 专业主键
     * @return 结果
     */
    @Override
    public int deleteScMajorById(Long id)
    {
        return scMajorMapper.deleteScMajorById(id);
    }
}
