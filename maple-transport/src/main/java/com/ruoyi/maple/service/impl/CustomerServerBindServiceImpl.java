package com.ruoyi.maple.service.impl;

import java.util.List;

import com.ruoyi.maple.domain.CustomerServer;
import com.ruoyi.maple.service.ICustomerServerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.maple.mapper.CustomerServerBindMapper;
import com.ruoyi.maple.domain.CustomerServerBind;
import com.ruoyi.maple.service.ICustomerServerBindService;

/**
 * 客服微信IP绑定Service业务层处理
 * 
 * @author maple
 * @date 2024-01-09
 */
@Service
public class CustomerServerBindServiceImpl implements ICustomerServerBindService 
{
    @Autowired
    private CustomerServerBindMapper customerServerBindMapper;

    /**
     * 查询客服微信IP绑定
     * 
     * @param id 客服微信IP绑定主键
     * @return 客服微信IP绑定
     */
    @Override
    public CustomerServerBind selectCustomerServerBindById(Long id)
    {
        return customerServerBindMapper.selectCustomerServerBindById(id);
    }

    /**
     * 查询客服微信IP绑定列表
     * 
     * @param customerServerBind 客服微信IP绑定
     * @return 客服微信IP绑定
     */
    @Override
    public List<CustomerServerBind> selectCustomerServerBindList(CustomerServerBind customerServerBind)
    {
        return customerServerBindMapper.selectCustomerServerBindList(customerServerBind);
    }

    /**
     * 新增客服微信IP绑定
     * 
     * @param customerServerBind 客服微信IP绑定
     * @return 结果
     */
    @Override
    public int insertCustomerServerBind(CustomerServerBind customerServerBind)
    {
        return customerServerBindMapper.insertCustomerServerBind(customerServerBind);
    }

    /**
     * 修改客服微信IP绑定
     * 
     * @param customerServerBind 客服微信IP绑定
     * @return 结果
     */
    @Override
    public int updateCustomerServerBind(CustomerServerBind customerServerBind)
    {
        return customerServerBindMapper.updateCustomerServerBind(customerServerBind);
    }

    /**
     * 批量删除客服微信IP绑定
     * 
     * @param ids 需要删除的客服微信IP绑定主键
     * @return 结果
     */
    @Override
    public int deleteCustomerServerBindByIds(Long[] ids)
    {
        return customerServerBindMapper.deleteCustomerServerBindByIds(ids);
    }

    /**
     * 删除客服微信IP绑定信息
     * 
     * @param id 客服微信IP绑定主键
     * @return 结果
     */
    @Override
    public int deleteCustomerServerBindById(Long id)
    {
        return customerServerBindMapper.deleteCustomerServerBindById(id);
    }

    @Override
    public void deleteCustomeSerVerBindByServerId(Long id) {
        customerServerBindMapper.deleteCustomeSerVerBindByServerId(id);
    }
}
