package com.ruoyi.web.controller.maple;

import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.core.domain.entity.SysUser;
import com.ruoyi.common.core.page.TableDataInfo;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.common.exception.ServiceException;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.maple.domain.Order;
import com.ruoyi.maple.domain.OrderDetails;
import com.ruoyi.maple.domain.OrderLogistics;
import com.ruoyi.maple.domain.StatusLog;
import com.ruoyi.maple.service.*;
import com.ruoyi.system.service.ISysUserService;
import org.apache.commons.lang3.ObjectUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import java.beans.Transient;
import java.util.Date;
import java.util.List;

/**
 * 订单Controller
 * 
 * @author maple
 * @date 2024-01-07
 */
@RestController
@RequestMapping("/maple/order")
public class OrderController extends BaseController
{
    @Autowired
    private IOrderService orderService;

    @Autowired
    private IWarehouseService warehouseService;

    @Autowired
    private ISysUserService userService;

    @Autowired
    private IOrderDetailsService orderDetailsService;

    @Autowired
    private IOrderLogisticsService orderLogisticsService;

    @Autowired
    private IStatusLogService statusLogService;

    /**
     * 查询订单列表
     */
    @PreAuthorize("@ss.hasAnyRoles('admin,common')")
    @GetMapping("/list")
    public TableDataInfo list(Order order)
    {
        startPage();
        List<Order> list = orderService.selectOrderList(order);
        //todo 需优化
        build(list);
        return getDataTable(list);
    }

    @PreAuthorize("@ss.hasAnyRoles('custom')")
    @GetMapping("/myList")
    public TableDataInfo myList(Order order) {
        startPage();
        order.setCreateId(getUserId());
        List<Order> list = orderService.selectOrderList(order);
        //todo 需优化
        build(list);
        return getDataTable(list);
    }

    public void build(List<Order> list) {
        list.forEach(this::build);
    }

    public void build(Order o) {
        o.setWarehouse(warehouseService.selectWarehouseById(o.getWareouseId()));
        SysUser userInfo = new SysUser();
        SysUser sysUser1 = userService.selectUserById(o.getCreateId());
        userInfo.setPhonenumber(sysUser1.getPhonenumber());
        userInfo.setAvatar(sysUser1.getAvatar());
        userInfo.setUserName(sysUser1.getUserName());
        userInfo.setNickName(sysUser1.getNickName());
        o.setUserinfo(userInfo);
        if (o.getWarehousingUserId()!=null) {
            SysUser sysUser = userService.selectUserById(o.getWarehousingUserId());
            if (ObjectUtils.isNotEmpty(sysUser)) {
                o.setWarehousingUser(sysUser.getUserName());
            }
        }

        if (o.getOutboundUserId()!=null) {
            SysUser sysUser = userService.selectUserById(o.getOutboundUserId());
            if (ObjectUtils.isNotEmpty(sysUser)) {
                o.setOutboundUser(sysUser.getUserName());
            }
        }
        OrderDetails orderDetails = new OrderDetails();
        orderDetails.setOrderId(o.getId());
        o.setOrderDetails(orderDetailsService.selectOrderDetailsList(orderDetails));
    }

    /**
     * 导出订单列表
     */
    @PreAuthorize("@ss.hasPermi('maple:order:export')")
    @Log(title = "订单", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, Order order)
    {
        List<Order> list = orderService.selectOrderList(order);
        ExcelUtil<Order> util = new ExcelUtil<Order>(Order.class);
        util.exportExcel(response, list, "订单数据");
    }

    /**
     * 获取订单详细信息
     */
    @PreAuthorize("@ss.hasPermi('maple:order:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        Order order = orderService.selectOrderById(id);
        //todo 需优化
        build(order);
        return success(order);
    }

    /**
     * 新增订单
     */
    @PreAuthorize("@ss.hasPermi('maple:order:add')")
    @Log(title = "订单", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody Order order)
    {
        order.setCreateId(getUserId());
        return toAjax(orderService.insertOrder(order));
    }

    /**
     * 修改订单
     */
    @PreAuthorize("@ss.hasPermi('maple:order:edit')")
    @Log(title = "订单", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody Order order)
    {
        Order order1 = orderService.selectOrderById(order.getId());
        switch (order.getStatus()) {
            case "1":
               if(!order1.getStatus().equals("0")) throw new ServiceException("待入库才可变为已入库");
               order.setWarehousingTime(new Date());
               order.setWarehousingUserId(getUserId());
               order.setTotalPrice(order.getFreightPrice());
               break;
            case "2":
                if(!order1.getStatus().equals("1")) throw new ServiceException("已入库才可申请转寄");
                break;
            case "3":
                if(!order1.getStatus().equals("2")) throw new ServiceException("已支付才可变为待发货");
                order.setPayTime(new Date());
                break;
            case "4":
                if(!order1.getStatus().equals("3")) throw new ServiceException("代发货才可变为已发货");
                order.setOutboundTime(new Date());
                order.setOutboundUserId(getUserId());
                break;
            case "5":
                if(!order1.getStatus().equals("4")) throw new ServiceException("");
                break;
        }
        return toAjax(orderService.updateOrder(order));
    }

    /**
     * 删除订单
     */
    @PreAuthorize("@ss.hasPermi('maple:order:remove')")
    @Log(title = "订单", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(orderService.deleteOrderByIds(ids));
    }

    @PreAuthorize("@ss.hasPermi('maple:order:faHuo')")
    @Log(title = "订单发货", businessType = BusinessType.DELETE)
    @PostMapping("/faHuo")
    @Transient
    public AjaxResult faHuo(@RequestBody OrderLogistics orderLogistics) {
        Order order = orderService.selectOrderById(orderLogistics.getOrederId());
        if (!order.getStatus().equals("3")) throw new ServiceException("代发货才可变为已发货");
        order.setOutboundTime(new Date());
        order.setStatus("4");
        order.setOutboundUserId(getUserId());
        orderService.updateOrder(order);
        StatusLog statusLog = new StatusLog();
        statusLog.setTargetId(order.getId());
        statusLog.setCreateTime(order.getOutboundTime());
        statusLog.setTargetType("0");
        statusLog.setRemark("已发货，待揽收");
        statusLogService.insertStatusLog(statusLog);
        return toAjax(orderLogisticsService.insertOrderLogistics(orderLogistics));
    }
}
