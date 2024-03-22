import request from '@/utils/request'

// 查询反馈中心列表
export function listFeedback(query) {
  return request({
    url: '/maple/feedback/list',
    method: 'get',
    params: query
  })
}

// 查询反馈中心详细
export function getFeedback(id) {
  return request({
    url: '/maple/feedback/' + id,
    method: 'get'
  })
}

// 新增反馈中心
export function addFeedback(data) {
  return request({
    url: '/maple/feedback',
    method: 'post',
    data: data
  })
}

// 修改反馈中心
export function updateFeedback(data) {
  return request({
    url: '/maple/feedback',
    method: 'put',
    data: data
  })
}

// 删除反馈中心
export function delFeedback(id) {
  return request({
    url: '/maple/feedback/' + id,
    method: 'delete'
  })
}
