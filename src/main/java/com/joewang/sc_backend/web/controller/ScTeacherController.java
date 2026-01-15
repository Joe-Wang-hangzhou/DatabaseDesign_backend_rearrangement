package com.joewang.sc_backend.web.controller;

import com.joewang.sc_backend.common.annotation.Log;
import com.joewang.sc_backend.common.core.controller.BaseController;
import com.joewang.sc_backend.common.core.domain.AjaxResult;
import com.joewang.sc_backend.common.core.page.TableDataInfo;
import com.joewang.sc_backend.common.enums.BusinessType;
import com.joewang.sc_backend.common.utils.poi.ExcelUtil;
import com.joewang.sc_backend.system.domain.ScTeacher;
import com.joewang.sc_backend.system.service.IScTeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * 教师Controller
 * 
 * @author 王超浩
 * @date 2026-01-14
 */
@RestController
@RequestMapping("/system/teacherofSc")
public class ScTeacherController extends BaseController
{
    @Autowired
    private IScTeacherService scTeacherService;

    /**
     * 查询教师列表
     */
    @PreAuthorize("@ss.hasPermi('system:teacherofSc:list')")
    @GetMapping("/list")
    public TableDataInfo list(ScTeacher scTeacher)
    {
        startPage();
        List<ScTeacher> list = scTeacherService.selectScTeacherList(scTeacher);
        return getDataTable(list);
    }

    /**
     * 导出教师列表
     */
    @PreAuthorize("@ss.hasPermi('system:teacherofSc:export')")
    @Log(title = "教师", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, ScTeacher scTeacher)
    {
        List<ScTeacher> list = scTeacherService.selectScTeacherList(scTeacher);
        ExcelUtil<ScTeacher> util = new ExcelUtil<ScTeacher>(ScTeacher.class);
        util.exportExcel(response, list, "教师数据");
    }

    /**
     * 获取教师详细信息
     */
    @PreAuthorize("@ss.hasPermi('system:teacherofSc:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(scTeacherService.selectScTeacherById(id));
    }

    /**
     * 新增教师
     */
    @PreAuthorize("@ss.hasPermi('system:teacherofSc:add')")
    @Log(title = "教师", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody ScTeacher scTeacher)
    {
        return toAjax(scTeacherService.insertScTeacher(scTeacher));
    }

    /**
     * 修改教师
     */
    @PreAuthorize("@ss.hasPermi('system:teacherofSc:edit')")
    @Log(title = "教师", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody ScTeacher scTeacher)
    {
        return toAjax(scTeacherService.updateScTeacher(scTeacher));
    }

    /**
     * 删除教师
     */
    @PreAuthorize("@ss.hasPermi('system:teacherofSc:remove')")
    @Log(title = "教师", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(scTeacherService.deleteScTeacherByIds(ids));
    }
}
