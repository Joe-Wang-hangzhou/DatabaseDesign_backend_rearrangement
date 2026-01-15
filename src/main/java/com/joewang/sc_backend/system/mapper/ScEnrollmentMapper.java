package com.joewang.sc_backend.system.mapper;

import com.joewang.sc_backend.system.domain.ScEnrollment;

import java.util.List;

/**
 * 选课Mapper接口
 * 
 * @author 王超浩 
 * @date 2026-01-14
 */
public interface ScEnrollmentMapper 
{
    /**
     * 查询选课
     * 
     * @param id 选课主键
     * @return 选课
     */
    public ScEnrollment selectScEnrollmentById(Long id);

    /**
     * 查询选课列表
     * 
     * @param scEnrollment 选课
     * @return 选课集合
     */
    public List<ScEnrollment> selectScEnrollmentList(ScEnrollment scEnrollment);

    /**
     * 新增选课
     * 
     * @param scEnrollment 选课
     * @return 结果
     */
    public int insertScEnrollment(ScEnrollment scEnrollment);

    /**
     * 修改选课
     * 
     * @param scEnrollment 选课
     * @return 结果
     */
    public int updateScEnrollment(ScEnrollment scEnrollment);

    /**
     * 删除选课
     * 
     * @param id 选课主键
     * @return 结果
     */
    public int deleteScEnrollmentById(Long id);

    /**
     * 批量删除选课
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteScEnrollmentByIds(Long[] ids);
}
