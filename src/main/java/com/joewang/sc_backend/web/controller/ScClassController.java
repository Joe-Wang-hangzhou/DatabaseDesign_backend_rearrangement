package com.joewang.sc_backend.web.controller;

import com.joewang.sc_backend.common.annotation.Log;
import com.joewang.sc_backend.common.core.controller.BaseController;
import com.joewang.sc_backend.common.core.domain.AjaxResult;
import com.joewang.sc_backend.common.core.page.TableDataInfo;
import com.joewang.sc_backend.common.enums.BusinessType;
import com.joewang.sc_backend.common.utils.poi.ExcelUtil;
import com.joewang.sc_backend.system.domain.ScClass;
import com.joewang.sc_backend.system.service.IScClassService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * 班级Controller
 * 
 * @author 王超浩 
 * @date 2026-01-14
 */
@RestController
@RequestMapping("/system/classofSc")
public class ScClassController extends BaseController
{
    @Autowired
    private IScClassService scClassService;

    /**
     * 查询班级列表
     */
    @GetMapping("/list")
    public TableDataInfo list(ScClass scClass)
    {
        startPage();
        List<ScClass> list = scClassService.selectScClassList(scClass);
        return getDataTable(list);
    }

    /**
     * 导出班级列表
     */
    @Log(title = "班级", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, ScClass scClass)
    {
        List<ScClass> list = scClassService.selectScClassList(scClass);
        ExcelUtil<ScClass> util = new ExcelUtil<ScClass>(ScClass.class);
        util.exportExcel(response, list, "班级数据");
    }

    /**
     * 获取班级详细信息
     */
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(scClassService.selectScClassById(id));
    }

    /**
     * 新增班级
     */
    @Log(title = "班级", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody ScClass scClass)
    {
        return toAjax(scClassService.insertScClass(scClass));
    }

    /**
     * 修改班级
     */
    @Log(title = "班级", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody ScClass scClass)
    {
        return toAjax(scClassService.updateScClass(scClass));
    }

    /**
     * 删除班级
     */
    @Log(title = "班级", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(scClassService.deleteScClassByIds(ids));
    }
}
