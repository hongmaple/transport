package com.ruoyi.maple.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 客服中心对象 t_customer_server
 *
 * @author maple
 * @date 2024-01-09
 */
public class CustomerServer extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 客服id */
    private Long id;

    /** 手机号 */
    @Excel(name = "手机号")
    private String phone;

    /** 微信图片 */
    @Excel(name = "微信图片")
    private String wxUrl;

    /** 状态0：上线，1：下线 */
    @Excel(name = "状态0：上线，1：下线")
    private String status;

    public void setId(Long id)
    {
        this.id = id;
    }

    public Long getId()
    {
        return id;
    }
    public void setPhone(String phone)
    {
        this.phone = phone;
    }

    public String getPhone()
    {
        return phone;
    }
    public void setWxUrl(String wxUrl)
    {
        this.wxUrl = wxUrl;
    }

    public String getWxUrl()
    {
        return wxUrl;
    }
    public void setStatus(String status)
    {
        this.status = status;
    }

    public String getStatus()
    {
        return status;
    }

    private Integer bindCount;

    public Integer getBindCount() {
        return bindCount;
    }

    public void setBindCount(Integer bindCount) {
        this.bindCount = bindCount;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
                .append("id", getId())
                .append("phone", getPhone())
                .append("wxUrl", getWxUrl())
                .append("status", getStatus())
                .toString();
    }
}
