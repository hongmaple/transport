package com.ruoyi.web.controller.maple;

import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.core.page.TableDataInfo;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.maple.domain.CarouselChart;
import com.ruoyi.maple.service.ICarouselChartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * 轮播图Controller
 * 
 * @author maple
 * @date 2024-01-07
 */
@RestController
@RequestMapping("/maple/carouselChart")
public class CarouselChartController extends BaseController
{
    @Autowired
    private ICarouselChartService carouselChartService;

    /**
     * 查询轮播图列表
     */
    //@PreAuthorize("@ss.hasPermi('maple:carouselChart:list')")
    @GetMapping("/list")
    public TableDataInfo list(CarouselChart carouselChart)
    {
        startPage();
        List<CarouselChart> list = carouselChartService.selectCarouselChartList(carouselChart);
        return getDataTable(list);
    }

    /**
     * 导出轮播图列表
     */
    @PreAuthorize("@ss.hasPermi('maple:carouselChart:export')")
    @Log(title = "轮播图", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, CarouselChart carouselChart)
    {
        List<CarouselChart> list = carouselChartService.selectCarouselChartList(carouselChart);
        ExcelUtil<CarouselChart> util = new ExcelUtil<CarouselChart>(CarouselChart.class);
        util.exportExcel(response, list, "轮播图数据");
    }

    /**
     * 获取轮播图详细信息
     */
    //@PreAuthorize("@ss.hasPermi('maple:carouselChart:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(carouselChartService.selectCarouselChartById(id));
    }

    /**
     * 新增轮播图
     */
    @PreAuthorize("@ss.hasPermi('maple:carouselChart:add')")
    @Log(title = "轮播图", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody CarouselChart carouselChart)
    {
        return toAjax(carouselChartService.insertCarouselChart(carouselChart));
    }

    /**
     * 修改轮播图
     */
    @PreAuthorize("@ss.hasPermi('maple:carouselChart:edit')")
    @Log(title = "轮播图", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody CarouselChart carouselChart)
    {
        return toAjax(carouselChartService.updateCarouselChart(carouselChart));
    }

    /**
     * 删除轮播图
     */
    @PreAuthorize("@ss.hasPermi('maple:carouselChart:remove')")
    @Log(title = "轮播图", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(carouselChartService.deleteCarouselChartByIds(ids));
    }
}
