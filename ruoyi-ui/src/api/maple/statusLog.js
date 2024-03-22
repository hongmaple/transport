import request from '@/utils/request'

// 查询状态日志列表
export function listStatusLog(query) {
  return request({
    url: '/maple/statusLog/list',
    method: 'get',
    params: query
  })
}

// 查询状态日志详细
export function getStatusLog(id) {
  return request({
    url: '/maple/statusLog/' + id,
    method: 'get'
  })
}

// 新增状态日志
export function addStatusLog(data) {
  return request({
    url: '/maple/statusLog',
    method: 'post',
    data: data
  })
}

// 修改状态日志
export function updateStatusLog(data) {
  return request({
    url: '/maple/statusLog',
    method: 'put',
    data: data
  })
}

// 删除状态日志
export function delStatusLog(id) {
  return request({
    url: '/maple/statusLog/' + id,
    method: 'delete'
  })
}
