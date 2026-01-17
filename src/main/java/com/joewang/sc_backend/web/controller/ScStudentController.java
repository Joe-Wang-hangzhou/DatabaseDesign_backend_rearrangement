package com.joewang.sc_backend.web.controller;

import com.joewang.sc_backend.common.annotation.Log;
import com.joewang.sc_backend.common.core.controller.BaseController;
import com.joewang.sc_backend.common.core.domain.AjaxResult;
import com.joewang.sc_backend.common.core.page.TableDataInfo;
import com.joewang.sc_backend.common.enums.BusinessType;
import com.joewang.sc_backend.common.utils.poi.ExcelUtil;
import com.joewang.sc_backend.web.domain.ScStudent;
import com.joewang.sc_backend.web.service.IScStudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * 学生Controller
 * 
 * @author 王超浩
 * @date 2026-01-14
 */
@RestController
@RequestMapping("/system/studentofSc")
public class ScStudentController extends BaseController
{
    @Autowired
    private IScStudentService scStudentService;

    /**
     * 查询学生列表
     */
    @GetMapping("/list")
    public TableDataInfo list(ScStudent scStudent)
    {
        startPage();
        List<ScStudent> list = scStudentService.selectScStudentList(scStudent);
        return getDataTable(list);
    }

    /**
     * 导出学生列表
     */
    @Log(title = "学生", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, ScStudent scStudent)
    {
        List<ScStudent> list = scStudentService.selectScStudentList(scStudent);
        ExcelUtil<ScStudent> util = new ExcelUtil<ScStudent>(ScStudent.class);
        util.exportExcel(response, list, "学生数据");
    }

    /**
     * 获取学生详细信息
     */
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(scStudentService.selectScStudentById(id));
    }

    /**
     * 新增学生
     */
    @Log(title = "学生", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody ScStudent scStudent)
    {
        return toAjax(scStudentService.insertScStudent(scStudent));
    }

    /**
     * 修改学生
     */
    @Log(title = "学生", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody ScStudent scStudent)
    {
        return toAjax(scStudentService.updateScStudent(scStudent));
    }

    /**
     * 删除学生
     */
    @Log(title = "学生", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(scStudentService.deleteScStudentByIds(ids));
    }
}
