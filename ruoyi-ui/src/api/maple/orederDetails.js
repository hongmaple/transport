import request from '@/utils/request'

// 查询订单详情列表
export function listOrederDetails(query) {
  return request({
    url: '/maple/orederDetails/list',
    method: 'get',
    params: query
  })
}

// 查询订单详情详细
export function getOrederDetails(orderId) {
  return request({
    url: '/maple/orederDetails/' + orderId,
    method: 'get'
  })
}

// 新增订单详情
export function addOrederDetails(data) {
  return request({
    url: '/maple/orederDetails',
    method: 'post',
    data: data
  })
}

// 修改订单详情
export function updateOrederDetails(data) {
  return request({
    url: '/maple/orederDetails',
    method: 'put',
    data: data
  })
}

// 删除订单详情
export function delOrederDetails(orderId) {
  return request({
    url: '/maple/orederDetails/' + orderId,
    method: 'delete'
  })
}
