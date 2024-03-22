package com.ruoyi.web.controller.maple;

import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.core.page.TableDataInfo;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.maple.domain.StatusLog;
import com.ruoyi.maple.service.IStatusLogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * 状态日志Controller
 * 
 * @author maple
 * @date 2024-01-07
 */
@RestController
@RequestMapping("/maple/statusLog")
public class StatusLogController extends BaseController
{
    @Autowired
    private IStatusLogService statusLogService;

    /**
     * 查询状态日志列表
     */
    @PreAuthorize("@ss.hasPermi('maple:statusLog:list')")
    @GetMapping("/list")
    public TableDataInfo list(StatusLog statusLog)
    {
        startPage();
        List<StatusLog> list = statusLogService.selectStatusLogList(statusLog);
        return getDataTable(list);
    }

    /**
     * 导出状态日志列表
     */
    @PreAuthorize("@ss.hasPermi('maple:statusLog:export')")
    @Log(title = "状态日志", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, StatusLog statusLog)
    {
        List<StatusLog> list = statusLogService.selectStatusLogList(statusLog);
        ExcelUtil<StatusLog> util = new ExcelUtil<StatusLog>(StatusLog.class);
        util.exportExcel(response, list, "状态日志数据");
    }

    /**
     * 获取状态日志详细信息
     */
    @PreAuthorize("@ss.hasPermi('maple:statusLog:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(statusLogService.selectStatusLogById(id));
    }

    /**
     * 新增状态日志
     */
    @PreAuthorize("@ss.hasPermi('maple:statusLog:add')")
    @Log(title = "状态日志", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody StatusLog statusLog)
    {
        return toAjax(statusLogService.insertStatusLog(statusLog));
    }

    /**
     * 修改状态日志
     */
    @PreAuthorize("@ss.hasPermi('maple:statusLog:edit')")
    @Log(title = "状态日志", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody StatusLog statusLog)
    {
        return toAjax(statusLogService.updateStatusLog(statusLog));
    }

    /**
     * 删除状态日志
     */
    @PreAuthorize("@ss.hasPermi('maple:statusLog:remove')")
    @Log(title = "状态日志", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(statusLogService.deleteStatusLogByIds(ids));
    }
}
