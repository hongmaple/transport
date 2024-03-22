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
