package com.joewang.sc_backend.web.domain;

import com.joewang.sc_backend.common.annotation.Excel;
import com.joewang.sc_backend.common.core.domain.BaseEntity;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import java.math.BigDecimal;

/**
 * 课程对象 sc_course
 * 
 * @author 王超浩 
 * @date 2026-01-14
 */
public class ScCourse extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 课程ID */
    private Long id;

    /** 课程编号 */
    @Excel(name = "课程编号")
    private String courseNo;

    /** 课程名称 */
    @Excel(name = "课程名称")
    private String name;

    /** 学分 */
    @Excel(name = "学分")
    private BigDecimal credit;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }

    public void setCourseNo(String courseNo) 
    {
        this.courseNo = courseNo;
    }

    public String getCourseNo() 
    {
        return courseNo;
    }

    public void setName(String name) 
    {
        this.name = name;
    }

    public String getName() 
    {
        return name;
    }

    public void setCredit(BigDecimal credit) 
    {
        this.credit = credit;
    }

    public BigDecimal getCredit() 
    {
        return credit;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("courseNo", getCourseNo())
            .append("name", getName())
            .append("credit", getCredit())
            .toString();
    }
}
