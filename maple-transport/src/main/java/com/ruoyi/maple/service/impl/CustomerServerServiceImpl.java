package com.ruoyi.maple.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.maple.mapper.CustomerServerMapper;
import com.ruoyi.maple.domain.CustomerServer;
import com.ruoyi.maple.service.ICustomerServerService;

/**
 * 客服中心Service业务层处理
 * 
 * @author maple
 * @date 2024-01-07
 */
@Service
public class CustomerServerServiceImpl implements ICustomerServerService 
{
    @Autowired
    private CustomerServerMapper customerServerMapper;

    /**
     * 查询客服中心
     * 
     * @param id 客服中心主键
     * @return 客服中心
     */
    @Override
    public CustomerServer selectCustomerServerById(Long id)
    {
        return customerServerMapper.selectCustomerServerById(id);
    }

    /**
     * 查询客服中心列表
     * 
     * @param customerServer 客服中心
     * @return 客服中心
     */
    @Override
    public List<CustomerServer> selectCustomerServerList(CustomerServer customerServer)
    {
        return customerServerMapper.selectCustomerServerList(customerServer);
    }

    /**
     * 新增客服中心
     * 
     * @param customerServer 客服中心
     * @return 结果
     */
    @Override
    public int insertCustomerServer(CustomerServer customerServer)
    {
        return customerServerMapper.insertCustomerServer(customerServer);
    }

    /**
     * 修改客服中心
     * 
     * @param customerServer 客服中心
     * @return 结果
     */
    @Override
    public int updateCustomerServer(CustomerServer customerServer)
    {
        return customerServerMapper.updateCustomerServer(customerServer);
    }

    /**
     * 批量删除客服中心
     * 
     * @param ids 需要删除的客服中心主键
     * @return 结果
     */
    @Override
    public int deleteCustomerServerByIds(Long[] ids)
    {
        return customerServerMapper.deleteCustomerServerByIds(ids);
    }

    /**
     * 删除客服中心信息
     * 
     * @param id 客服中心主键
     * @return 结果
     */
    @Override
    public int deleteCustomerServerById(Long id)
    {
        return customerServerMapper.deleteCustomerServerById(id);
    }
}
