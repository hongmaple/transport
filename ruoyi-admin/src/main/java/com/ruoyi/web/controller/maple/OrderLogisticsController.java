package com.ruoyi.web.controller.maple;

import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.core.page.TableDataInfo;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.maple.domain.OrderLogistics;
import com.ruoyi.maple.service.IOrderLogisticsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * 订单物流Controller
 * 
 * @author maple
 * @date 2024-01-07
 */
@RestController
@RequestMapping("/maple/logistics")
public class OrderLogisticsController extends BaseController
{
    @Autowired
    private IOrderLogisticsService orderLogisticsService;

    /**
     * 查询订单物流列表
     */
    @PreAuthorize("@ss.hasPermi('maple:logistics:list')")
    @GetMapping("/list")
    public TableDataInfo list(OrderLogistics orderLogistics)
    {
        startPage();
        List<OrderLogistics> list = orderLogisticsService.selectOrderLogisticsList(orderLogistics);
        return getDataTable(list);
    }

    /**
     * 导出订单物流列表
     */
    @PreAuthorize("@ss.hasPermi('maple:logistics:export')")
    @Log(title = "订单物流", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, OrderLogistics orderLogistics)
    {
        List<OrderLogistics> list = orderLogisticsService.selectOrderLogisticsList(orderLogistics);
        ExcelUtil<OrderLogistics> util = new ExcelUtil<OrderLogistics>(OrderLogistics.class);
        util.exportExcel(response, list, "订单物流数据");
    }

    /**
     * 获取订单物流详细信息
     */
    @PreAuthorize("@ss.hasPermi('maple:logistics:query')")
    @GetMapping(value = "/{orederId}")
    public AjaxResult getInfo(@PathVariable("orederId") Long orederId)
    {
        return success(orderLogisticsService.selectOrderLogisticsByOrederId(orederId));
    }

    /**
     * 新增订单物流
     */
    @PreAuthorize("@ss.hasPermi('maple:logistics:add')")
    @Log(title = "订单物流", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody OrderLogistics orderLogistics)
    {
        return toAjax(orderLogisticsService.insertOrderLogistics(orderLogistics));
    }

    /**
     * 修改订单物流
     */
    @PreAuthorize("@ss.hasPermi('maple:logistics:edit')")
    @Log(title = "订单物流", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody OrderLogistics orderLogistics)
    {
        return toAjax(orderLogisticsService.updateOrderLogistics(orderLogistics));
    }

    /**
     * 删除订单物流
     */
    @PreAuthorize("@ss.hasPermi('maple:logistics:remove')")
    @Log(title = "订单物流", businessType = BusinessType.DELETE)
	@DeleteMapping("/{orederIds}")
    public AjaxResult remove(@PathVariable Long[] orederIds)
    {
        return toAjax(orderLogisticsService.deleteOrderLogisticsByOrederIds(orederIds));
    }
}
