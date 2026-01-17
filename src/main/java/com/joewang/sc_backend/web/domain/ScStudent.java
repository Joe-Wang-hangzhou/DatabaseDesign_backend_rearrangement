package com.joewang.sc_backend.web.domain;

import com.joewang.sc_backend.common.annotation.Excel;
import com.joewang.sc_backend.common.core.domain.BaseEntity;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

/**
 * 学生对象 sc_student
 * 
 * @author 王超浩
 * @date 2026-01-14
 */
public class ScStudent extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 学生ID */
    private Long id;

    /** 学号 */
    @Excel(name = "学号")
    private String studentNo;

    /** 姓名 */
    @Excel(name = "姓名")
    private String name;

    /** 性别 */
    @Excel(name = "性别")
    private String gender;

    /** 所属班级 */
    @Excel(name = "所属班级")
    private Long classId;

    /** 入学年份 */
    @Excel(name = "入学年份")
    private String enrollmentYear;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }

    public void setStudentNo(String studentNo) 
    {
        this.studentNo = studentNo;
    }

    public String getStudentNo() 
    {
        return studentNo;
    }

    public void setName(String name) 
    {
        this.name = name;
    }

    public String getName() 
    {
        return name;
    }

    public void setGender(String gender) 
    {
        this.gender = gender;
    }

    public String getGender() 
    {
        return gender;
    }

    public void setClassId(Long classId) 
    {
        this.classId = classId;
    }

    public Long getClassId() 
    {
        return classId;
    }

    public void setEnrollmentYear(String enrollmentYear) 
    {
        this.enrollmentYear = enrollmentYear;
    }

    public String getEnrollmentYear() 
    {
        return enrollmentYear;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("studentNo", getStudentNo())
            .append("name", getName())
            .append("gender", getGender())
            .append("classId", getClassId())
            .append("enrollmentYear", getEnrollmentYear())
            .toString();
    }
}
