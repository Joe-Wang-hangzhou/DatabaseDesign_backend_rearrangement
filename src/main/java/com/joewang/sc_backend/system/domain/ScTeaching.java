package com.joewang.sc_backend.system.domain;

import com.joewang.sc_backend.common.annotation.Excel;
import com.joewang.sc_backend.common.core.domain.BaseEntity;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

/**
 * 授课对象 sc_teaching
 * 
 * @author 王超浩
 * @date 2026-01-14
 */
public class ScTeaching extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 授课ID */
    private Long id;

    /** 教师ID */
    @Excel(name = "教师ID")
    private Long teacherId;

    /** 课程ID */
    @Excel(name = "课程ID")
    private Long courseId;

    /** 学期 */
    @Excel(name = "学期")
    private String semester;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }

    public void setTeacherId(Long teacherId) 
    {
        this.teacherId = teacherId;
    }

    public Long getTeacherId() 
    {
        return teacherId;
    }

    public void setCourseId(Long courseId) 
    {
        this.courseId = courseId;
    }

    public Long getCourseId() 
    {
        return courseId;
    }

    public void setSemester(String semester) 
    {
        this.semester = semester;
    }

    public String getSemester() 
    {
        return semester;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("teacherId", getTeacherId())
            .append("courseId", getCourseId())
            .append("semester", getSemester())
            .toString();
    }
}
