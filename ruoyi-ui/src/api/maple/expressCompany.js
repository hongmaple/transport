import request from '@/utils/request'

// 查询快递公司列表
export function listExpressCompany(query) {
  return request({
    url: '/maple/expressCompany/list',
    method: 'get',
    params: query
  })
}

// 查询快递公司详细
export function getExpressCompany(id) {
  return request({
    url: '/maple/expressCompany/' + id,
    method: 'get'
  })
}

// 新增快递公司
export function addExpressCompany(data) {
  return request({
    url: '/maple/expressCompany',
    method: 'post',
    data: data
  })
}

// 修改快递公司
export function updateExpressCompany(data) {
  return request({
    url: '/maple/expressCompany',
    method: 'put',
    data: data
  })
}

// 删除快递公司
export function delExpressCompany(id) {
  return request({
    url: '/maple/expressCompany/' + id,
    method: 'delete'
  })
}
