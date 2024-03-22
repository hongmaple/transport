import request from '@/utils/request'

// 查询轮播图列表
export function listCarouselChart(query) {
  return request({
    url: '/maple/carouselChart/list',
    method: 'get',
    params: query
  })
}

// 查询轮播图详细
export function getCarouselChart(id) {
  return request({
    url: '/maple/carouselChart/' + id,
    method: 'get'
  })
}

// 新增轮播图
export function addCarouselChart(data) {
  return request({
    url: '/maple/carouselChart',
    method: 'post',
    data: data
  })
}

// 修改轮播图
export function updateCarouselChart(data) {
  return request({
    url: '/maple/carouselChart',
    method: 'put',
    data: data
  })
}

// 删除轮播图
export function delCarouselChart(id) {
  return request({
    url: '/maple/carouselChart/' + id,
    method: 'delete'
  })
}
