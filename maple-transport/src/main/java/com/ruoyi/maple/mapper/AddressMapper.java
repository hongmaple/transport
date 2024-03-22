package com.ruoyi.maple.mapper;

import java.util.List;
import com.ruoyi.maple.domain.Address;

/**
 * 地址Mapper接口
 *
 * @author maple
 * @date 2024-01-14
 */
public interface AddressMapper
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
     * 删除地址
     *
     * @param id 地址主键
     * @return 结果
     */
    public int deleteAddressById(Long id);

    /**
     * 批量删除地址
     *
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteAddressByIds(Long[] ids);

    int cancelDefault(Long userId);
}
