package com.joewang.sc_backend.web.service.impl;

import com.joewang.sc_backend.web.domain.ScCourse;
import com.joewang.sc_backend.web.mapper.ScCourseMapper;
import com.joewang.sc_backend.web.service.IScCourseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 课程Service业务层处理
 * 
 * @author 王超浩 
 * @date 2026-01-14
 */
@Service
public class ScCourseServiceImpl implements IScCourseService 
{
    @Autowired
    private ScCourseMapper scCourseMapper;

    /**
     * 查询课程
     * 
     * @param id 课程主键
     * @return 课程
     */
    @Override
    public ScCourse selectScCourseById(Long id)
    {
        return scCourseMapper.selectScCourseById(id);
    }

    /**
     * 查询课程列表
     * 
     * @param scCourse 课程
     * @return 课程
     */
    @Override
    public List<ScCourse> selectScCourseList(ScCourse scCourse)
    {
        return scCourseMapper.selectScCourseList(scCourse);
    }

    /**
     * 新增课程
     * 
     * @param scCourse 课程
     * @return 结果
     */
    @Override
    public int insertScCourse(ScCourse scCourse)
    {
        return scCourseMapper.insertScCourse(scCourse);
    }

    /**
     * 修改课程
     * 
     * @param scCourse 课程
     * @return 结果
     */
    @Override
    public int updateScCourse(ScCourse scCourse)
    {
        return scCourseMapper.updateScCourse(scCourse);
    }

    /**
     * 批量删除课程
     * 
     * @param ids 需要删除的课程主键
     * @return 结果
     */
    @Override
    public int deleteScCourseByIds(Long[] ids)
    {
        return scCourseMapper.deleteScCourseByIds(ids);
    }

    /**
     * 删除课程信息
     * 
     * @param id 课程主键
     * @return 结果
     */
    @Override
    public int deleteScCourseById(Long id)
    {
        return scCourseMapper.deleteScCourseById(id);
    }
}
