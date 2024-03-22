package com.ruoyi.maple.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.maple.mapper.FeedbackMapper;
import com.ruoyi.maple.domain.Feedback;
import com.ruoyi.maple.service.IFeedbackService;

/**
 * 反馈中心Service业务层处理
 * 
 * @author maple
 * @date 2024-01-07
 */
@Service
public class FeedbackServiceImpl implements IFeedbackService 
{
    @Autowired
    private FeedbackMapper feedbackMapper;

    /**
     * 查询反馈中心
     * 
     * @param id 反馈中心主键
     * @return 反馈中心
     */
    @Override
    public Feedback selectFeedbackById(Long id)
    {
        return feedbackMapper.selectFeedbackById(id);
    }

    /**
     * 查询反馈中心列表
     * 
     * @param feedback 反馈中心
     * @return 反馈中心
     */
    @Override
    public List<Feedback> selectFeedbackList(Feedback feedback)
    {
        return feedbackMapper.selectFeedbackList(feedback);
    }

    /**
     * 新增反馈中心
     * 
     * @param feedback 反馈中心
     * @return 结果
     */
    @Override
    public int insertFeedback(Feedback feedback)
    {
        feedback.setCreateTime(DateUtils.getNowDate());
        return feedbackMapper.insertFeedback(feedback);
    }

    /**
     * 修改反馈中心
     * 
     * @param feedback 反馈中心
     * @return 结果
     */
    @Override
    public int updateFeedback(Feedback feedback)
    {
        return feedbackMapper.updateFeedback(feedback);
    }

    /**
     * 批量删除反馈中心
     * 
     * @param ids 需要删除的反馈中心主键
     * @return 结果
     */
    @Override
    public int deleteFeedbackByIds(Long[] ids)
    {
        return feedbackMapper.deleteFeedbackByIds(ids);
    }

    /**
     * 删除反馈中心信息
     * 
     * @param id 反馈中心主键
     * @return 结果
     */
    @Override
    public int deleteFeedbackById(Long id)
    {
        return feedbackMapper.deleteFeedbackById(id);
    }
}
