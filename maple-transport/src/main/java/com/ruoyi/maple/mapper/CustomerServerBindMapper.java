package com.ruoyi.maple.mapper;

import java.util.List;
import com.ruoyi.maple.domain.CustomerServerBind;

/**
 * 客服微信IP绑定Mapper接口
 * 
 * @author maple
 * @date 2024-01-09
 */
public interface CustomerServerBindMapper 
{
    /**
     * 查询客服微信IP绑定
     * 
     * @param id 客服微信IP绑定主键
     * @return 客服微信IP绑定
     */
    public CustomerServerBind selectCustomerServerBindById(Long id);

    /**
     * 查询客服微信IP绑定列表
     * 
     * @param customerServerBind 客服微信IP绑定
     * @return 客服微信IP绑定集合
     */
    public List<CustomerServerBind> selectCustomerServerBindList(CustomerServerBind customerServerBind);

    /**
     * 新增客服微信IP绑定
     * 
     * @param customerServerBind 客服微信IP绑定
     * @return 结果
     */
    public int insertCustomerServerBind(CustomerServerBind customerServerBind);

    /**
     * 修改客服微信IP绑定
     * 
     * @param customerServerBind 客服微信IP绑定
     * @return 结果
     */
    public int updateCustomerServerBind(CustomerServerBind customerServerBind);

    /**
     * 删除客服微信IP绑定
     * 
     * @param id 客服微信IP绑定主键
     * @return 结果
     */
    public int deleteCustomerServerBindById(Long id);

    /**
     * 批量删除客服微信IP绑定
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteCustomerServerBindByIds(Long[] ids);

    public int deleteCustomeSerVerBindByServerId(Long serverId);
}
