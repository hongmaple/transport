package com.ruoyi.web.controller.maple;

import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.core.page.TableDataInfo;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.maple.domain.Help;
import com.ruoyi.maple.service.IHelpService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * 帮助中心Controller
 * 
 * @author maple
 * @date 2024-01-07
 */
@RestController
@RequestMapping("/maple/help")
public class HelpController extends BaseController
{
    @Autowired
    private IHelpService helpService;

    /**
     * 查询帮助中心列表
     */
    //@PreAuthorize("@ss.hasPermi('maple:help:list')")
    @GetMapping("/list")
    public TableDataInfo list(Help help)
    {
        startPage();
        List<Help> list = helpService.selectHelpList(help);
        return getDataTable(list);
    }

    /**
     * 导出帮助中心列表
     */
    @PreAuthorize("@ss.hasPermi('maple:help:export')")
    @Log(title = "帮助中心", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, Help help)
    {
        List<Help> list = helpService.selectHelpList(help);
        ExcelUtil<Help> util = new ExcelUtil<Help>(Help.class);
        util.exportExcel(response, list, "帮助中心数据");
    }

    /**
     * 获取帮助中心详细信息
     */
    //@PreAuthorize("@ss.hasPermi('maple:help:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(helpService.selectHelpById(id));
    }

    /**
     * 新增帮助中心
     */
    @PreAuthorize("@ss.hasPermi('maple:help:add')")
    @Log(title = "帮助中心", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody Help help)
    {
        return toAjax(helpService.insertHelp(help));
    }

    /**
     * 修改帮助中心
     */
    @PreAuthorize("@ss.hasPermi('maple:help:edit')")
    @Log(title = "帮助中心", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody Help help)
    {
        return toAjax(helpService.updateHelp(help));
    }

    /**
     * 删除帮助中心
     */
    @PreAuthorize("@ss.hasPermi('maple:help:remove')")
    @Log(title = "帮助中心", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(helpService.deleteHelpByIds(ids));
    }
}
