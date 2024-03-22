import request from '@/utils/request'

// 查询地址列表
export function listAddress(query) {
  return request({
    url: '/maple/address/list',
    method: 'get',
    params: query
  })
}

// 查询地址详细
export function getAddress(id) {
  return request({
    url: '/maple/address/' + id,
    method: 'get'
  })
}

// 新增地址
export function addAddress(data) {
  return request({
    url: '/maple/address',
    method: 'post',
    data: data
  })
}

// 修改地址
export function updateAddress(data) {
  return request({
    url: '/maple/address',
    method: 'put',
    data: data
  })
}

// 删除地址
export function delAddress(id) {
  return request({
    url: '/maple/address/' + id,
    method: 'delete'
  })
}
