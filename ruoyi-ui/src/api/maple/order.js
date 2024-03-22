import request from '@/utils/request'

// 查询订单列表
export function listOrder(query) {
  return request({
    url: '/maple/order/list',
    method: 'get',
    params: query
  })
}

// 查询订单详细
export function getOrder(id) {
  return request({
    url: '/maple/order/' + id,
    method: 'get'
  })
}

// 新增订单
export function addOrder(data) {
  return request({
    url: '/maple/order',
    method: 'post',
    data: data
  })
}

// 修改订单
export function updateOrder(data) {
  console.log(data);
  return request({
    url: '/maple/order',
    method: 'put',
    data: data
  })
}

// 删除订单
export function delOrder(id) {
  return request({
    url: '/maple/order/' + id,
    method: 'delete'
  })
}

// 发货
export function faHuo(data) {
  return request({
    url: '/maple/order/faHuo',
    method: 'post',
    data: data
  })
}
