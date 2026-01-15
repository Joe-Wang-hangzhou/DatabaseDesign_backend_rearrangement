package com.joewang.sc_backend.system.service.impl;

import com.joewang.sc_backend.system.domain.ScClass;
import com.joewang.sc_backend.system.mapper.ScClassMapper;
import com.joewang.sc_backend.system.service.IScClassService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 班级Service业务层处理
 * 
 * @author 王超浩 
 * @date 2026-01-14
 */
@Service
public class ScClassServiceImpl implements IScClassService 
{
    @Autowired
    private ScClassMapper scClassMapper;

    /**
     * 查询班级
     * 
     * @param id 班级主键
     * @return 班级
     */
    @Override
    public ScClass selectScClassById(Long id)
    {
        return scClassMapper.selectScClassById(id);
    }

    /**
     * 查询班级列表
     * 
     * @param scClass 班级
     * @return 班级
     */
    @Override
    public List<ScClass> selectScClassList(ScClass scClass)
    {
        return scClassMapper.selectScClassList(scClass);
    }

    /**
     * 新增班级
     * 
     * @param scClass 班级
     * @return 结果
     */
    @Override
    public int insertScClass(ScClass scClass)
    {
        return scClassMapper.insertScClass(scClass);
    }

    /**
     * 修改班级
     * 
     * @param scClass 班级
     * @return 结果
     */
    @Override
    public int updateScClass(ScClass scClass)
    {
        return scClassMapper.updateScClass(scClass);
    }

    /**
     * 批量删除班级
     * 
     * @param ids 需要删除的班级主键
     * @return 结果
     */
    @Override
    public int deleteScClassByIds(Long[] ids)
    {
        return scClassMapper.deleteScClassByIds(ids);
    }

    /**
     * 删除班级信息
     * 
     * @param id 班级主键
     * @return 结果
     */
    @Override
    public int deleteScClassById(Long id)
    {
        return scClassMapper.deleteScClassById(id);
    }
}
