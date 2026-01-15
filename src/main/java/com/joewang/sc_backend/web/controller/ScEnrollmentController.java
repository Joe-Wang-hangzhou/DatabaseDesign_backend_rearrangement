package com.joewang.sc_backend.web.controller;

import com.joewang.sc_backend.common.annotation.Log;
import com.joewang.sc_backend.common.core.controller.BaseController;
import com.joewang.sc_backend.common.core.domain.AjaxResult;
import com.joewang.sc_backend.common.core.page.TableDataInfo;
import com.joewang.sc_backend.common.enums.BusinessType;
import com.joewang.sc_backend.common.utils.poi.ExcelUtil;
import com.joewang.sc_backend.system.domain.ScEnrollment;
import com.joewang.sc_backend.system.service.IScEnrollmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * 选课Controller
 * 
 * @author 王超浩 
 * @date 2026-01-14
 */
@RestController
@RequestMapping("/system/enrollmentofSc")
public class ScEnrollmentController extends BaseController
{
    @Autowired
    private IScEnrollmentService scEnrollmentService;

    /**
     * 查询选课列表
     */
    @GetMapping("/list")
    public TableDataInfo list(ScEnrollment scEnrollment)
    {
        startPage();
        List<ScEnrollment> list = scEnrollmentService.selectScEnrollmentList(scEnrollment);
        return getDataTable(list);
    }

    /**
     * 导出选课列表
     */
    @Log(title = "选课", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, ScEnrollment scEnrollment)
    {
        List<ScEnrollment> list = scEnrollmentService.selectScEnrollmentList(scEnrollment);
        ExcelUtil<ScEnrollment> util = new ExcelUtil<ScEnrollment>(ScEnrollment.class);
        util.exportExcel(response, list, "选课数据");
    }

    /**
     * 获取选课详细信息
     */
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(scEnrollmentService.selectScEnrollmentById(id));
    }

    /**
     * 新增选课
     */
    @Log(title = "选课", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody ScEnrollment scEnrollment)
    {
        return toAjax(scEnrollmentService.insertScEnrollment(scEnrollment));
    }

    /**
     * 修改选课
     */
    @Log(title = "选课", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody ScEnrollment scEnrollment)
    {
        return toAjax(scEnrollmentService.updateScEnrollment(scEnrollment));
    }

    /**
     * 删除选课
     */
    @Log(title = "选课", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(scEnrollmentService.deleteScEnrollmentByIds(ids));
    }
}
