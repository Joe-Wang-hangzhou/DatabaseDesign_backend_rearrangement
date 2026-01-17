package com.joewang.sc_backend.web.service;

import com.joewang.sc_backend.web.domain.ScCourse;

import java.util.List;

/**
 * 课程Service接口
 * 
 * @author 王超浩 
 * @date 2026-01-14
 */
public interface IScCourseService 
{
    /**
     * 查询课程
     * 
     * @param id 课程主键
     * @return 课程
     */
    public ScCourse selectScCourseById(Long id);

    /**
     * 查询课程列表
     * 
     * @param scCourse 课程
     * @return 课程集合
     */
    public List<ScCourse> selectScCourseList(ScCourse scCourse);

    /**
     * 新增课程
     * 
     * @param scCourse 课程
     * @return 结果
     */
    public int insertScCourse(ScCourse scCourse);

    /**
     * 修改课程
     * 
     * @param scCourse 课程
     * @return 结果
     */
    public int updateScCourse(ScCourse scCourse);

    /**
     * 批量删除课程
     * 
     * @param ids 需要删除的课程主键集合
     * @return 结果
     */
    public int deleteScCourseByIds(Long[] ids);

    /**
     * 删除课程信息
     * 
     * @param id 课程主键
     * @return 结果
     */
    public int deleteScCourseById(Long id);
}
