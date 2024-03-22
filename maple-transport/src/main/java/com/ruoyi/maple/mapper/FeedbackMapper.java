package com.ruoyi.maple.mapper;

import java.util.List;
import com.ruoyi.maple.domain.Feedback;

/**
 * 反馈中心Mapper接口
 * 
 * @author maple
 * @date 2024-01-07
 */
public interface FeedbackMapper 
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
     * 删除反馈中心
     * 
     * @param id 反馈中心主键
     * @return 结果
     */
    public int deleteFeedbackById(Long id);

    /**
     * 批量删除反馈中心
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteFeedbackByIds(Long[] ids);
}
