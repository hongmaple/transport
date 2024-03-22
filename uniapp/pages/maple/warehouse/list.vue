<template>
	<view class="mine-container">
		<cu-custom bgColor="bg-gradual-blue" :isBack="true">
			<block slot="backText">返回</block>
			<block slot="content">仓库中心</block>
		</cu-custom>
		<block v-for="(item,index) in warehouseList" :key="index">
					   <scroll-view scroll-y="true">
						   <view class="item">
								<view style="float: left;width: 100%;margin-top: 10rpx;">
									<text class="font-20 text-black padding-top-xs" >仓库名：{{item.name}}</text>
								</view>
								<view style="float: left;width: 100%;margin-top: 10rpx;">
									<text class="font-18 text-gray padding-top-xs">地址：{{item.address}}</text>
								</view>
								<view style="float: left;width: 100%;margin-top: 10rpx;">
									<text class="font-18 text-gray padding-top-xs">联系人：{{item.consignee}} {{item.phone}}</text>
								</view>
								<view style="float: left;width: 100%;margin-top: 10rpx;">
									<text class="font-18 text-gray padding-top-xs">邮编：{{item.postalCode}}</text>
								</view>
						   </view>
					   </scroll-view>
		</block> 
	</view>
</template>

<script>
	import {listWarehouse} from '@/api/maple/warehouse.js'
	export default {
		data() {
			return {
				warehouseList: []
			}
		},
		onLoad() {
			let queryParams = {
			        pageNum: 1,
			        pageSize: 999,
			}
			listWarehouse(queryParams).then(res => {
				this.warehouseList = res.rows;
			});
		},
		methods: {
			
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
	
    .item {
		border-bottom: 2rpx solid aliceblue;
		margin-top: 20rpx;
		padding-left: 20rpx;
		padding-top: 30rpx;
		font-size: 50rpx;
		margin-left: 30rpx;
	}
</style>
