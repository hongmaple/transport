<template>
  <view class="normal-login-container">
	<cu-custom bgColor="bg-gradual-blue" :isBack="true">
		<block slot="backText">返回</block>
		<block slot="content">导航栏</block>
	</cu-custom>
    <view class="login-form-content">
      <view class="input-item flex align-center">
        <view class="iconfont icon-user icon"></view>
        <input v-model="registeFrom.username" class="input" type="text" placeholder="请输入账号" maxlength="30" />
      </view>
      <view class="input-item flex align-center">
        <view class="iconfont icon-password icon"></view>
        <input v-model="registeFrom.password" type="password" class="input" placeholder="请输入密码" maxlength="20" />
      </view>
      <view class="input-item flex align-center" style="width: 60%;margin: 0px;" v-if="captchaEnabled">
        <view class="iconfont icon-code icon"></view>
        <input v-model="registeFrom.code" type="number" class="input" placeholder="请输入验证码" maxlength="4" />
        <view class="login-code"> 
          <image :src="codeUrl" @click="getCode" class="login-code-img"></image>
        </view  >
      </view>
      <view class="action-btn">
        <button @click="handleRegiste" class="login-btn cu-btn block bg-blue lg round">注册</button>
      </view>
	  
	  <view class="flex zhuce">
	  	   <navigator hover-class="navigator-hover"  url="login">
	  			<view class="text-blue">去登录</view>
	  		</navigator>
	  </view>
    </view>

    <view class="xieyi text-center">
      <text class="text-grey1">注册即代表同意</text>
      <text @click="handleUserAgrement" class="text-blue">《用户协议》</text>
      <text @click="handlePrivacy" class="text-blue">《隐私协议》</text>
    </view>
  </view>
</template>

<script>
  import { getCodeImg, registe } from '@/api/login'

  export default {
    data() {
      return {
        codeUrl: "",
        captchaEnabled: true,
        globalConfig: getApp().globalData.config,
        registeFrom: {
          username: "",
          password: "",
          code: "",
          uuid: ''
        }
      }
    },
    created() {
      this.getCode()
    },
    methods: {
      // 隐私协议
      handlePrivacy() {
        let site = this.globalConfig.appInfo.agreements[0]
        this.$tab.navigateTo(`/pages/common/webview/index?title=${site.title}&url=${site.url}`)
      },
      // 用户协议
      handleUserAgrement() {
        let site = this.globalConfig.appInfo.agreements[1]
        this.$tab.navigateTo(`/pages/common/webview/index?title=${site.title}&url=${site.url}`)
      },
      // 获取图形验证码
      getCode() {
        getCodeImg().then(res => {
          this.captchaEnabled = res.captchaEnabled === undefined ? true : res.captchaEnabled
          if (this.captchaEnabled) {
            this.codeUrl = 'data:image/gif;base64,' + res.img
            this.registeFrom.uuid = res.uuid
          }
        })
      },
      // 登录方法
      async handleRegiste() {
        if (this.registeFrom.username === "") {
          this.$modal.msgError("请输入您的账号")
        } else if (this.registeFrom.password === "") {
          this.$modal.msgError("请输入您的密码")
        } else if (this.registeFrom.code === "" && this.captchaEnabled) {
          this.$modal.msgError("请输入验证码")
        } else {
          this.$modal.loading("注册中...")
          this.registeHandler()
        }
      },
      async registeHandler() {
		  this.registeFrom.confirmPassword = this.registeFrom.password
		  registe(this.registeFrom).then(res => {
			  this.$modal.closeLoading()
			  this.$modal.msgSuccess('注册成功')
			  this.$tab.navigateBackDelay(1200)
		  }).catch(() => {
			  if (this.captchaEnabled) {
			    this.getCode()
			  }
		  })
      }
    }
  }
</script>

<style lang="scss">
  page {
    background-color: #ffffff;
  }

  .normal-login-container {
    width: 100%;

    .logo-content {
      width: 100%;
      font-size: 21px;
      text-align: center;
      padding-top: 15%;

      image {
        border-radius: 4px;
      }

      .title {
        margin-left: 10px;
      }
    }

    .login-form-content {
      text-align: center;
      margin: 20px auto;
      margin-top: 15%;
      width: 80%;

      .input-item {
        margin: 20px auto;
        background-color: #f5f6f7;
        height: 45px;
        border-radius: 20px;

        .icon {
          font-size: 38rpx;
          margin-left: 10px;
          color: #999;
        }

        .input {
          width: 100%;
          font-size: 14px;
          line-height: 20px;
          text-align: left;
          padding-left: 15px;
        }

      }

      .login-btn {
        margin-top: 40px;
        height: 45px;
      }

      .xieyi {
        color: #333;
        margin-top: 20px;
      }
      
      .login-code {
        height: 38px;
        float: right;
      
        .login-code-img {
          height: 38px;
          position: absolute;
          margin-left: 10px;
          width: 200rpx;
        }
      }
	  
	  .zhuce {
	  		  justify-content: flex-end;
	  		  padding: 40rpx 0;
	  		  .btn {
	  			  box-sizing: content-box;
	  			  text-decoration: underline;
	  		  }
	  }
    }
  }

</style>