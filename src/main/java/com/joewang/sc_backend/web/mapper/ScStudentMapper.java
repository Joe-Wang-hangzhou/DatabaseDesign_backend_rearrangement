package com.joewang.sc_backend.web.mapper;

import com.joewang.sc_backend.web.domain.ScStudent;

import java.util.List;

/**
 * 学生Mapper接口
 * 
 * @author 王超浩
 * @date 2026-01-14
 */
public interface ScStudentMapper 
{
    /**
     * 查询学生
     * 
     * @param id 学生主键
     * @return 学生
     */
    public ScStudent selectScStudentById(Long id);

    /**
     * 查询学生列表
     * 
     * @param scStudent 学生
     * @return 学生集合
     */
    public List<ScStudent> selectScStudentList(ScStudent scStudent);

    /**
     * 新增学生
     * 
     * @param scStudent 学生
     * @return 结果
     */
    public int insertScStudent(ScStudent scStudent);

    /**
     * 修改学生
     * 
     * @param scStudent 学生
     * @return 结果
     */
    public int updateScStudent(ScStudent scStudent);

    /**
     * 删除学生
     * 
     * @param id 学生主键
     * @return 结果
     */
    public int deleteScStudentById(Long id);

    /**
     * 批量删除学生
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteScStudentByIds(Long[] ids);
}
