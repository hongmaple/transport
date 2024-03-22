import request from '@/utils/request'

// 查询轮播图列表
export function listCarouselChart(query) {
  return request({
    url: '/maple/carouselChart/list',
    method: 'get',
    params: query,
	headers: {
	      isToken: false,
	      // 可以自定义 Authorization
		  // 'Authorization': 'Basic d2ViOg=='
	    }
  })
}