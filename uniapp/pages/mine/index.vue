<template>
  <view class="mine-container" :style="{height: `${windowHeight}px`}">
	  <cu-custom bgColor="bg-gradual-blue" :isBack="false">
	  	<block slot="content">我的</block>
	  </cu-custom>
    <!--顶部个人信息栏-->
    <view class="header-section">
      <view class="flex padding justify-between">
        <view class="flex align-center">
          <view v-if="!avatar" class="cu-avatar xl round bg-white">
            <view class="iconfont icon-people text-gray icon"></view>
          </view>
          <image v-if="avatar" @click="handleToAvatar" :src="avatar" class="cu-avatar xl round" mode="widthFix">
          </image>
          <view v-if="!name" @click="handleToLogin" class="login-tip">
            点击登录
          </view>
          <view v-if="name" @click="handleToInfo" class="user-info">
            <view class="u_title">
              用户名：{{ name }}
            </view>
          </view>
        </view>
        <view @click="handleToInfo" class="flex align-center">
          <text>个人信息</text>
          <view class="iconfont icon-right"></view>
        </view>
      </view>
    </view>

    <view class="content-section">
      <view class="mine-actions grid col-4 text-center">
        <view v-if="checkRole(['custom'])" class="action-item" @click="handleCustomerServer">
          <view class="iconfont icon-friendfill text-pink icon"></view>
          <text class="text">客服中心</text>
        </view>
        <view v-if="checkRole(['custom'])" class="action-item" @click="handleToOrderList">
          <view class="iconfont icon-service text-blue icon"></view>
          <text class="text">我的订单</text>
        </view>
        <view class="action-item" v-if="checkRole(['custom'])" @click="handleFreedback">
          <view class="iconfont icon-community text-mauve icon"></view>
          <text class="text">反馈</text>
        </view>
		<view class="action-item" v-if="checkRole(['custom'])"  @click="handleToAddressList">
		  <view class="iconfont icon-community text-mauve icon"></view>
		  <text class="text">我的地址</text>
		</view>
		
      </view>

      <view class="menu-list">
        <view class="list-cell list-cell-arrow" @click="handleToEditInfo">
          <view class="menu-item-box">
            <view class="iconfont icon-user menu-icon"></view>
            <view>编辑资料</view>
          </view>
        </view>
        <view class="list-cell list-cell-arrow" @click="handleHelp">
          <view class="menu-item-box">
            <view class="iconfont icon-help menu-icon"></view>
            <view>帮助中心</view>
          </view>
        </view>
        <view class="list-cell list-cell-arrow" @click="handleAbout">
          <view class="menu-item-box">
            <view class="iconfont icon-aixin menu-icon"></view>
            <view>关于我们</view>
          </view>
        </view>
        <view class="list-cell list-cell-arrow" @click="handleToSetting">
          <view class="menu-item-box">
            <view class="iconfont icon-setting menu-icon"></view>
            <view>应用设置</view>
          </view>
        </view>
      </view>

    </view>
  </view>
</template>

<script>
  import storage from '@/utils/storage'
  import { checkPermi, checkRole } from "@/utils/permission"; // 权限判断函数
	
  
  export default {
    data() {
      return {
        name: this.$store.state.user.name,
        version: getApp().globalData.config.appInfo.version
      }
    },
    computed: {
      avatar() {
        return this.$store.state.user.avatar
      },
      windowHeight() {
        return uni.getSystemInfoSync().windowHeight - 50
      }
    },
    methods: {
      handleToInfo() {
        this.$tab.navigateTo('/pages/mine/info/index')
      },
      handleToEditInfo() {
        this.$tab.navigateTo('/pages/mine/info/edit')
      },
      handleToSetting() {
        this.$tab.navigateTo('/pages/mine/setting/index')
      },
      handleToLogin() {
        this.$tab.reLaunch('/pages/login')
      },
      handleToAvatar() {
        this.$tab.navigateTo('/pages/mine/avatar/index')
      },
      handleLogout() {
        this.$modal.confirm('确定注销并退出系统吗？').then(() => {
          this.$store.dispatch('LogOut').then(() => {
            this.$tab.reLaunch('/pages/index')
          })
        })
      },
      handleHelp() {
        this.$tab.navigateTo('/pages/mine/help/index')
      },
      handleAbout() {
        this.$tab.navigateTo('/pages/mine/about/index')
      },
      handleCustomerServer() {
        //this.$modal.showToast('QQ群：133713780')
		 this.$tab.navigateTo('/pages/maple/customerServer/index')
      },
	  handleToOrderList() {
		  uni.switchTab({
		  	url: "/pages/maple/order/list"
		  })
	  },
	  handleFreedback() {
		  this.$tab.navigateTo('/pages/maple/feedback/add')
	  },
	  handleToAddressList() {
		  this.$tab.navigateTo('/pages/maple/address/index')
	  },
	  checkPermi,
	  checkRole
    }
  }
</script>

<style lang="scss">
  page {
    background-color: #f5f6f7;
  }

  .mine-container {
    width: 100%;
    height: 100%;


    .header-section {
      padding: 15px 15px 45px 15px;
      background-color: #3c96f3;
      color: white;

      .login-tip {
        font-size: 18px;
        margin-left: 10px;
      }

      .cu-avatar {
        border: 2px solid #eaeaea;

        .icon {
          font-size: 40px;
        }
      }

      .user-info {
        margin-left: 15px;

        .u_title {
          font-size: 18px;
          line-height: 30px;
        }
      }
    }

    .content-section {
      position: relative;
      top: -50px;

      .mine-actions {
        margin: 15px 15px;
        padding: 20px 0px;
        border-radius: 8px;
        background-color: white;

        .action-item {
          .icon {
            font-size: 28px;
          }

          .text {
            display: block;
            font-size: 13px;
            margin: 8px 0px;
          }
        }
      }
    }
  }
</style>
