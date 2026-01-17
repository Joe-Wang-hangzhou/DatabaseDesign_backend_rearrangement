package com.joewang.sc_backend.web.domain;

import com.joewang.sc_backend.common.annotation.Excel;
import com.joewang.sc_backend.common.core.domain.BaseEntity;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

/**
 * 管理员对象 sc_admin
 * 
 * @author 王超浩
 * @date 2026-01-14
 */
public class ScAdmin extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 管理员ID */
    private Long id;

    /** 账号 */
    @Excel(name = "账号")
    private String username;

    /** 密码 */
    @Excel(name = "密码")
    private String password;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }

    public void setUsername(String username) 
    {
        this.username = username;
    }

    public String getUsername() 
    {
        return username;
    }

    public void setPassword(String password) 
    {
        this.password = password;
    }

    public String getPassword() 
    {
        return password;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("username", getUsername())
            .append("password", getPassword())
            .toString();
    }
}
