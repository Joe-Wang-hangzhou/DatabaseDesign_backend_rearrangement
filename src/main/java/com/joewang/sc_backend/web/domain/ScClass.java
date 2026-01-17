package com.joewang.sc_backend.web.domain;

import com.joewang.sc_backend.common.annotation.Excel;
import com.joewang.sc_backend.common.core.domain.BaseEntity;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

/**
 * 班级对象 sc_class
 * 
 * @author 王超浩 
 * @date 2026-01-14
 */
public class ScClass extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 班级ID */
    private Long id;

    /** 班级名称 */
    @Excel(name = "班级名称")
    private String name;

    /** 所属专业 */
    @Excel(name = "所属专业")
    private Long majorId;

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

    public void setMajorId(Long majorId) 
    {
        this.majorId = majorId;
    }

    public Long getMajorId() 
    {
        return majorId;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("name", getName())
            .append("majorId", getMajorId())
            .toString();
    }
}
