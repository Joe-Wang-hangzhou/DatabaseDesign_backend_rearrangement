package com.joewang.sc_backend.web.controller;

import com.joewang.sc_backend.common.annotation.Log;
import com.joewang.sc_backend.common.core.controller.BaseController;
import com.joewang.sc_backend.common.core.domain.AjaxResult;
import com.joewang.sc_backend.common.core.page.TableDataInfo;
import com.joewang.sc_backend.common.enums.BusinessType;
import com.joewang.sc_backend.common.utils.poi.ExcelUtil;
import com.joewang.sc_backend.system.domain.ScAdmin;
import com.joewang.sc_backend.system.service.IScAdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * 管理员Controller
 * 
 * @author 王超浩
 * @date 2026-01-14
 */
@RestController
@RequestMapping("/system/adminofSc")
public class ScAdminController extends BaseController
{
    @Autowired
    private IScAdminService scAdminService;

    /**
     * 查询管理员列表
     */
    @GetMapping("/list")
    public TableDataInfo list(ScAdmin scAdmin)
    {
        startPage();
        List<ScAdmin> list = scAdminService.selectScAdminList(scAdmin);
        return getDataTable(list);
    }

    /**
     * 导出管理员列表
     */
    @Log(title = "管理员", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, ScAdmin scAdmin)
    {
        List<ScAdmin> list = scAdminService.selectScAdminList(scAdmin);
        ExcelUtil<ScAdmin> util = new ExcelUtil<ScAdmin>(ScAdmin.class);
        util.exportExcel(response, list, "管理员数据");
    }

    /**
     * 获取管理员详细信息
     */
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(scAdminService.selectScAdminById(id));
    }

    /**
     * 新增管理员
     */
    @Log(title = "管理员", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody ScAdmin scAdmin)
    {
        return toAjax(scAdminService.insertScAdmin(scAdmin));
    }

    /**
     * 修改管理员
     */
    @Log(title = "管理员", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody ScAdmin scAdmin)
    {
        return toAjax(scAdminService.updateScAdmin(scAdmin));
    }

    /**
     * 删除管理员
     */
    @Log(title = "管理员", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(scAdminService.deleteScAdminByIds(ids));
    }
}
