package com.ruoyi.maple.mapper;

import java.util.List;
import com.ruoyi.maple.domain.Warehouse;

/**
 * 仓库Mapper接口
 * 
 * @author maple
 * @date 2024-01-07
 */
public interface WarehouseMapper 
{
    /**
     * 查询仓库
     * 
     * @param id 仓库主键
     * @return 仓库
     */
    public Warehouse selectWarehouseById(Long id);

    /**
     * 查询仓库列表
     * 
     * @param warehouse 仓库
     * @return 仓库集合
     */
    public List<Warehouse> selectWarehouseList(Warehouse warehouse);

    /**
     * 新增仓库
     * 
     * @param warehouse 仓库
     * @return 结果
     */
    public int insertWarehouse(Warehouse warehouse);

    /**
     * 修改仓库
     * 
     * @param warehouse 仓库
     * @return 结果
     */
    public int updateWarehouse(Warehouse warehouse);

    /**
     * 删除仓库
     * 
     * @param id 仓库主键
     * @return 结果
     */
    public int deleteWarehouseById(Long id);

    /**
     * 批量删除仓库
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteWarehouseByIds(Long[] ids);
}
