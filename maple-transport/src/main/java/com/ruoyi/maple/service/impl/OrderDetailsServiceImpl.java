package com.ruoyi.maple.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.maple.mapper.OrderDetailsMapper;
import com.ruoyi.maple.domain.OrderDetails;
import com.ruoyi.maple.service.IOrderDetailsService;

/**
 * 订单详情Service业务层处理
 * 
 * @author maple
 * @date 2024-01-07
 */
@Service
public class OrderDetailsServiceImpl implements IOrderDetailsService 
{
    @Autowired
    private OrderDetailsMapper orderDetailsMapper;

    /**
     * 查询订单详情
     * 
     * @param orderId 订单详情主键
     * @return 订单详情
     */
    @Override
    public OrderDetails selectOrderDetailsByOrderId(Long orderId)
    {
        return orderDetailsMapper.selectOrderDetailsByOrderId(orderId);
    }

    /**
     * 查询订单详情列表
     * 
     * @param orderDetails 订单详情
     * @return 订单详情
     */
    @Override
    public List<OrderDetails> selectOrderDetailsList(OrderDetails orderDetails)
    {
        return orderDetailsMapper.selectOrderDetailsList(orderDetails);
    }

    /**
     * 新增订单详情
     * 
     * @param orderDetails 订单详情
     * @return 结果
     */
    @Override
    public int insertOrderDetails(OrderDetails orderDetails)
    {
        return orderDetailsMapper.insertOrderDetails(orderDetails);
    }

    /**
     * 修改订单详情
     * 
     * @param orderDetails 订单详情
     * @return 结果
     */
    @Override
    public int updateOrderDetails(OrderDetails orderDetails)
    {
        return orderDetailsMapper.updateOrderDetails(orderDetails);
    }

    /**
     * 批量删除订单详情
     * 
     * @param orderIds 需要删除的订单详情主键
     * @return 结果
     */
    @Override
    public int deleteOrderDetailsByOrderIds(Long[] orderIds)
    {
        return orderDetailsMapper.deleteOrderDetailsByOrderIds(orderIds);
    }

    /**
     * 删除订单详情信息
     * 
     * @param orderId 订单详情主键
     * @return 结果
     */
    @Override
    public int deleteOrderDetailsByOrderId(Long orderId)
    {
        return orderDetailsMapper.deleteOrderDetailsByOrderId(orderId);
    }
}
