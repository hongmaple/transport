package com.ruoyi.web.controller.maple;

import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.core.page.TableDataInfo;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.maple.domain.Tutorial;
import com.ruoyi.maple.service.ITutorialService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * 教程中心Controller
 * 
 * @author maple
 * @date 2024-01-07
 */
@RestController
@RequestMapping("/maple/tutorial")
public class TutorialController extends BaseController
{
    @Autowired
    private ITutorialService tutorialService;

    /**
     * 查询教程中心列表
     */
   // @PreAuthorize("@ss.hasPermi('maple:tutorial:list')")
    @GetMapping("/list")
    public TableDataInfo list(Tutorial tutorial)
    {
        startPage();
        List<Tutorial> list = tutorialService.selectTutorialList(tutorial);
        return getDataTable(list);
    }

    /**
     * 导出教程中心列表
     */
    @PreAuthorize("@ss.hasPermi('maple:tutorial:export')")
    @Log(title = "教程中心", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, Tutorial tutorial)
    {
        List<Tutorial> list = tutorialService.selectTutorialList(tutorial);
        ExcelUtil<Tutorial> util = new ExcelUtil<Tutorial>(Tutorial.class);
        util.exportExcel(response, list, "教程中心数据");
    }

    /**
     * 获取教程中心详细信息
     */
    //@PreAuthorize("@ss.hasPermi('maple:tutorial:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(tutorialService.selectTutorialById(id));
    }

    /**
     * 新增教程中心
     */
    @PreAuthorize("@ss.hasPermi('maple:tutorial:add')")
    @Log(title = "教程中心", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody Tutorial tutorial)
    {
        return toAjax(tutorialService.insertTutorial(tutorial));
    }

    /**
     * 修改教程中心
     */
    @PreAuthorize("@ss.hasPermi('maple:tutorial:edit')")
    @Log(title = "教程中心", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody Tutorial tutorial)
    {
        return toAjax(tutorialService.updateTutorial(tutorial));
    }

    /**
     * 删除教程中心
     */
    @PreAuthorize("@ss.hasPermi('maple:tutorial:remove')")
    @Log(title = "教程中心", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(tutorialService.deleteTutorialByIds(ids));
    }
}
