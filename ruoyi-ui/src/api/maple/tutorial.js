import request from '@/utils/request'

// 查询教程中心列表
export function listTutorial(query) {
  return request({
    url: '/maple/tutorial/list',
    method: 'get',
    params: query
  })
}

// 查询教程中心详细
export function getTutorial(id) {
  return request({
    url: '/maple/tutorial/' + id,
    method: 'get'
  })
}

// 新增教程中心
export function addTutorial(data) {
  return request({
    url: '/maple/tutorial',
    method: 'post',
    data: data
  })
}

// 修改教程中心
export function updateTutorial(data) {
  return request({
    url: '/maple/tutorial',
    method: 'put',
    data: data
  })
}

// 删除教程中心
export function delTutorial(id) {
  return request({
    url: '/maple/tutorial/' + id,
    method: 'delete'
  })
}
