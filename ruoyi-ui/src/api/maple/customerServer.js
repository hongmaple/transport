import request from '@/utils/request'

// 查询客服中心列表
export function listCustomerServer(query) {
  return request({
    url: '/maple/customerServer/list',
    method: 'get',
    params: query
  })
}

// 查询客服中心详细
export function getCustomerServer(id) {
  return request({
    url: '/maple/customerServer/' + id,
    method: 'get'
  })
}

// 新增客服中心
export function addCustomerServer(data) {
  return request({
    url: '/maple/customerServer',
    method: 'post',
    data: data
  })
}

// 修改客服中心
export function updateCustomerServer(data) {
  return request({
    url: '/maple/customerServer',
    method: 'put',
    data: data
  })
}

// 删除客服中心
export function delCustomerServer(id) {
  return request({
    url: '/maple/customerServer/' + id,
    method: 'delete'
  })
}
