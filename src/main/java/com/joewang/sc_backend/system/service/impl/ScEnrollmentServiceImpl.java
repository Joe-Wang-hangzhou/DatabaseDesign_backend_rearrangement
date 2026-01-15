package com.joewang.sc_backend.system.service.impl;

import com.joewang.sc_backend.system.domain.ScEnrollment;
import com.joewang.sc_backend.system.mapper.ScEnrollmentMapper;
import com.joewang.sc_backend.system.service.IScEnrollmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 选课Service业务层处理
 * 
 * @author 王超浩 
 * @date 2026-01-14
 */
@Service
public class ScEnrollmentServiceImpl implements IScEnrollmentService 
{
    @Autowired
    private ScEnrollmentMapper scEnrollmentMapper;

    /**
     * 查询选课
     * 
     * @param id 选课主键
     * @return 选课
     */
    @Override
    public ScEnrollment selectScEnrollmentById(Long id)
    {
        return scEnrollmentMapper.selectScEnrollmentById(id);
    }

    /**
     * 查询选课列表
     * 
     * @param scEnrollment 选课
     * @return 选课
     */
    @Override
    public List<ScEnrollment> selectScEnrollmentList(ScEnrollment scEnrollment)
    {
        return scEnrollmentMapper.selectScEnrollmentList(scEnrollment);
    }

    /**
     * 新增选课
     * 
     * @param scEnrollment 选课
     * @return 结果
     */
    @Override
    public int insertScEnrollment(ScEnrollment scEnrollment)
    {
        return scEnrollmentMapper.insertScEnrollment(scEnrollment);
    }

    /**
     * 修改选课
     * 
     * @param scEnrollment 选课
     * @return 结果
     */
    @Override
    public int updateScEnrollment(ScEnrollment scEnrollment)
    {
        return scEnrollmentMapper.updateScEnrollment(scEnrollment);
    }

    /**
     * 批量删除选课
     * 
     * @param ids 需要删除的选课主键
     * @return 结果
     */
    @Override
    public int deleteScEnrollmentByIds(Long[] ids)
    {
        return scEnrollmentMapper.deleteScEnrollmentByIds(ids);
    }

    /**
     * 删除选课信息
     * 
     * @param id 选课主键
     * @return 结果
     */
    @Override
    public int deleteScEnrollmentById(Long id)
    {
        return scEnrollmentMapper.deleteScEnrollmentById(id);
    }
}
