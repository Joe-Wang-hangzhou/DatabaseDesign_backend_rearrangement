package com.joewang.sc_backend.web.controller.system;

import com.joewang.sc_backend.common.core.controller.BaseController;
import com.joewang.sc_backend.common.core.domain.AjaxResult;
import com.joewang.sc_backend.system.service.ISqlConsoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Map;

/**
 * SQL����̨Controller
 * 
 * @author ruoyi
 */
@RestController
@RequestMapping("/system/sqlConsole")
public class SqlConsoleController extends BaseController
{
    @Autowired
    private ISqlConsoleService sqlConsoleService;

    /**
     * ִ��SQL���
     */
    @PostMapping("/execute")
    public AjaxResult execute(@RequestBody Map<String, String> request)
    {
        String sql = request.get("sql");
        List<Map<String, Object>> result = sqlConsoleService.executeSql(sql);
        return AjaxResult.success("�����ɹ�", result);
    }
}
