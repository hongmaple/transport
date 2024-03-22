package com.ruoyi.maple.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 轮播图对象 t_carousel_chart
 * 
 * @author maple
 * @date 2024-01-07
 */
public class CarouselChart extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 轮播图id */
    private Long id;

    /** 标题 */
    @Excel(name = "标题")
    private String title;

    /** 图片地址 */
    @Excel(name = "图片地址")
    private String imgUrl;

    /** 跳转链接 */
    @Excel(name = "跳转链接")
    private String skipH5Url;

    /** 排序 */
    @Excel(name = "排序")
    private Long serialNumber;

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
    public void setImgUrl(String imgUrl) 
    {
        this.imgUrl = imgUrl;
    }

    public String getImgUrl() 
    {
        return imgUrl;
    }
    public void setSkipH5Url(String skipH5Url) 
    {
        this.skipH5Url = skipH5Url;
    }

    public String getSkipH5Url() 
    {
        return skipH5Url;
    }
    public void setSerialNumber(Long serialNumber) 
    {
        this.serialNumber = serialNumber;
    }

    public Long getSerialNumber() 
    {
        return serialNumber;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("title", getTitle())
            .append("imgUrl", getImgUrl())
            .append("skipH5Url", getSkipH5Url())
            .append("serialNumber", getSerialNumber())
            .toString();
    }
}
