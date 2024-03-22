package com.ruoyi.maple.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 订单物流对象 t_order_logistics
 * 
 * @author maple
 * @date 2024-01-07
 */
public class OrderLogistics extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 订单id */
    private Long orederId;

    /** 快递号 */
    @Excel(name = "快递号")
    private String trackingNumber;

    /** 快递公司 */
    @Excel(name = "快递公司")
    private Long expressCompanyId;

    /** 收货人 */
    @Excel(name = "收货人")
    private String consignee;

    /** 地址 */
    @Excel(name = "地址")
    private String address;

    /** 手机号 */
    @Excel(name = "手机号")
    private String phone;

    public void setOrederId(Long orederId) 
    {
        this.orederId = orederId;
    }

    public Long getOrederId() 
    {
        return orederId;
    }
    public void setTrackingNumber(String trackingNumber) 
    {
        this.trackingNumber = trackingNumber;
    }

    public String getTrackingNumber() 
    {
        return trackingNumber;
    }
    public void setExpressCompanyId(Long expressCompanyId) 
    {
        this.expressCompanyId = expressCompanyId;
    }

    public Long getExpressCompanyId() 
    {
        return expressCompanyId;
    }
    public void setConsignee(String consignee) 
    {
        this.consignee = consignee;
    }

    public String getConsignee() 
    {
        return consignee;
    }
    public void setAddress(String address) 
    {
        this.address = address;
    }

    public String getAddress() 
    {
        return address;
    }
    public void setPhone(String phone) 
    {
        this.phone = phone;
    }

    public String getPhone() 
    {
        return phone;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("orederId", getOrederId())
            .append("trackingNumber", getTrackingNumber())
            .append("expressCompanyId", getExpressCompanyId())
            .append("consignee", getConsignee())
            .append("address", getAddress())
            .append("phone", getPhone())
            .append("createTime", getCreateTime())
            .toString();
    }
}
