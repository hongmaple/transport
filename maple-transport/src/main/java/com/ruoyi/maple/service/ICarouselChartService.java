package com.ruoyi.maple.service;

import java.util.List;
import com.ruoyi.maple.domain.CarouselChart;

/**
 * 轮播图Service接口
 * 
 * @author maple
 * @date 2024-01-07
 */
public interface ICarouselChartService 
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
     * 批量删除轮播图
     * 
     * @param ids 需要删除的轮播图主键集合
     * @return 结果
     */
    public int deleteCarouselChartByIds(Long[] ids);

    /**
     * 删除轮播图信息
     * 
     * @param id 轮播图主键
     * @return 结果
     */
    public int deleteCarouselChartById(Long id);
}
