<template>
  <view class="mine-container">
	  <cu-custom bgColor="bg-gradual-blue" :isBack="true">
		  <block slot="backText">
			  <image style="width: 100rpx;height: 100rpx;" :src="globalConfig.appInfo.logo" mode="widthFix"></image>
		 </block>
		  <block slot="content">{{globalConfig.appInfo.name}} 欢迎您</block>
	  </cu-custom>
<!-- 	  		<uni-section title="带返回箭头+右侧图标" subTitle="使用 left-icon/right-icon 设置左右图标" type="line"
	  			style="margin-bottom: 3px;">
	  			<view class="box-bg">
	  				<uni-nav-bar shadow left-icon="left" right-icon="cart" title="标题" />
	  			</view>
	  		</uni-section> -->
	  <!-- 轮播图 -->
	  <view>
		  <uni-swiper-dot class="uni-swiper-dot-box" :info="carouselChartList" :current="current" field="content">
		    <swiper class="swiper-box" :current="swiperDotIndex" @change="changeSwiper">
		      <swiper-item v-for="(item, index) in carouselChartList" :key="index">
		        <view class="swiper-item" @click="clickBannerItem(item)">
		          <image :src="config.baseUrl+item.imgUrl" mode="aspectFill" :draggable="false" />
		        </view>
		      </swiper-item>
		    </swiper>
		  </uni-swiper-dot>
	  </view>
	  <view class="addBaoGuo-box" @click="toAddOrder()">
		  <image style="width: 100rpx;height: 100rpx;" src="/static/images/icon/maple/baoguoAdd.png"></image>
		  <view>添加包裹</view>
	  </view>
	  <!-- 宫格组件 -->
	  <view class="grid-body">
	    <uni-grid :column="3" :showBorder="false">
			  <uni-grid-item>
				<view @click="handleToOrderList" class="grid-item-box">
				<uni-icons type="shop-filled" size="30"></uni-icons>
				<text class="text">全部订单</text>
				</view>
			  </uni-grid-item>
			  <uni-grid-item>
				<view @click="handleToStudent" class="grid-item-box">
				  <uni-icons type="gift-filled" size="30"></uni-icons>
				  <text class="text">物流查询</text>
				</view>
			  </uni-grid-item>
			<uni-grid-item>
			  <view @click="handleToWarehouse" class="grid-item-box">
				<uni-icons type="home-filled" size="30"></uni-icons>
				<text class="text">仓库地址</text>
			  </view>
			</uni-grid-item>
			<uni-grid-item>
			  <view @click="handleAbout" class="grid-item-box">
				<uni-icons type="wallet" size="30"></uni-icons>
				<text class="text">关于我们</text>
			  </view>
			</uni-grid-item>
			<uni-grid-item>
			  <view @click="handleTutorial" class="grid-item-box">
				<uni-icons type="chat-filled" size="30"></uni-icons>
				<text class="text">新手教程</text>
			  </view>
			</uni-grid-item>
			<uni-grid-item>
			  <view @click="handleHelp" class="grid-item-box">
				<uni-icons type="wallet" size="30"></uni-icons>
				<text class="text">帮助中心</text>
			  </view>
			</uni-grid-item>
	    </uni-grid>
	  </view>
	  <!-- 公告 -->
	  <!-- <uni-section title="公告通知更多>>" type="line">
	   </uni-section> -->
	   <view style="width: 100%;margin-top: 20rpx;">
		   <view style="height: 50rpx;">
			   <view style="float: left;margin-left: 30rpx;">
			   			   <view style="color: #f99e36;float: left;font-size: 30rpx;font-weight: bold;">|</view>
			   			   <view style="float: left;margin-left: 10rpx;">公告通知</view>
			   </view>
			   <view style="float:right;margin-right: 25rpx;" @click="toNoticeIndex()">更多 >></view>
		   </view>
		   
		   <view style="width: 100%;" v-for="(item,index) in noticelist" :key="index">
			   <scroll-view scroll-y="true">
				   <view @click="toNoticeDetail(item.noticeId)" class="noticeItem">
				   	<view style="float: left;width: 100%;">
				   		<text class="font-12 text-black padding-top-xs" >{{item.noticeTitle}}</text>
				   	</view>
				   	<view style="float: left;width: 100%;">
				   		<text class="font-12 text-gray padding-top-xs">时间：{{item.createTime}}</text>
				   	</view>
				   </view>
			   </scroll-view>
		   </view>
	   </view>
  </view>
</template>

<script>
	import {listNotice} from '@/api/system/notice.js'
	import config from '@/config'
	import {listCarouselChart} from '@/api/maple/carouselChart.js'
	import { getToken } from '@/utils/auth'
  export default {
	  data() {
		  return {
			  globalConfig: getApp().globalData.config,
			  config: config,
			  noticelist:[],
			  current: 0,
			  swiperDotIndex: 0,
			  carouselChartList: []
		  }
	  },
	  filters: {
		geturl(val) {
			//return '/static/images/profile.jpg'
			return config.baseUrl + val
		},
		substr(val) {
			if(!val || val.length<8) return val
			return val.substr(0,8) + '...'
		}
	  },
    onLoad: function() {
		let queryParams = {
		        pageNum: 1,
		        pageSize: 5,
		        noticeTitle: undefined,
		        createBy: undefined,
		        status: undefined
		}
		listNotice(queryParams).then(res=>{
			this.noticelist = res.rows
		})
		listCarouselChart().then(res=>{
			this.carouselChartList = res.rows
		})
    },
	methods: {
		clickBannerItem(item) {
			console.info(item)
        },
		changeSwiper(e) {
			this.current = e.detail.current
		},
		toNoticeDetail (noticeId) {
		  uni.navigateTo({ url: '/pages/sys/notice/detail?id=' + noticeId })
		},
		toNoticeIndex() {
		  uni.navigateTo({ url: '/pages/sys/notice/index' })
		},
		toAddOrder() {
			if(!getToken()) {
				this.WxLogin();
				return;
			}
		    uni.navigateTo({ url: '/pages/maple/order/add' })
		},
		handleToOrderList() {
		 uni.switchTab({ url: '/pages/maple/order/list' })
		},
		handleToWarehouse() {
			uni.navigateTo({ url: '/pages/maple/warehouse/list' })
		},
		  handleHelp() {
			this.$tab.navigateTo('/pages/mine/help/index')
		  },
		  handleTutorial() {
			this.$tab.navigateTo('/pages/maple/tutorial/index')
		  },
      handleAbout() {
        this.$tab.navigateTo('/pages/mine/about/index')
      },
      // wx登录
      async WxLogin() {
        this.$store.dispatch('WxLogin', this.loginForm).then(() => {
          this.$modal.closeLoading()
          this.loginSuccess()
        }).catch(() => {
          if (this.captchaEnabled) {
            this.getCode()
          }
        })
      },
      // 登录成功后，处理函数
      loginSuccess(result) {
        // 设置用户信息
        this.$store.dispatch('GetInfo').then(res => {
			//if(this.$auth.hasRole('admin'))
          this.$tab.reLaunch('/pages/index')
		  //else this.$modal.msgError('无操作权限')
        })
      }
	}
  }
</script>

<style lang="scss">
  /* #ifndef APP-NVUE */
  page {
    display: flex;
    flex-direction: column;
    box-sizing: border-box;
    background-color: #fff;
    min-height: 100%;
    height: auto;
  }

  view {
    font-size: 14px;
    line-height: inherit;
  }

  /* #endif */

  .text {
    text-align: center;
    font-size: 26rpx;
    margin-top: 10rpx;
  }

  .grid-item-box {
    flex: 1;
    /* #ifndef APP-NVUE */
    display: flex;
    /* #endif */
    flex-direction: column;
    align-items: center;
    justify-content: center;
    padding: 15px 0;
  }

  .uni-margin-wrap {
    width: 690rpx;
    width: 100%;
    ;
  }

  .swiper {
    height: 300rpx;
  }

  .swiper-box {
    height: 150px;
  }

  .swiper-item {
    /* #ifndef APP-NVUE */
    display: flex;
    /* #endif */
    flex-direction: column;
    justify-content: center;
    align-items: center;
    color: #fff;
    height: 300rpx;
    line-height: 300rpx;
  }

  @media screen and (min-width: 500px) {
    .uni-swiper-dot-box {
      width: 400px;
      /* #ifndef APP-NVUE */
      margin: 0 auto;
      /* #endif */
      margin-top: 8px;
    }

    .image {
      width: 100%;
    }
  }
  
  .container .bg-sear {
    position: fixed;
    z-index: 999;
    width: 100%;
    line-height: 10rpx;
    padding: 20rpx 0;
    top: 0;
	background: #ffc900;
  }
  .addBaoGuo-box {
	  border-bottom: 1px solid gray;
	  width: 100%;
	  height: 200rpx;
	  text-align: center;
	  margin-top: 30rpx;
  }
  .noticeItem {
	  width: 100%;
	  height: 80rpx;
	  margin-top: 10rpx;
	  border-bottom: 1px solid gray;
	  margin:10rpx 10rpx 10rpx 10rpx;
	  padding-left: 30rpx;
  }
</style>
