package com.joewang.sc_backend.web.controller;

import com.joewang.sc_backend.common.annotation.Log;
import com.joewang.sc_backend.common.core.controller.BaseController;
import com.joewang.sc_backend.common.core.domain.AjaxResult;
import com.joewang.sc_backend.common.core.page.TableDataInfo;
import com.joewang.sc_backend.common.enums.BusinessType;
import com.joewang.sc_backend.common.utils.poi.ExcelUtil;
import com.joewang.sc_backend.system.domain.ScCourse;
import com.joewang.sc_backend.system.service.IScCourseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * 课程Controller
 * 
 * @author 王超浩 
 * @date 2026-01-14
 */
@RestController
@RequestMapping("/system/courseofSc")
public class ScCourseController extends BaseController
{
    @Autowired
    private IScCourseService scCourseService;

    /**
     * 查询课程列表
     */
    @PreAuthorize("@ss.hasPermi('system:courseofSc:list')")
    @GetMapping("/list")
    public TableDataInfo list(ScCourse scCourse)
    {
        startPage();
        List<ScCourse> list = scCourseService.selectScCourseList(scCourse);
        return getDataTable(list);
    }

    /**
     * 导出课程列表
     */
    @PreAuthorize("@ss.hasPermi('system:courseofSc:export')")
    @Log(title = "课程", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, ScCourse scCourse)
    {
        List<ScCourse> list = scCourseService.selectScCourseList(scCourse);
        ExcelUtil<ScCourse> util = new ExcelUtil<ScCourse>(ScCourse.class);
        util.exportExcel(response, list, "课程数据");
    }

    /**
     * 获取课程详细信息
     */
    @PreAuthorize("@ss.hasPermi('system:courseofSc:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(scCourseService.selectScCourseById(id));
    }

    /**
     * 新增课程
     */
    @PreAuthorize("@ss.hasPermi('system:courseofSc:add')")
    @Log(title = "课程", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody ScCourse scCourse)
    {
        return toAjax(scCourseService.insertScCourse(scCourse));
    }

    /**
     * 修改课程
     */
    @PreAuthorize("@ss.hasPermi('system:courseofSc:edit')")
    @Log(title = "课程", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody ScCourse scCourse)
    {
        return toAjax(scCourseService.updateScCourse(scCourse));
    }

    /**
     * 删除课程
     */
    @PreAuthorize("@ss.hasPermi('system:courseofSc:remove')")
    @Log(title = "课程", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(scCourseService.deleteScCourseByIds(ids));
    }
}
