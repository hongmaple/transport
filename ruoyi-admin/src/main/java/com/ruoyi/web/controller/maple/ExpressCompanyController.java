package com.ruoyi.web.controller.maple;

import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.core.page.TableDataInfo;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.maple.domain.ExpressCompany;
import com.ruoyi.maple.service.IExpressCompanyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * 快递公司Controller
 * 
 * @author maple
 * @date 2024-01-07
 */
@RestController
@RequestMapping("/maple/expressCompany")
public class ExpressCompanyController extends BaseController
{
    @Autowired
    private IExpressCompanyService expressCompanyService;

    /**
     * 查询快递公司列表
     */
    @PreAuthorize("@ss.hasPermi('maple:expressCompany:list')")
    @GetMapping("/list")
    public TableDataInfo list(ExpressCompany expressCompany)
    {
        startPage();
        List<ExpressCompany> list = expressCompanyService.selectExpressCompanyList(expressCompany);
        return getDataTable(list);
    }

    /**
     * 导出快递公司列表
     */
    @PreAuthorize("@ss.hasPermi('maple:expressCompany:export')")
    @Log(title = "快递公司", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, ExpressCompany expressCompany)
    {
        List<ExpressCompany> list = expressCompanyService.selectExpressCompanyList(expressCompany);
        ExcelUtil<ExpressCompany> util = new ExcelUtil<ExpressCompany>(ExpressCompany.class);
        util.exportExcel(response, list, "快递公司数据");
    }

    /**
     * 获取快递公司详细信息
     */
    @PreAuthorize("@ss.hasPermi('maple:expressCompany:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(expressCompanyService.selectExpressCompanyById(id));
    }

    /**
     * 新增快递公司
     */
    @PreAuthorize("@ss.hasPermi('maple:expressCompany:add')")
    @Log(title = "快递公司", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody ExpressCompany expressCompany)
    {
        return toAjax(expressCompanyService.insertExpressCompany(expressCompany));
    }

    /**
     * 修改快递公司
     */
    @PreAuthorize("@ss.hasPermi('maple:expressCompany:edit')")
    @Log(title = "快递公司", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody ExpressCompany expressCompany)
    {
        return toAjax(expressCompanyService.updateExpressCompany(expressCompany));
    }

    /**
     * 删除快递公司
     */
    @PreAuthorize("@ss.hasPermi('maple:expressCompany:remove')")
    @Log(title = "快递公司", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(expressCompanyService.deleteExpressCompanyByIds(ids));
    }
}
