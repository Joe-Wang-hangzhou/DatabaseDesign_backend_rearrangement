package com.joewang.sc_backend.web.controller;

import com.joewang.sc_backend.common.annotation.Log;
import com.joewang.sc_backend.common.core.controller.BaseController;
import com.joewang.sc_backend.common.core.domain.AjaxResult;
import com.joewang.sc_backend.common.core.page.TableDataInfo;
import com.joewang.sc_backend.common.enums.BusinessType;
import com.joewang.sc_backend.common.utils.poi.ExcelUtil;
import com.joewang.sc_backend.system.domain.ScScore;
import com.joewang.sc_backend.system.service.IScScoreService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * 成绩Controller
 * 
 * @author 王超浩
 * @date 2026-01-14
 */
@RestController
@RequestMapping("/system/scoreofSC")
public class ScScoreController extends BaseController
{
    @Autowired
    private IScScoreService scScoreService;

    /**
     * 查询成绩列表
     */
    @PreAuthorize("@ss.hasPermi('system:scoreofSC:list')")
    @GetMapping("/list")
    public TableDataInfo list(ScScore scScore)
    {
        startPage();
        List<ScScore> list = scScoreService.selectScScoreList(scScore);
        return getDataTable(list);
    }

    /**
     * 导出成绩列表
     */
    @PreAuthorize("@ss.hasPermi('system:scoreofSC:export')")
    @Log(title = "成绩", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, ScScore scScore)
    {
        List<ScScore> list = scScoreService.selectScScoreList(scScore);
        ExcelUtil<ScScore> util = new ExcelUtil<ScScore>(ScScore.class);
        util.exportExcel(response, list, "成绩数据");
    }

    /**
     * 获取成绩详细信息
     */
    @PreAuthorize("@ss.hasPermi('system:scoreofSC:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(scScoreService.selectScScoreById(id));
    }

    /**
     * 新增成绩
     */
    @PreAuthorize("@ss.hasPermi('system:scoreofSC:add')")
    @Log(title = "成绩", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody ScScore scScore)
    {
        return toAjax(scScoreService.insertScScore(scScore));
    }

    /**
     * 修改成绩
     */
    @PreAuthorize("@ss.hasPermi('system:scoreofSC:edit')")
    @Log(title = "成绩", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody ScScore scScore)
    {
        return toAjax(scScoreService.updateScScore(scScore));
    }

    /**
     * 删除成绩
     */
    @PreAuthorize("@ss.hasPermi('system:scoreofSC:remove')")
    @Log(title = "成绩", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(scScoreService.deleteScScoreByIds(ids));
    }
}
