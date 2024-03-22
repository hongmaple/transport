package com.ruoyi.web.controller.maple;

import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.core.page.TableDataInfo;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.maple.domain.OrderDetails;
import com.ruoyi.maple.service.IOrderDetailsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * 订单详情Controller
 * 
 * @author maple
 * @date 2024-01-07
 */
@RestController
@RequestMapping("/maple/orederDetails")
public class OrderDetailsController extends BaseController
{
    @Autowired
    private IOrderDetailsService orderDetailsService;

    /**
     * 查询订单详情列表
     */
    @PreAuthorize("@ss.hasPermi('maple:orederDetails:list')")
    @GetMapping("/list")
    public TableDataInfo list(OrderDetails orderDetails)
    {
        startPage();
        List<OrderDetails> list = orderDetailsService.selectOrderDetailsList(orderDetails);
        return getDataTable(list);
    }

    /**
     * 导出订单详情列表
     */
    @PreAuthorize("@ss.hasPermi('maple:orederDetails:export')")
    @Log(title = "订单详情", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, OrderDetails orderDetails)
    {
        List<OrderDetails> list = orderDetailsService.selectOrderDetailsList(orderDetails);
        ExcelUtil<OrderDetails> util = new ExcelUtil<OrderDetails>(OrderDetails.class);
        util.exportExcel(response, list, "订单详情数据");
    }

    /**
     * 获取订单详情详细信息
     */
    @PreAuthorize("@ss.hasPermi('maple:orederDetails:query')")
    @GetMapping(value = "/{orderId}")
    public AjaxResult getInfo(@PathVariable("orderId") Long orderId)
    {
        return success(orderDetailsService.selectOrderDetailsByOrderId(orderId));
    }

    /**
     * 新增订单详情
     */
    @PreAuthorize("@ss.hasPermi('maple:orederDetails:add')")
    @Log(title = "订单详情", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody OrderDetails orderDetails)
    {
        return toAjax(orderDetailsService.insertOrderDetails(orderDetails));
    }

    /**
     * 修改订单详情
     */
    @PreAuthorize("@ss.hasPermi('maple:orederDetails:edit')")
    @Log(title = "订单详情", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody OrderDetails orderDetails)
    {
        return toAjax(orderDetailsService.updateOrderDetails(orderDetails));
    }

    /**
     * 删除订单详情
     */
    @PreAuthorize("@ss.hasPermi('maple:orederDetails:remove')")
    @Log(title = "订单详情", businessType = BusinessType.DELETE)
	@DeleteMapping("/{orderIds}")
    public AjaxResult remove(@PathVariable Long[] orderIds)
    {
        return toAjax(orderDetailsService.deleteOrderDetailsByOrderIds(orderIds));
    }
}
