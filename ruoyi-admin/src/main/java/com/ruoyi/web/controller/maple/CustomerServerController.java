package com.ruoyi.web.controller.maple;

import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.core.page.TableDataInfo;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.maple.domain.CustomerServer;
import com.ruoyi.maple.service.ICustomerServerBindService;
import com.ruoyi.maple.service.ICustomerServerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * 客服中心Controller
 * 
 * @author maple
 * @date 2024-01-07
 */
@RestController
@RequestMapping("/maple/customerServer")
public class CustomerServerController extends BaseController
{
    @Autowired
    private ICustomerServerService customerServerService;

    @Autowired
    private ICustomerServerBindService customerServerBindService;

    /**
     * 查询客服中心列表
     */
    @PreAuthorize("@ss.hasPermi('maple:customerServer:list')")
    @GetMapping("/list")
    public TableDataInfo list(CustomerServer customerServer)
    {
        startPage();
        List<CustomerServer> list = customerServerService.selectCustomerServerList(customerServer);
        return getDataTable(list);
    }

    /**
     * 导出客服中心列表
     */
    @PreAuthorize("@ss.hasPermi('maple:customerServer:export')")
    @Log(title = "客服中心", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, CustomerServer customerServer)
    {
        List<CustomerServer> list = customerServerService.selectCustomerServerList(customerServer);
        ExcelUtil<CustomerServer> util = new ExcelUtil<CustomerServer>(CustomerServer.class);
        util.exportExcel(response, list, "客服中心数据");
    }

    /**
     * 获取客服中心详细信息
     */
    @PreAuthorize("@ss.hasPermi('maple:customerServer:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(customerServerService.selectCustomerServerById(id));
    }

    /**
     * 新增客服中心
     */
    @PreAuthorize("@ss.hasPermi('maple:customerServer:add')")
    @Log(title = "客服中心", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody CustomerServer customerServer)
    {
        return toAjax(customerServerService.insertCustomerServer(customerServer));
    }

    /**
     * 修改客服中心
     */
    @PreAuthorize("@ss.hasPermi('maple:customerServer:edit')")
    @Log(title = "客服中心", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody CustomerServer customerServer)
    {
        return toAjax(customerServerService.updateCustomerServer(customerServer));
    }

    /**
     * 删除客服中心
     */
    @PreAuthorize("@ss.hasPermi('maple:customerServer:remove')")
    @Log(title = "客服中心", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        for (int i = 0; i < ids.length; i++) {
            customerServerBindService.deleteCustomeSerVerBindByServerId(ids[i]);
        }
        return toAjax(customerServerService.deleteCustomerServerByIds(ids));
    }
}
