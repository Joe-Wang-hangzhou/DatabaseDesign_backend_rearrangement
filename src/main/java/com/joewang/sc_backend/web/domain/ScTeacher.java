package com.joewang.sc_backend.web.domain;

import com.joewang.sc_backend.common.annotation.Excel;
import com.joewang.sc_backend.common.core.domain.BaseEntity;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

/**
 * 教师对象 sc_teacher
 * 
 * @author 王超浩
 * @date 2026-01-14
 */
public class ScTeacher extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 教师ID */
    private Long id;

    /** 工号 */
    @Excel(name = "工号")
    private String teacherNo;

    /** 姓名 */
    @Excel(name = "姓名")
    private String name;

    /** 职称 */
    @Excel(name = "职称")
    private String title;

    /** 所属学院 */
    @Excel(name = "所属学院")
    private Long collegeId;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }

    public void setTeacherNo(String teacherNo) 
    {
        this.teacherNo = teacherNo;
    }

    public String getTeacherNo() 
    {
        return teacherNo;
    }

    public void setName(String name) 
    {
        this.name = name;
    }

    public String getName() 
    {
        return name;
    }

    public void setTitle(String title) 
    {
        this.title = title;
    }

    public String getTitle() 
    {
        return title;
    }

    public void setCollegeId(Long collegeId) 
    {
        this.collegeId = collegeId;
    }

    public Long getCollegeId() 
    {
        return collegeId;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("teacherNo", getTeacherNo())
            .append("name", getName())
            .append("title", getTitle())
            .append("collegeId", getCollegeId())
            .toString();
    }
}
