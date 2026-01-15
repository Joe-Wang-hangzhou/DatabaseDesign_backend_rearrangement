package com.joewang.sc_backend.system.service.impl;

import com.joewang.sc_backend.system.service.ISqlConsoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * SQL����̨ ҵ��㴦��
 * 
 * @author ruoyi
 */
@Service
public class SqlConsoleServiceImpl implements ISqlConsoleService
{
    @Autowired
    private JdbcTemplate jdbcTemplate;

    /**
     * ִ��SQL���
     */
    @Override
    public List<Map<String, Object>> executeSql(String sql)
    {
        return jdbcTemplate.queryForList(sql);
    }
}
