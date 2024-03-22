package com.ruoyi.maple.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 地址对象 t_address
 *
 * @author maple
 * @date 2024-01-14
 */
public class Address extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 地址id */
    private Long id;

    /** 收货人 */
    @Excel(name = "收货人")
    private String name;

    /** 手机号 */
    @Excel(name = "手机号")
    private String phone;

    /** 地址 */
    @Excel(name = "地址")
    private String address;

    /**  */
    @Excel(name = "")
    private Long userId;

    /** 是否默认 */
    @Excel(name = "是否默认")
    private Boolean isDefault;

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
    public void setPhone(String phone)
    {
        this.phone = phone;
    }

    public String getPhone()
    {
        return phone;
    }
    public void setAddress(String address)
    {
        this.address = address;
    }

    public String getAddress()
    {
        return address;
    }
    public void setUserId(Long userId)
    {
        this.userId = userId;
    }

    public Long getUserId()
    {
        return userId;
    }
    public void setIsDefault(Boolean isDefault)
    {
        this.isDefault = isDefault;
    }

    public Boolean getIsDefault()
    {
        return isDefault;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
                .append("id", getId())
                .append("name", getName())
                .append("phone", getPhone())
                .append("address", getAddress())
                .append("userId", getUserId())
                .append("isDefault", getIsDefault())
                .toString();
    }
}
