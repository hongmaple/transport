package com.ruoyi.maple.service;

import java.util.List;
import com.ruoyi.maple.domain.CustomerServer;

/**
 * 客服中心Service接口
 * 
 * @author maple
 * @date 2024-01-07
 */
public interface ICustomerServerService 
{
    /**
     * 查询客服中心
     * 
     * @param id 客服中心主键
     * @return 客服中心
     */
    public CustomerServer selectCustomerServerById(Long id);

    /**
     * 查询客服中心列表
     * 
     * @param customerServer 客服中心
     * @return 客服中心集合
     */
    public List<CustomerServer> selectCustomerServerList(CustomerServer customerServer);

    /**
     * 新增客服中心
     * 
     * @param customerServer 客服中心
     * @return 结果
     */
    public int insertCustomerServer(CustomerServer customerServer);

    /**
     * 修改客服中心
     * 
     * @param customerServer 客服中心
     * @return 结果
     */
    public int updateCustomerServer(CustomerServer customerServer);

    /**
     * 批量删除客服中心
     * 
     * @param ids 需要删除的客服中心主键集合
     * @return 结果
     */
    public int deleteCustomerServerByIds(Long[] ids);

    /**
     * 删除客服中心信息
     * 
     * @param id 客服中心主键
     * @return 结果
     */
    public int deleteCustomerServerById(Long id);
}
