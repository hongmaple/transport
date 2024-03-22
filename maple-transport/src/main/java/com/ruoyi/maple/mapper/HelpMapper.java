package com.ruoyi.maple.mapper;

import java.util.List;
import com.ruoyi.maple.domain.Help;

/**
 * 帮助中心Mapper接口
 * 
 * @author maple
 * @date 2024-01-07
 */
public interface HelpMapper 
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
     * 删除帮助中心
     * 
     * @param id 帮助中心主键
     * @return 结果
     */
    public int deleteHelpById(Long id);

    /**
     * 批量删除帮助中心
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteHelpByIds(Long[] ids);
}
