package com.joewang.sc_backend.system.service;

import java.util.List;
import java.util.Map;

/**
 * SQL����̨ ҵ���
 * 
 * @author ruoyi
 */
public interface ISqlConsoleService
{
    /**
     * ִ��SQL���
     * 
     * @param sql SQL���
     * @return ��ѯ���
     */
    public List<Map<String, Object>> executeSql(String sql);
}
