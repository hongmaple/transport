import request from '@/utils/request'

// 查询仓库列表
export function listWarehouse(query) {
  return request({
    url: '/maple/warehouse/list',
    method: 'get',
    params: query,
	headers: {
	      isToken: false,
	      // 可以自定义 Authorization
		  // 'Authorization': 'Basic d2ViOg=='
	    }
  })
}

// 查询仓库详细
export function getWarehouse(id) {
  return request({
    url: '/maple/warehouse/' + id,
    method: 'get',
	headers: {
	      isToken: false,
	      // 可以自定义 Authorization
		  // 'Authorization': 'Basic d2ViOg=='
	    }
  })
}
