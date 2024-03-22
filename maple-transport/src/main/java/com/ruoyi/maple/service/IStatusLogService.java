package com.ruoyi.maple.service;

import java.util.List;
import com.ruoyi.maple.domain.StatusLog;

/**
 * 状态日志Service接口
 * 
 * @author maple
 * @date 2024-01-07
 */
public interface IStatusLogService 
{
    /**
     * 查询状态日志
     * 
     * @param id 状态日志主键
     * @return 状态日志
     */
    public StatusLog selectStatusLogById(Long id);

    /**
     * 查询状态日志列表
     * 
     * @param statusLog 状态日志
     * @return 状态日志集合
     */
    public List<StatusLog> selectStatusLogList(StatusLog statusLog);

    /**
     * 新增状态日志
     * 
     * @param statusLog 状态日志
     * @return 结果
     */
    public int insertStatusLog(StatusLog statusLog);

    /**
     * 修改状态日志
     * 
     * @param statusLog 状态日志
     * @return 结果
     */
    public int updateStatusLog(StatusLog statusLog);

    /**
     * 批量删除状态日志
     * 
     * @param ids 需要删除的状态日志主键集合
     * @return 结果
     */
    public int deleteStatusLogByIds(Long[] ids);

    /**
     * 删除状态日志信息
     * 
     * @param id 状态日志主键
     * @return 结果
     */
    public int deleteStatusLogById(Long id);
}
