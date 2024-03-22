import request from '@/utils/request'

// 查询订单物流列表
export function listLogistics(query) {
  return request({
    url: '/maple/logistics/list',
    method: 'get',
    params: query
  })
}

// 查询订单物流详细
export function getLogistics(orederId) {
  return request({
    url: '/maple/logistics/' + orederId,
    method: 'get'
  })
}

// 新增订单物流
export function addLogistics(data) {
  return request({
    url: '/maple/logistics',
    method: 'post',
    data: data
  })
}

// 修改订单物流
export function updateLogistics(data) {
  return request({
    url: '/maple/logistics',
    method: 'put',
    data: data
  })
}

// 删除订单物流
export function delLogistics(orederId) {
  return request({
    url: '/maple/logistics/' + orederId,
    method: 'delete'
  })
}
