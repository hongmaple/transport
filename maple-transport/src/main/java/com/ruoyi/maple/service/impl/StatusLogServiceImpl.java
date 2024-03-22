package com.ruoyi.maple.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.maple.mapper.StatusLogMapper;
import com.ruoyi.maple.domain.StatusLog;
import com.ruoyi.maple.service.IStatusLogService;

/**
 * 状态日志Service业务层处理
 * 
 * @author maple
 * @date 2024-01-07
 */
@Service
public class StatusLogServiceImpl implements IStatusLogService 
{
    @Autowired
    private StatusLogMapper statusLogMapper;

    /**
     * 查询状态日志
     * 
     * @param id 状态日志主键
     * @return 状态日志
     */
    @Override
    public StatusLog selectStatusLogById(Long id)
    {
        return statusLogMapper.selectStatusLogById(id);
    }

    /**
     * 查询状态日志列表
     * 
     * @param statusLog 状态日志
     * @return 状态日志
     */
    @Override
    public List<StatusLog> selectStatusLogList(StatusLog statusLog)
    {
        return statusLogMapper.selectStatusLogList(statusLog);
    }

    /**
     * 新增状态日志
     * 
     * @param statusLog 状态日志
     * @return 结果
     */
    @Override
    public int insertStatusLog(StatusLog statusLog)
    {
        statusLog.setCreateTime(DateUtils.getNowDate());
        return statusLogMapper.insertStatusLog(statusLog);
    }

    /**
     * 修改状态日志
     * 
     * @param statusLog 状态日志
     * @return 结果
     */
    @Override
    public int updateStatusLog(StatusLog statusLog)
    {
        return statusLogMapper.updateStatusLog(statusLog);
    }

    /**
     * 批量删除状态日志
     * 
     * @param ids 需要删除的状态日志主键
     * @return 结果
     */
    @Override
    public int deleteStatusLogByIds(Long[] ids)
    {
        return statusLogMapper.deleteStatusLogByIds(ids);
    }

    /**
     * 删除状态日志信息
     * 
     * @param id 状态日志主键
     * @return 结果
     */
    @Override
    public int deleteStatusLogById(Long id)
    {
        return statusLogMapper.deleteStatusLogById(id);
    }
}
