package com.ruoyi.maple.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 仓库对象 t_warehouse
 * 
 * @author maple
 * @date 2024-01-07
 */
public class Warehouse extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 仓库id */
    private Long id;

    /** 仓库名 */
    @Excel(name = "仓库名")
    private String name;

    /** 地址 */
    @Excel(name = "地址")
    private String address;

    /** 收货人 */
    @Excel(name = "收货人")
    private String consignee;

    /** 手机号 */
    @Excel(name = "手机号")
    private String phone;

    /** 邮编 */
    @Excel(name = "邮编")
    private String postalCode;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setName(String name) 
    {
        this.name = name;
    }

    public String getName() 
    {
        return name;
    }
    public void setAddress(String address) 
    {
        this.address = address;
    }

    public String getAddress() 
    {
        return address;
    }
    public void setConsignee(String consignee) 
    {
        this.consignee = consignee;
    }

    public String getConsignee() 
    {
        return consignee;
    }
    public void setPhone(String phone) 
    {
        this.phone = phone;
    }

    public String getPhone() 
    {
        return phone;
    }
    public void setPostalCode(String postalCode) 
    {
        this.postalCode = postalCode;
    }

    public String getPostalCode() 
    {
        return postalCode;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("name", getName())
            .append("address", getAddress())
            .append("consignee", getConsignee())
            .append("phone", getPhone())
            .append("postalCode", getPostalCode())
            .toString();
    }
}
