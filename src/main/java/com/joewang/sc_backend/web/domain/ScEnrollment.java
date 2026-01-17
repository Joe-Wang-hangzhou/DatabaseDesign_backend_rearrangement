package com.joewang.sc_backend.web.domain;

import com.joewang.sc_backend.common.annotation.Excel;
import com.joewang.sc_backend.common.core.domain.BaseEntity;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

/**
 * 选课对象 sc_enrollment
 * 
 * @author 王超浩 
 * @date 2026-01-14
 */
public class ScEnrollment extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 选课ID */
    private Long id;

    /** 学生ID */
    @Excel(name = "学生ID")
    private Long studentId;

    /** 授课ID */
    @Excel(name = "授课ID")
    private Long teachingId;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }

    public void setStudentId(Long studentId) 
    {
        this.studentId = studentId;
    }

    public Long getStudentId() 
    {
        return studentId;
    }

    public void setTeachingId(Long teachingId) 
    {
        this.teachingId = teachingId;
    }

    public Long getTeachingId() 
    {
        return teachingId;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("studentId", getStudentId())
            .append("teachingId", getTeachingId())
            .toString();
    }
}
