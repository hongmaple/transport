package com.ruoyi.maple.service;

import java.util.List;
import com.ruoyi.maple.domain.Tutorial;

/**
 * 教程中心Service接口
 * 
 * @author maple
 * @date 2024-01-07
 */
public interface ITutorialService 
{
    /**
     * 查询教程中心
     * 
     * @param id 教程中心主键
     * @return 教程中心
     */
    public Tutorial selectTutorialById(Long id);

    /**
     * 查询教程中心列表
     * 
     * @param tutorial 教程中心
     * @return 教程中心集合
     */
    public List<Tutorial> selectTutorialList(Tutorial tutorial);

    /**
     * 新增教程中心
     * 
     * @param tutorial 教程中心
     * @return 结果
     */
    public int insertTutorial(Tutorial tutorial);

    /**
     * 修改教程中心
     * 
     * @param tutorial 教程中心
     * @return 结果
     */
    public int updateTutorial(Tutorial tutorial);

    /**
     * 批量删除教程中心
     * 
     * @param ids 需要删除的教程中心主键集合
     * @return 结果
     */
    public int deleteTutorialByIds(Long[] ids);

    /**
     * 删除教程中心信息
     * 
     * @param id 教程中心主键
     * @return 结果
     */
    public int deleteTutorialById(Long id);
}
