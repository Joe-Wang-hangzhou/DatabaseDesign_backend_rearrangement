package com.joewang.sc_backend.web.service;

import java.util.List;
import java.util.Map;

/**
 * SQL����̨ ҵ���
 * 
 * @author 王超浩
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
