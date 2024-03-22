package com.ruoyi.maple.service;

import java.util.List;
import com.ruoyi.maple.domain.Feedback;

/**
 * 反馈中心Service接口
 * 
 * @author maple
 * @date 2024-01-07
 */
public interface IFeedbackService 
{
    /**
     * 查询反馈中心
     * 
     * @param id 反馈中心主键
     * @return 反馈中心
     */
    public Feedback selectFeedbackById(Long id);

    /**
     * 查询反馈中心列表
     * 
     * @param feedback 反馈中心
     * @return 反馈中心集合
     */
    public List<Feedback> selectFeedbackList(Feedback feedback);

    /**
     * 新增反馈中心
     * 
     * @param feedback 反馈中心
     * @return 结果
     */
    public int insertFeedback(Feedback feedback);

    /**
     * 修改反馈中心
     * 
     * @param feedback 反馈中心
     * @return 结果
     */
    public int updateFeedback(Feedback feedback);

    /**
     * 批量删除反馈中心
     * 
     * @param ids 需要删除的反馈中心主键集合
     * @return 结果
     */
    public int deleteFeedbackByIds(Long[] ids);

    /**
     * 删除反馈中心信息
     * 
     * @param id 反馈中心主键
     * @return 结果
     */
    public int deleteFeedbackById(Long id);
}
