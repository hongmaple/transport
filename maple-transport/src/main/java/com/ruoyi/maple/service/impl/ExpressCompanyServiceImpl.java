package com.ruoyi.maple.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.maple.mapper.ExpressCompanyMapper;
import com.ruoyi.maple.domain.ExpressCompany;
import com.ruoyi.maple.service.IExpressCompanyService;

/**
 * 快递公司Service业务层处理
 * 
 * @author maple
 * @date 2024-01-07
 */
@Service
public class ExpressCompanyServiceImpl implements IExpressCompanyService 
{
    @Autowired
    private ExpressCompanyMapper expressCompanyMapper;

    /**
     * 查询快递公司
     * 
     * @param id 快递公司主键
     * @return 快递公司
     */
    @Override
    public ExpressCompany selectExpressCompanyById(Long id)
    {
        return expressCompanyMapper.selectExpressCompanyById(id);
    }

    /**
     * 查询快递公司列表
     * 
     * @param expressCompany 快递公司
     * @return 快递公司
     */
    @Override
    public List<ExpressCompany> selectExpressCompanyList(ExpressCompany expressCompany)
    {
        return expressCompanyMapper.selectExpressCompanyList(expressCompany);
    }

    /**
     * 新增快递公司
     * 
     * @param expressCompany 快递公司
     * @return 结果
     */
    @Override
    public int insertExpressCompany(ExpressCompany expressCompany)
    {
        return expressCompanyMapper.insertExpressCompany(expressCompany);
    }

    /**
     * 修改快递公司
     * 
     * @param expressCompany 快递公司
     * @return 结果
     */
    @Override
    public int updateExpressCompany(ExpressCompany expressCompany)
    {
        return expressCompanyMapper.updateExpressCompany(expressCompany);
    }

    /**
     * 批量删除快递公司
     * 
     * @param ids 需要删除的快递公司主键
     * @return 结果
     */
    @Override
    public int deleteExpressCompanyByIds(Long[] ids)
    {
        return expressCompanyMapper.deleteExpressCompanyByIds(ids);
    }

    /**
     * 删除快递公司信息
     * 
     * @param id 快递公司主键
     * @return 结果
     */
    @Override
    public int deleteExpressCompanyById(Long id)
    {
        return expressCompanyMapper.deleteExpressCompanyById(id);
    }
}
