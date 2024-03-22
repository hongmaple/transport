package com.ruoyi.maple.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.maple.mapper.CarouselChartMapper;
import com.ruoyi.maple.domain.CarouselChart;
import com.ruoyi.maple.service.ICarouselChartService;

/**
 * 轮播图Service业务层处理
 * 
 * @author maple
 * @date 2024-01-07
 */
@Service
public class CarouselChartServiceImpl implements ICarouselChartService 
{
    @Autowired
    private CarouselChartMapper carouselChartMapper;

    /**
     * 查询轮播图
     * 
     * @param id 轮播图主键
     * @return 轮播图
     */
    @Override
    public CarouselChart selectCarouselChartById(Long id)
    {
        return carouselChartMapper.selectCarouselChartById(id);
    }

    /**
     * 查询轮播图列表
     * 
     * @param carouselChart 轮播图
     * @return 轮播图
     */
    @Override
    public List<CarouselChart> selectCarouselChartList(CarouselChart carouselChart)
    {
        return carouselChartMapper.selectCarouselChartList(carouselChart);
    }

    /**
     * 新增轮播图
     * 
     * @param carouselChart 轮播图
     * @return 结果
     */
    @Override
    public int insertCarouselChart(CarouselChart carouselChart)
    {
        return carouselChartMapper.insertCarouselChart(carouselChart);
    }

    /**
     * 修改轮播图
     * 
     * @param carouselChart 轮播图
     * @return 结果
     */
    @Override
    public int updateCarouselChart(CarouselChart carouselChart)
    {
        return carouselChartMapper.updateCarouselChart(carouselChart);
    }

    /**
     * 批量删除轮播图
     * 
     * @param ids 需要删除的轮播图主键
     * @return 结果
     */
    @Override
    public int deleteCarouselChartByIds(Long[] ids)
    {
        return carouselChartMapper.deleteCarouselChartByIds(ids);
    }

    /**
     * 删除轮播图信息
     * 
     * @param id 轮播图主键
     * @return 结果
     */
    @Override
    public int deleteCarouselChartById(Long id)
    {
        return carouselChartMapper.deleteCarouselChartById(id);
    }
}
