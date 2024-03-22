import request from '@/utils/request'

// 查询商品列表
export function listGoods(query) {
  return request({
    url: '/maple/goods/list',
    method: 'get',
    params: query
  })
}

// 查询商品详细
export function getGoods(id) {
  return request({
    url: '/maple/goods/' + id,
    method: 'get'
  })
}