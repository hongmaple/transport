package com.ruoyi.maple.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.maple.mapper.TutorialMapper;
import com.ruoyi.maple.domain.Tutorial;
import com.ruoyi.maple.service.ITutorialService;

/**
 * 教程中心Service业务层处理
 * 
 * @author maple
 * @date 2024-01-07
 */
@Service
public class TutorialServiceImpl implements ITutorialService 
{
    @Autowired
    private TutorialMapper tutorialMapper;

    /**
     * 查询教程中心
     * 
     * @param id 教程中心主键
     * @return 教程中心
     */
    @Override
    public Tutorial selectTutorialById(Long id)
    {
        return tutorialMapper.selectTutorialById(id);
    }

    /**
     * 查询教程中心列表
     * 
     * @param tutorial 教程中心
     * @return 教程中心
     */
    @Override
    public List<Tutorial> selectTutorialList(Tutorial tutorial)
    {
        return tutorialMapper.selectTutorialList(tutorial);
    }

    /**
     * 新增教程中心
     * 
     * @param tutorial 教程中心
     * @return 结果
     */
    @Override
    public int insertTutorial(Tutorial tutorial)
    {
        return tutorialMapper.insertTutorial(tutorial);
    }

    /**
     * 修改教程中心
     * 
     * @param tutorial 教程中心
     * @return 结果
     */
    @Override
    public int updateTutorial(Tutorial tutorial)
    {
        return tutorialMapper.updateTutorial(tutorial);
    }

    /**
     * 批量删除教程中心
     * 
     * @param ids 需要删除的教程中心主键
     * @return 结果
     */
    @Override
    public int deleteTutorialByIds(Long[] ids)
    {
        return tutorialMapper.deleteTutorialByIds(ids);
    }

    /**
     * 删除教程中心信息
     * 
     * @param id 教程中心主键
     * @return 结果
     */
    @Override
    public int deleteTutorialById(Long id)
    {
        return tutorialMapper.deleteTutorialById(id);
    }
}
