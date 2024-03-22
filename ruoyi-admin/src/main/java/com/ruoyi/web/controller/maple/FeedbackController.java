package com.ruoyi.web.controller.maple;

import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.core.page.TableDataInfo;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.maple.domain.Feedback;
import com.ruoyi.maple.service.IFeedbackService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * 反馈中心Controller
 * 
 * @author maple
 * @date 2024-01-07
 */
@RestController
@RequestMapping("/maple/feedback")
public class FeedbackController extends BaseController
{
    @Autowired
    private IFeedbackService feedbackService;

    /**
     * 查询反馈中心列表
     */
    @PreAuthorize("@ss.hasPermi('maple:feedback:list')")
    @GetMapping("/list")
    public TableDataInfo list(Feedback feedback)
    {
        startPage();
        List<Feedback> list = feedbackService.selectFeedbackList(feedback);
        return getDataTable(list);
    }

    /**
     * 导出反馈中心列表
     */
    @PreAuthorize("@ss.hasPermi('maple:feedback:export')")
    @Log(title = "反馈中心", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, Feedback feedback)
    {
        List<Feedback> list = feedbackService.selectFeedbackList(feedback);
        ExcelUtil<Feedback> util = new ExcelUtil<Feedback>(Feedback.class);
        util.exportExcel(response, list, "反馈中心数据");
    }

    /**
     * 获取反馈中心详细信息
     */
    @PreAuthorize("@ss.hasPermi('maple:feedback:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(feedbackService.selectFeedbackById(id));
    }

    /**
     * 新增反馈中心
     */
    @PreAuthorize("@ss.hasPermi('maple:feedback:add')")
    @Log(title = "反馈中心", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody Feedback feedback)
    {
        feedback.setCreateId(getUserId());
        return toAjax(feedbackService.insertFeedback(feedback));
    }

    /**
     * 修改反馈中心
     */
    @PreAuthorize("@ss.hasPermi('maple:feedback:edit')")
    @Log(title = "反馈中心", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody Feedback feedback)
    {
        return toAjax(feedbackService.updateFeedback(feedback));
    }

    /**
     * 删除反馈中心
     */
    @PreAuthorize("@ss.hasPermi('maple:feedback:remove')")
    @Log(title = "反馈中心", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(feedbackService.deleteFeedbackByIds(ids));
    }
}
