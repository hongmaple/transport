import request from '@/utils/request'

// 查询帮助中心列表
export function listHelp(query) {
  return request({
    url: '/maple/help/list',
    method: 'get',
    params: query,
	headers: {
	      isToken: false,
	      // 可以自定义 Authorization
		  // 'Authorization': 'Basic d2ViOg=='
	}
  })
}

// 查询帮助中心详细
export function getHelp(id) {
  return request({
    url: '/maple/help/' + id,
    method: 'get',
	headers: {
	      isToken: false,
	      // 可以自定义 Authorization
		  // 'Authorization': 'Basic d2ViOg=='
	}
  })
}