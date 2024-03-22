<template>
  <view class="mine-container">
	  <cu-custom bgColor="bg-gradual-blue" :isBack="true">
	  	<block slot="backText">返回</block>
	  	<block slot="content">公告中心</block>
	  </cu-custom>
	  <view class="help-container">
	    <view v-for="(item, findex) in noticelist" :key="findex" :title="item.title" class="list-title">
	      <view class="childList">
	        <view class="question" hover-class="hover"
	         @click="toDetail(item.noticeId)">
	          <view class="text-item">{{ item.noticeTitle }}</view>
			  <text class="font-12 text-gray padding-top-xs">时间：{{item.createTime}}</text>
	          <view class="line" v-if="zindex !== noticelist.length - 1"></view>
	        </view>
	      </view>
	    </view>
	  </view>
  </view>
</template>

<script>
	import {listNotice} from '@/api/system/notice.js'
	import config from '@/config'
  export default {
	  data() {
		  return {
			  noticelist:[]
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
		this.list()
    },
	methods: {
		list() {
			listNotice().then(res=>{
				this.noticelist = res.rows
			})
		},
		toDetail (noticeId) {
		  uni.navigateTo({ url: '/pages/sys/notice/detail?id=' + noticeId })
		}
	}
  }
</script>

<style lang="scss">
	.two-list{
		.list-item {
			width: 340rpx;
			background: white;
			>image{
				width: 100%;
				height: 300rpx;
			}
			border-radius: 8rpx;
		}
	}
	
	page {
	  background-color: #f8f8f8;
	}
	
	.help-container {
	  margin-bottom: 100rpx;
	  padding: 30rpx;
	}
	
	.list-title {
	  margin-bottom: 30rpx;
	}
	
	.childList {
	  background: #ffffff;
	  box-shadow: 0px 0px 10rpx rgba(193, 193, 193, 0.2);
	  border-radius: 16rpx;
	  margin-top: 10rpx;
	}
	
	.line {
	  width: 100%;
	  height: 1rpx;
	  background-color: #F5F5F5;
	}
	
	.text-title {
	  color: #303133;
	  font-size: 32rpx;
	  font-weight: bold;
	  margin-left: 10rpx;
	
	  .iconfont {
	    font-size: 16px;
	    margin-right: 10rpx;
	  }
	}
	
	.text-item {
	  font-size: 28rpx;
	  padding: 24rpx;
	}
	
	.question {
	  color: #606266;
	  font-size: 28rpx;
	}
</style>