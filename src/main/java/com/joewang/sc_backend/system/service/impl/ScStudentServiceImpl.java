package com.joewang.sc_backend.system.service.impl;

import com.joewang.sc_backend.system.domain.ScStudent;
import com.joewang.sc_backend.system.mapper.ScStudentMapper;
import com.joewang.sc_backend.system.service.IScStudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 学生Service业务层处理
 * 
 * @author 王超浩
 * @date 2026-01-14
 */
@Service
public class ScStudentServiceImpl implements IScStudentService 
{
    @Autowired
    private ScStudentMapper scStudentMapper;

    /**
     * 查询学生
     * 
     * @param id 学生主键
     * @return 学生
     */
    @Override
    public ScStudent selectScStudentById(Long id)
    {
        return scStudentMapper.selectScStudentById(id);
    }

    /**
     * 查询学生列表
     * 
     * @param scStudent 学生
     * @return 学生
     */
    @Override
    public List<ScStudent> selectScStudentList(ScStudent scStudent)
    {
        return scStudentMapper.selectScStudentList(scStudent);
    }

    /**
     * 新增学生
     * 
     * @param scStudent 学生
     * @return 结果
     */
    @Override
    public int insertScStudent(ScStudent scStudent)
    {
        return scStudentMapper.insertScStudent(scStudent);
    }

    /**
     * 修改学生
     * 
     * @param scStudent 学生
     * @return 结果
     */
    @Override
    public int updateScStudent(ScStudent scStudent)
    {
        return scStudentMapper.updateScStudent(scStudent);
    }

    /**
     * 批量删除学生
     * 
     * @param ids 需要删除的学生主键
     * @return 结果
     */
    @Override
    public int deleteScStudentByIds(Long[] ids)
    {
        return scStudentMapper.deleteScStudentByIds(ids);
    }

    /**
     * 删除学生信息
     * 
     * @param id 学生主键
     * @return 结果
     */
    @Override
    public int deleteScStudentById(Long id)
    {
        return scStudentMapper.deleteScStudentById(id);
    }
}
