package com.joewang.sc_backend.web.controller;

import com.joewang.sc_backend.common.annotation.Log;
import com.joewang.sc_backend.common.core.controller.BaseController;
import com.joewang.sc_backend.common.core.domain.AjaxResult;
import com.joewang.sc_backend.common.core.page.TableDataInfo;
import com.joewang.sc_backend.common.enums.BusinessType;
import com.joewang.sc_backend.common.utils.poi.ExcelUtil;
import com.joewang.sc_backend.system.domain.ScCollege;
import com.joewang.sc_backend.system.service.IScCollegeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * 学院Controller
 * 
 * @author 王超浩
 * @date 2026-01-14
 */
@RestController
@RequestMapping("/system/collegeofSc")
public class ScCollegeController extends BaseController
{
    @Autowired
    private IScCollegeService scCollegeService;

    /**
     * 查询学院列表
     */
    @PreAuthorize("@ss.hasPermi('system:collegeofSc:list')")
    @GetMapping("/list")
    public TableDataInfo list(ScCollege scCollege)
    {
        startPage();
        List<ScCollege> list = scCollegeService.selectScCollegeList(scCollege);
        return getDataTable(list);
    }

    /**
     * 导出学院列表
     */
    @PreAuthorize("@ss.hasPermi('system:collegeofSc:export')")
    @Log(title = "学院", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, ScCollege scCollege)
    {
        List<ScCollege> list = scCollegeService.selectScCollegeList(scCollege);
        ExcelUtil<ScCollege> util = new ExcelUtil<ScCollege>(ScCollege.class);
        util.exportExcel(response, list, "学院数据");
    }

    /**
     * 获取学院详细信息
     */
    @PreAuthorize("@ss.hasPermi('system:collegeofSc:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(scCollegeService.selectScCollegeById(id));
    }

    /**
     * 新增学院
     */
    @PreAuthorize("@ss.hasPermi('system:collegeofSc:add')")
    @Log(title = "学院", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody ScCollege scCollege)
    {
        return toAjax(scCollegeService.insertScCollege(scCollege));
    }

    /**
     * 修改学院
     */
    @PreAuthorize("@ss.hasPermi('system:collegeofSc:edit')")
    @Log(title = "学院", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody ScCollege scCollege)
    {
        return toAjax(scCollegeService.updateScCollege(scCollege));
    }

    /**
     * 删除学院
     */
    @PreAuthorize("@ss.hasPermi('system:collegeofSc:remove')")
    @Log(title = "学院", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(scCollegeService.deleteScCollegeByIds(ids));
    }
}
