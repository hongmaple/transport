package com.ruoyi.maple.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.maple.mapper.HelpMapper;
import com.ruoyi.maple.domain.Help;
import com.ruoyi.maple.service.IHelpService;

/**
 * 帮助中心Service业务层处理
 * 
 * @author maple
 * @date 2024-01-07
 */
@Service
public class HelpServiceImpl implements IHelpService 
{
    @Autowired
    private HelpMapper helpMapper;

    /**
     * 查询帮助中心
     * 
     * @param id 帮助中心主键
     * @return 帮助中心
     */
    @Override
    public Help selectHelpById(Long id)
    {
        return helpMapper.selectHelpById(id);
    }

    /**
     * 查询帮助中心列表
     * 
     * @param help 帮助中心
     * @return 帮助中心
     */
    @Override
    public List<Help> selectHelpList(Help help)
    {
        return helpMapper.selectHelpList(help);
    }

    /**
     * 新增帮助中心
     * 
     * @param help 帮助中心
     * @return 结果
     */
    @Override
    public int insertHelp(Help help)
    {
        return helpMapper.insertHelp(help);
    }

    /**
     * 修改帮助中心
     * 
     * @param help 帮助中心
     * @return 结果
     */
    @Override
    public int updateHelp(Help help)
    {
        return helpMapper.updateHelp(help);
    }

    /**
     * 批量删除帮助中心
     * 
     * @param ids 需要删除的帮助中心主键
     * @return 结果
     */
    @Override
    public int deleteHelpByIds(Long[] ids)
    {
        return helpMapper.deleteHelpByIds(ids);
    }

    /**
     * 删除帮助中心信息
     * 
     * @param id 帮助中心主键
     * @return 结果
     */
    @Override
    public int deleteHelpById(Long id)
    {
        return helpMapper.deleteHelpById(id);
    }
}
