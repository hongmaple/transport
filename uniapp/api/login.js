import request from '@/utils/request'

// 登录方法
export function login(username, password, code, uuid) {
  const data = {
    username,
    password,
    code,
    uuid
  }
  return request({
    'url': '/login',
    headers: {
      isToken: false
    },
    'method': 'post',
    'data': data
  })
}

// 注册方法
export function registe(data) {
	return request({
		url: '/registerV2',
		headers: {
			isToken: false
		},
		method: 'post',
		data
	})
}

// 获取用户详细信息
export function getInfo() {
  return request({
    'url': '/getInfo',
    'method': 'get'
  })
}

// 退出方法
export function logout() {
  return request({
    'url': '/logout',
    'method': 'post'
  })
}

// 获取验证码
export function getCodeImg() {
  return request({
    'url': '/captchaImage',
    headers: {
      isToken: false
    },
    method: 'get',
    timeout: 20000
  })
}

export function wxLogin() {
	console.log("调用了login。js的微信登录")
	uni.login({
	  provider: 'weixin', //使用微信登录
	  success: function (loginRes) {
		  var data = {
			  code: loginRes.code
		  }
		  var wxBody = {
		  	session_key: "",
		  	encryptedData: "",
		  	iv: ""
		  }
		  
		  uni.getUserInfo({
			   provider: 'weixin',
		  	   success: function (uRes) {
				console.log('用户昵称为：' + uRes.userInfo.nickName);
		  		wxBody.encryptedData = uRes.encryptedData;
		  		wxBody.iv = uRes.iv;
		  	  }
		  });
		 //  uni.login({
		 //    provider: 'weixin', //使用微信登录
		 //    success: function (loginRes) {
				
			// }})
		request({
			'url': '/getSessionToken',
			headers: {
			  isToken: false
			},
			method: 'post',
			timeout: 20000,
			data: data
		  }).then(res => {
			  wxBody.session_key = res.data;
			  return request({
			  	'url': '/wxLogin',
			  	headers: {
			  		isToken: false
			  	},
			  	method: 'post',
				timeout: 20000,
			  	data: wxBody
			  })
		  })
	  }
	});
	
}