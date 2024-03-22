package com.ruoyi.maple.service;

import java.util.List;
import com.ruoyi.maple.domain.Help;

/**
 * 帮助中心Service接口
 * 
 * @author maple
 * @date 2024-01-07
 */
public interface IHelpService 
{
    /**
     * 查询帮助中心
     * 
     * @param id 帮助中心主键
     * @return 帮助中心
     */
    public Help selectHelpById(Long id);

    /**
     * 查询帮助中心列表
     * 
     * @param help 帮助中心
     * @return 帮助中心集合
     */
    public List<Help> selectHelpList(Help help);

    /**
     * 新增帮助中心
     * 
     * @param help 帮助中心
     * @return 结果
     */
    public int insertHelp(Help help);

    /**
     * 修改帮助中心
     * 
     * @param help 帮助中心
     * @return 结果
     */
    public int updateHelp(Help help);

    /**
     * 批量删除帮助中心
     * 
     * @param ids 需要删除的帮助中心主键集合
     * @return 结果
     */
    public int deleteHelpByIds(Long[] ids);

    /**
     * 删除帮助中心信息
     * 
     * @param id 帮助中心主键
     * @return 结果
     */
    public int deleteHelpById(Long id);
}
