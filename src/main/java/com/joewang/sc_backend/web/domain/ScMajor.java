package com.joewang.sc_backend.web.domain;

import com.joewang.sc_backend.common.annotation.Excel;
import com.joewang.sc_backend.common.core.domain.BaseEntity;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

/**
 * 专业对象 sc_major
 * 
 * @author 王超浩 
 * @date 2026-01-14
 */
public class ScMajor extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 专业ID */
    private Long id;

    /** 专业名称 */
    @Excel(name = "专业名称")
    private String name;

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

    public void setName(String name) 
    {
        this.name = name;
    }

    public String getName() 
    {
        return name;
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
            .append("name", getName())
            .append("collegeId", getCollegeId())
            .toString();
    }
}
