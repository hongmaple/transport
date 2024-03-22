<template>
	<view style="text-align: center;">
		<cu-custom bgColor="bg-gradual-blue" :isBack="true">
			<block slot="backText">返回</block>
			<block slot="content">客服中心</block>
		</cu-custom>
		<text style="font-size: 35rpx;font-weight: 100;">手机号：{{custmomerServer.phone}}</text>
		<view style="margin-top: 10rpx;margin-bottom: 10rpx"></view>
		<image style="850rpx;height: 850rpx;;" :src="baseUrl+custmomerServer.wxUrl"></image>
	</view>
</template>

<script>
	  import config from '@/config'
	  import { getBindCustmoerServer } from '@/api/maple/customerServer.js'
	  
	   const baseUrl = config.baseUrl
	export default {
		data() {
			return {
				custmomerServer: {},
				baseUrl: baseUrl
			}
		},
		/**
		 * 生命周期函数--监听页面初次渲染完成
		 */
		onReady: function () {
			
		},
		onLoad: function () {
			getBindCustmoerServer().then(res => {
			  this.custmomerServer = res.data
			})
		},
		methods: {
			
		}
	}
</script>

<style lang="scss">
  page {
    background-color: #ffffff;
  }

  .normal-customer-container {
    width: 100%;

  }

</style>

