package com.ruoyi.maple.mapper;

import java.util.List;
import com.ruoyi.maple.domain.OrderLogistics;

/**
 * 订单物流Mapper接口
 * 
 * @author maple
 * @date 2024-01-07
 */
public interface OrderLogisticsMapper 
{
    /**
     * 查询订单物流
     * 
     * @param orederId 订单物流主键
     * @return 订单物流
     */
    public OrderLogistics selectOrderLogisticsByOrederId(Long orederId);

    /**
     * 查询订单物流列表
     * 
     * @param orderLogistics 订单物流
     * @return 订单物流集合
     */
    public List<OrderLogistics> selectOrderLogisticsList(OrderLogistics orderLogistics);

    /**
     * 新增订单物流
     * 
     * @param orderLogistics 订单物流
     * @return 结果
     */
    public int insertOrderLogistics(OrderLogistics orderLogistics);

    /**
     * 修改订单物流
     * 
     * @param orderLogistics 订单物流
     * @return 结果
     */
    public int updateOrderLogistics(OrderLogistics orderLogistics);

    /**
     * 删除订单物流
     * 
     * @param orederId 订单物流主键
     * @return 结果
     */
    public int deleteOrderLogisticsByOrederId(Long orederId);

    /**
     * 批量删除订单物流
     * 
     * @param orederIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteOrderLogisticsByOrederIds(Long[] orederIds);
}
