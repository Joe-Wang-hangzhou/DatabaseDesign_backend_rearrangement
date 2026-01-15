package com.joewang.sc_backend.system.service.impl;

import com.joewang.sc_backend.system.domain.ScTeacher;
import com.joewang.sc_backend.system.mapper.ScTeacherMapper;
import com.joewang.sc_backend.system.service.IScTeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 教师Service业务层处理
 * 
 * @author 王超浩
 * @date 2026-01-14
 */
@Service
public class ScTeacherServiceImpl implements IScTeacherService 
{
    @Autowired
    private ScTeacherMapper scTeacherMapper;

    /**
     * 查询教师
     * 
     * @param id 教师主键
     * @return 教师
     */
    @Override
    public ScTeacher selectScTeacherById(Long id)
    {
        return scTeacherMapper.selectScTeacherById(id);
    }

    /**
     * 查询教师列表
     * 
     * @param scTeacher 教师
     * @return 教师
     */
    @Override
    public List<ScTeacher> selectScTeacherList(ScTeacher scTeacher)
    {
        return scTeacherMapper.selectScTeacherList(scTeacher);
    }

    /**
     * 新增教师
     * 
     * @param scTeacher 教师
     * @return 结果
     */
    @Override
    public int insertScTeacher(ScTeacher scTeacher)
    {
        return scTeacherMapper.insertScTeacher(scTeacher);
    }

    /**
     * 修改教师
     * 
     * @param scTeacher 教师
     * @return 结果
     */
    @Override
    public int updateScTeacher(ScTeacher scTeacher)
    {
        return scTeacherMapper.updateScTeacher(scTeacher);
    }

    /**
     * 批量删除教师
     * 
     * @param ids 需要删除的教师主键
     * @return 结果
     */
    @Override
    public int deleteScTeacherByIds(Long[] ids)
    {
        return scTeacherMapper.deleteScTeacherByIds(ids);
    }

    /**
     * 删除教师信息
     * 
     * @param id 教师主键
     * @return 结果
     */
    @Override
    public int deleteScTeacherById(Long id)
    {
        return scTeacherMapper.deleteScTeacherById(id);
    }
}
