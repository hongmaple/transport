package com.ruoyi.maple.mapper;

import java.util.List;
import com.ruoyi.maple.domain.CarouselChart;

/**
 * 轮播图Mapper接口
 * 
 * @author maple
 * @date 2024-01-07
 */
public interface CarouselChartMapper 
{
    /**
     * 查询轮播图
     * 
     * @param id 轮播图主键
     * @return 轮播图
     */
    public CarouselChart selectCarouselChartById(Long id);

    /**
     * 查询轮播图列表
     * 
     * @param carouselChart 轮播图
     * @return 轮播图集合
     */
    public List<CarouselChart> selectCarouselChartList(CarouselChart carouselChart);

    /**
     * 新增轮播图
     * 
     * @param carouselChart 轮播图
     * @return 结果
     */
    public int insertCarouselChart(CarouselChart carouselChart);

    /**
     * 修改轮播图
     * 
     * @param carouselChart 轮播图
     * @return 结果
     */
    public int updateCarouselChart(CarouselChart carouselChart);

    /**
     * 删除轮播图
     * 
     * @param id 轮播图主键
     * @return 结果
     */
    public int deleteCarouselChartById(Long id);

    /**
     * 批量删除轮播图
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteCarouselChartByIds(Long[] ids);
}
