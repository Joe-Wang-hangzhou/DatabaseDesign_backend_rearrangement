package com.joewang.sc_backend.web.controller;

import com.joewang.sc_backend.common.annotation.Log;
import com.joewang.sc_backend.common.core.controller.BaseController;
import com.joewang.sc_backend.common.core.domain.AjaxResult;
import com.joewang.sc_backend.common.core.page.TableDataInfo;
import com.joewang.sc_backend.common.enums.BusinessType;
import com.joewang.sc_backend.common.utils.poi.ExcelUtil;
import com.joewang.sc_backend.web.domain.ScTeaching;
import com.joewang.sc_backend.web.service.IScTeachingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * 授课Controller
 * 
 * @author 王超浩
 * @date 2026-01-14
 */
@RestController
@RequestMapping("/system/teachingofSc")
public class ScTeachingController extends BaseController
{
    @Autowired
    private IScTeachingService scTeachingService;

    /**
     * 查询授课列表
     */
    @GetMapping("/list")
    public TableDataInfo list(ScTeaching scTeaching)
    {
        startPage();
        List<ScTeaching> list = scTeachingService.selectScTeachingList(scTeaching);
        return getDataTable(list);
    }

    /**
     * 导出授课列表
     */
    @Log(title = "授课", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, ScTeaching scTeaching)
    {
        List<ScTeaching> list = scTeachingService.selectScTeachingList(scTeaching);
        ExcelUtil<ScTeaching> util = new ExcelUtil<ScTeaching>(ScTeaching.class);
        util.exportExcel(response, list, "授课数据");
    }

    /**
     * 获取授课详细信息
     */
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(scTeachingService.selectScTeachingById(id));
    }

    /**
     * 新增授课
     */
    @Log(title = "授课", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody ScTeaching scTeaching)
    {
        return toAjax(scTeachingService.insertScTeaching(scTeaching));
    }

    /**
     * 修改授课
     */
    @Log(title = "授课", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody ScTeaching scTeaching)
    {
        return toAjax(scTeachingService.updateScTeaching(scTeaching));
    }

    /**
     * 删除授课
     */
    @Log(title = "授课", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(scTeachingService.deleteScTeachingByIds(ids));
    }
}
