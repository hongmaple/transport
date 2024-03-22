package com.ruoyi.maple.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;


/**
 * 反馈中心对象 t_feedback
 * 
 * @author maple
 * @date 2024-01-07
 */
public class Feedback extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 反馈id */
    private Long id;

    /** 内容 */
    @Excel(name = "内容")
    private String content;

    /** 图片 */
    @Excel(name = "图片")
    private String urls;

    /** 创建者 */
    @Excel(name = "创建者")
    private Long createId;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setContent(String content) 
    {
        this.content = content;
    }

    public String getContent() 
    {
        return content;
    }
    public void setUrls(String urls) 
    {
        this.urls = urls;
    }

    public String getUrls() 
    {
        return urls;
    }
    public void setCreateId(Long createId) 
    {
        this.createId = createId;
    }

    public Long getCreateId() 
    {
        return createId;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("content", getContent())
            .append("urls", getUrls())
            .append("createTime", getCreateTime())
            .append("createId", getCreateId())
            .toString();
    }

    //**反馈者
    private String createName;

    public String getCreateName() {
        return createName;
    }

    public void setCreateName(String createName) {
        this.createName = createName;
    }
}
