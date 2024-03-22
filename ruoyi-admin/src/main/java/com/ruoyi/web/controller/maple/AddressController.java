package com.ruoyi.web.controller.maple;

import java.util.List;
import javax.servlet.http.HttpServletResponse;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.maple.domain.Address;
import com.ruoyi.maple.service.IAddressService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 地址Controller
 *
 * @author maple
 * @date 2024-01-14
 */
@RestController
@RequestMapping("/maple/address")
public class AddressController extends BaseController
{
    @Autowired
    private IAddressService addressService;

    /**
     * 查询地址列表
     */
    @PreAuthorize("@ss.hasPermi('maple:address:list')")
    @GetMapping("/list")
    public TableDataInfo list(Address address)
    {
        startPage();
        List<Address> list = addressService.selectAddressList(address);
        return getDataTable(list);
    }

    /**
     * 导出地址列表
     */
    @PreAuthorize("@ss.hasPermi('maple:address:export')")
    @Log(title = "地址", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, Address address)
    {
        List<Address> list = addressService.selectAddressList(address);
        ExcelUtil<Address> util = new ExcelUtil<Address>(Address.class);
        util.exportExcel(response, list, "地址数据");
    }

    /**
     * 获取地址详细信息
     */
    @PreAuthorize("@ss.hasPermi('maple:address:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(addressService.selectAddressById(id));
    }

    /**
     * 新增地址
     */
    @PreAuthorize("@ss.hasPermi('maple:address:add')")
    @Log(title = "地址", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody Address address)
    {
        address.setUserId(getUserId());
        return toAjax(addressService.insertAddress(address));
    }

    /**
     * 修改地址
     */
    @PreAuthorize("@ss.hasPermi('maple:address:edit')")
    @Log(title = "地址", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody Address address)
    {
        return toAjax(addressService.updateAddress(address));
    }

    /**
     * 删除地址
     */
    @PreAuthorize("@ss.hasPermi('maple:address:remove')")
    @Log(title = "地址", businessType = BusinessType.DELETE)
    @DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(addressService.deleteAddressByIds(ids));
    }

    /**
     * 设为默认
     */
    @PreAuthorize("@ss.hasPermi('maple:address:edit')")
    @Log(title = "设为默认地址", businessType = BusinessType.UPDATE)
    @PutMapping("/setDefault/{id}")
    public AjaxResult setDefault(@PathVariable Long id) {
        return toAjax(addressService.setDefault(id,getUserId()));
    }
}
