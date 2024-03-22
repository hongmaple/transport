package com.ruoyi.maple.service;

import java.util.List;
import com.ruoyi.maple.domain.Address;

/**
 * 地址Service接口
 *
 * @author maple
 * @date 2024-01-14
 */
public interface IAddressService
{
    /**
     * 查询地址
     *
     * @param id 地址主键
     * @return 地址
     */
    public Address selectAddressById(Long id);

    /**
     * 查询地址列表
     *
     * @param address 地址
     * @return 地址集合
     */
    public List<Address> selectAddressList(Address address);

    /**
     * 新增地址
     *
     * @param address 地址
     * @return 结果
     */
    public int insertAddress(Address address);

    /**
     * 修改地址
     *
     * @param address 地址
     * @return 结果
     */
    public int updateAddress(Address address);

    /**
     * 批量删除地址
     *
     * @param ids 需要删除的地址主键集合
     * @return 结果
     */
    public int deleteAddressByIds(Long[] ids);

    /**
     * 删除地址信息
     *
     * @param id 地址主键
     * @return 结果
     */
    public int deleteAddressById(Long id);

    int setDefault(Long id,Long userId);
}
