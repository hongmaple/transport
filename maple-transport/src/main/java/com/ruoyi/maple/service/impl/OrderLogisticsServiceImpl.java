package com.ruoyi.maple.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.maple.mapper.OrderLogisticsMapper;
import com.ruoyi.maple.domain.OrderLogistics;
import com.ruoyi.maple.service.IOrderLogisticsService;

/**
 * 订单物流Service业务层处理
 * 
 * @author maple
 * @date 2024-01-07
 */
@Service
public class OrderLogisticsServiceImpl implements IOrderLogisticsService 
{
    @Autowired
    private OrderLogisticsMapper orderLogisticsMapper;

    /**
     * 查询订单物流
     * 
     * @param orederId 订单物流主键
     * @return 订单物流
     */
    @Override
    public OrderLogistics selectOrderLogisticsByOrederId(Long orederId)
    {
        return orderLogisticsMapper.selectOrderLogisticsByOrederId(orederId);
    }

    /**
     * 查询订单物流列表
     * 
     * @param orderLogistics 订单物流
     * @return 订单物流
     */
    @Override
    public List<OrderLogistics> selectOrderLogisticsList(OrderLogistics orderLogistics)
    {
        return orderLogisticsMapper.selectOrderLogisticsList(orderLogistics);
    }

    /**
     * 新增订单物流
     * 
     * @param orderLogistics 订单物流
     * @return 结果
     */
    @Override
    public int insertOrderLogistics(OrderLogistics orderLogistics)
    {
        orderLogistics.setCreateTime(DateUtils.getNowDate());
        return orderLogisticsMapper.insertOrderLogistics(orderLogistics);
    }

    /**
     * 修改订单物流
     * 
     * @param orderLogistics 订单物流
     * @return 结果
     */
    @Override
    public int updateOrderLogistics(OrderLogistics orderLogistics)
    {
        return orderLogisticsMapper.updateOrderLogistics(orderLogistics);
    }

    /**
     * 批量删除订单物流
     * 
     * @param orederIds 需要删除的订单物流主键
     * @return 结果
     */
    @Override
    public int deleteOrderLogisticsByOrederIds(Long[] orederIds)
    {
        return orderLogisticsMapper.deleteOrderLogisticsByOrederIds(orederIds);
    }

    /**
     * 删除订单物流信息
     * 
     * @param orederId 订单物流主键
     * @return 结果
     */
    @Override
    public int deleteOrderLogisticsByOrederId(Long orederId)
    {
        return orderLogisticsMapper.deleteOrderLogisticsByOrederId(orederId);
    }
}
