package com.ruoyi.maple.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 客服微信IP绑定对象 t_customer_server_bind
 * 
 * @author maple
 * @date 2024-01-09
 */
public class CustomerServerBind extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** $column.columnComment */
    private Long id;

    /** 客服id */
    @Excel(name = "客服id")
    private Long customerServerId;

    /** IP地址 */
    @Excel(name = "IP地址")
    private String IP;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setCustomerServerId(Long customerServerId) 
    {
        this.customerServerId = customerServerId;
    }

    public Long getCustomerServerId() 
    {
        return customerServerId;
    }
    public void setIP(String IP) 
    {
        this.IP = IP;
    }

    public String getIP() 
    {
        return IP;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("customerServerId", getCustomerServerId())
            .append("IP", getIP())
            .toString();
    }
}
