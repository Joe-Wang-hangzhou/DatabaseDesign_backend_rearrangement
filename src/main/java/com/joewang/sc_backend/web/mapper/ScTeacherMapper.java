package com.joewang.sc_backend.web.mapper;

import com.joewang.sc_backend.web.domain.ScTeacher;

import java.util.List;

/**
 * 教师Mapper接口
 * 
 * @author 王超浩
 * @date 2026-01-14
 */
public interface ScTeacherMapper 
{
    /**
     * 查询教师
     * 
     * @param id 教师主键
     * @return 教师
     */
    public ScTeacher selectScTeacherById(Long id);

    /**
     * 查询教师列表
     * 
     * @param scTeacher 教师
     * @return 教师集合
     */
    public List<ScTeacher> selectScTeacherList(ScTeacher scTeacher);

    /**
     * 新增教师
     * 
     * @param scTeacher 教师
     * @return 结果
     */
    public int insertScTeacher(ScTeacher scTeacher);

    /**
     * 修改教师
     * 
     * @param scTeacher 教师
     * @return 结果
     */
    public int updateScTeacher(ScTeacher scTeacher);

    /**
     * 删除教师
     * 
     * @param id 教师主键
     * @return 结果
     */
    public int deleteScTeacherById(Long id);

    /**
     * 批量删除教师
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteScTeacherByIds(Long[] ids);
}
