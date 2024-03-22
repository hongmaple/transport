package com.ruoyi.maple.service;

import java.util.List;
import com.ruoyi.maple.domain.ExpressCompany;

/**
 * 快递公司Service接口
 * 
 * @author maple
 * @date 2024-01-07
 */
public interface IExpressCompanyService 
{
    /**
     * 查询快递公司
     * 
     * @param id 快递公司主键
     * @return 快递公司
     */
    public ExpressCompany selectExpressCompanyById(Long id);

    /**
     * 查询快递公司列表
     * 
     * @param expressCompany 快递公司
     * @return 快递公司集合
     */
    public List<ExpressCompany> selectExpressCompanyList(ExpressCompany expressCompany);

    /**
     * 新增快递公司
     * 
     * @param expressCompany 快递公司
     * @return 结果
     */
    public int insertExpressCompany(ExpressCompany expressCompany);

    /**
     * 修改快递公司
     * 
     * @param expressCompany 快递公司
     * @return 结果
     */
    public int updateExpressCompany(ExpressCompany expressCompany);

    /**
     * 批量删除快递公司
     * 
     * @param ids 需要删除的快递公司主键集合
     * @return 结果
     */
    public int deleteExpressCompanyByIds(Long[] ids);

    /**
     * 删除快递公司信息
     * 
     * @param id 快递公司主键
     * @return 结果
     */
    public int deleteExpressCompanyById(Long id);
}
