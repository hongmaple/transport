package com.ruoyi.maple.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 状态日志对象 t_status_log
 * 
 * @author maple
 * @date 2024-01-07
 */
public class StatusLog extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 状态日志id */
    private Long id;

    /** 目标id */
    @Excel(name = "目标id")
    private Long targetId;

    /** 目标类型0：物流更新 */
    @Excel(name = "目标类型0：物流更新")
    private String targetType;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setTargetId(Long targetId) 
    {
        this.targetId = targetId;
    }

    public Long getTargetId() 
    {
        return targetId;
    }
    public void setTargetType(String targetType) 
    {
        this.targetType = targetType;
    }

    public String getTargetType() 
    {
        return targetType;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("createTime", getCreateTime())
            .append("remark", getRemark())
            .append("targetId", getTargetId())
            .append("targetType", getTargetType())
            .toString();
    }
}
