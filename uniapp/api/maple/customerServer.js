import request from '@/utils/request'

// 获取绑定客服
export function getBindCustmoerServer(query) {
  return request({
    url: '/maple/custmoerServerBind/bind',
    method: 'post',
    params: query,
	headers: {
	      isToken: false,
	      // 可以自定义 Authorization
		  // 'Authorization': 'Basic d2ViOg=='
	}
  })
}

