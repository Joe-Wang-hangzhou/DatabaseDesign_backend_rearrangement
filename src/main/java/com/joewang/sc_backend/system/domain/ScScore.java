package com.joewang.sc_backend.system.domain;

import com.joewang.sc_backend.common.annotation.Excel;
import com.joewang.sc_backend.common.core.domain.BaseEntity;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import java.math.BigDecimal;

/**
 * 成绩对象 sc_score
 * 
 * @author 王超浩
 * @date 2026-01-14
 */
public class ScScore extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 成绩ID */
    private Long id;

    /** 选课ID */
    @Excel(name = "选课ID")
    private Long enrollmentId;

    /** 平时成绩 */
    @Excel(name = "平时成绩")
    private BigDecimal usualScore;

    /** 期中成绩 */
    @Excel(name = "期中成绩")
    private BigDecimal midScore;

    /** 期末成绩 */
    @Excel(name = "期末成绩")
    private BigDecimal finalScore;

    /** 总评成绩 */
    @Excel(name = "总评成绩")
    private BigDecimal totalScore;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }

    public void setEnrollmentId(Long enrollmentId) 
    {
        this.enrollmentId = enrollmentId;
    }

    public Long getEnrollmentId() 
    {
        return enrollmentId;
    }

    public void setUsualScore(BigDecimal usualScore) 
    {
        this.usualScore = usualScore;
    }

    public BigDecimal getUsualScore() 
    {
        return usualScore;
    }

    public void setMidScore(BigDecimal midScore) 
    {
        this.midScore = midScore;
    }

    public BigDecimal getMidScore() 
    {
        return midScore;
    }

    public void setFinalScore(BigDecimal finalScore) 
    {
        this.finalScore = finalScore;
    }

    public BigDecimal getFinalScore() 
    {
        return finalScore;
    }

    public void setTotalScore(BigDecimal totalScore) 
    {
        this.totalScore = totalScore;
    }

    public BigDecimal getTotalScore() 
    {
        return totalScore;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("enrollmentId", getEnrollmentId())
            .append("usualScore", getUsualScore())
            .append("midScore", getMidScore())
            .append("finalScore", getFinalScore())
            .append("totalScore", getTotalScore())
            .toString();
    }
}
