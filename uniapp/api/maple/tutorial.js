import request from '@/utils/request'

// 查询教程中心列表
export function listTutorial(query) {
  return request({
    url: '/maple/tutorial/list',
    method: 'get',
    params: query,
	headers: {
	      isToken: false,
	      // 可以自定义 Authorization
		  // 'Authorization': 'Basic d2ViOg=='
	}
  })
}

// 查询教程中心详细
export function getTutorial(id) {
  return request({
    url: '/maple/tutorial/' + id,
    method: 'get',
	headers: {
	      isToken: false,
	      // 可以自定义 Authorization
		  // 'Authorization': 'Basic d2ViOg=='
	}
  })
}