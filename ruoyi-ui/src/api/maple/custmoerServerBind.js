import request from '@/utils/request'

// 查询客服微信IP绑定列表
export function listCustmoerServerBind(query) {
  return request({
    url: '/maple/custmoerServerBind/list',
    method: 'get',
    params: query
  })
}

// 查询客服微信IP绑定详细
export function getCustmoerServerBind(id) {
  return request({
    url: '/maple/custmoerServerBind/' + id,
    method: 'get'
  })
}

// 新增客服微信IP绑定
export function addCustmoerServerBind(data) {
  return request({
    url: '/maple/custmoerServerBind',
    method: 'post',
    data: data
  })
}

// 修改客服微信IP绑定
export function updateCustmoerServerBind(data) {
  return request({
    url: '/maple/custmoerServerBind',
    method: 'put',
    data: data
  })
}

// 删除客服微信IP绑定
export function delCustmoerServerBind(id) {
  return request({
    url: '/maple/custmoerServerBind/' + id,
    method: 'delete'
  })
}
