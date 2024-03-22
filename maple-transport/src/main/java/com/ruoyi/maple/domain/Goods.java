package com.ruoyi.maple.domain;

import java.math.BigDecimal;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 商品对象 t_goods
 * 
 * @author maple
 * @date 2024-01-07
 */
public class Goods extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 商品id */
    private Long id;

    /** 商品标题 */
    @Excel(name = "商品标题")
    private String title;

    /** 封面图片 */
    @Excel(name = "封面图片")
    private String coverUrl;

    /** 单价 */
    @Excel(name = "单价")
    private BigDecimal price;

    /** 库存 */
    @Excel(name = "库存")
    private Long stock;

    private Integer num;

    private Boolean isGouMa;

    public Integer getNum() {
        return num;
    }

    public void setNum(Integer num) {
        this.num = num;
    }

    public Boolean getGouMa() {
        return isGouMa;
    }

    public void setGouMa(Boolean gouMa) {
        isGouMa = gouMa;
    }

    public void setId(Long id)
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setTitle(String title) 
    {
        this.title = title;
    }

    public String getTitle() 
    {
        return title;
    }
    public void setCoverUrl(String coverUrl) 
    {
        this.coverUrl = coverUrl;
    }

    public String getCoverUrl() 
    {
        return coverUrl;
    }
    public void setPrice(BigDecimal price) 
    {
        this.price = price;
    }

    public BigDecimal getPrice() 
    {
        return price;
    }
    public void setStock(Long stock) 
    {
        this.stock = stock;
    }

    public Long getStock() 
    {
        return stock;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("title", getTitle())
            .append("coverUrl", getCoverUrl())
            .append("price", getPrice())
            .append("stock", getStock())
            .toString();
    }
}
