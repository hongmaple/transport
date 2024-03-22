package com.ruoyi.maple.domain;

import java.math.BigDecimal;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 快递公司对象 t_express_company
 * 
 * @author maple
 * @date 2024-01-07
 */
public class ExpressCompany extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 快递公司id */
    private Long id;

    /** 快递公司 */
    @Excel(name = "快递公司")
    private String name;

    /** 首重价格 */
    @Excel(name = "首重价格")
    private BigDecimal firstWeightPrice;

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
    public void setFirstWeightPrice(BigDecimal firstWeightPrice) 
    {
        this.firstWeightPrice = firstWeightPrice;
    }

    public BigDecimal getFirstWeightPrice() 
    {
        return firstWeightPrice;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("name", getName())
            .append("firstWeightPrice", getFirstWeightPrice())
            .toString();
    }
}
