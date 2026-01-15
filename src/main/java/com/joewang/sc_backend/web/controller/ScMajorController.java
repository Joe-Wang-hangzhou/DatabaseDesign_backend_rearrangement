package com.joewang.sc_backend.web.controller;

import com.joewang.sc_backend.common.annotation.Log;
import com.joewang.sc_backend.common.core.controller.BaseController;
import com.joewang.sc_backend.common.core.domain.AjaxResult;
import com.joewang.sc_backend.common.core.page.TableDataInfo;
import com.joewang.sc_backend.common.enums.BusinessType;
import com.joewang.sc_backend.common.utils.poi.ExcelUtil;
import com.joewang.sc_backend.system.domain.ScMajor;
import com.joewang.sc_backend.system.service.IScMajorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * 专业Controller
 * 
 * @author 王超浩 
 * @date 2026-01-14
 */
@RestController
@RequestMapping("/system/majorofSc")
public class ScMajorController extends BaseController
{
    @Autowired
    private IScMajorService scMajorService;

    /**
     * 查询专业列表
     */
    @PreAuthorize("@ss.hasPermi('system:majorofSc:list')")
    @GetMapping("/list")
    public TableDataInfo list(ScMajor scMajor)
    {
        startPage();
        List<ScMajor> list = scMajorService.selectScMajorList(scMajor);
        return getDataTable(list);
    }

    /**
     * 导出专业列表
     */
    @PreAuthorize("@ss.hasPermi('system:majorofSc:export')")
    @Log(title = "专业", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, ScMajor scMajor)
    {
        List<ScMajor> list = scMajorService.selectScMajorList(scMajor);
        ExcelUtil<ScMajor> util = new ExcelUtil<ScMajor>(ScMajor.class);
        util.exportExcel(response, list, "专业数据");
    }

    /**
     * 获取专业详细信息
     */
    @PreAuthorize("@ss.hasPermi('system:majorofSc:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(scMajorService.selectScMajorById(id));
    }

    /**
     * 新增专业
     */
    @PreAuthorize("@ss.hasPermi('system:majorofSc:add')")
    @Log(title = "专业", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody ScMajor scMajor)
    {
        return toAjax(scMajorService.insertScMajor(scMajor));
    }

    /**
     * 修改专业
     */
    @PreAuthorize("@ss.hasPermi('system:majorofSc:edit')")
    @Log(title = "专业", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody ScMajor scMajor)
    {
        return toAjax(scMajorService.updateScMajor(scMajor));
    }

    /**
     * 删除专业
     */
    @PreAuthorize("@ss.hasPermi('system:majorofSc:remove')")
    @Log(title = "专业", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(scMajorService.deleteScMajorByIds(ids));
    }
}
