package com.joewang.sc_backend.common.exception.user;

import com.joewang.sc_backend.common.exception.base.BaseException;

/**
 * 用户信息异常类
 * 
 * @author 王超浩
 */
public class UserException extends BaseException
{
    private static final long serialVersionUID = 1L;

    public UserException(String code, Object[] args)
    {
        super("user", code, args, null);
    }
}
