<template>
	<view class="mine-container">
		<cu-custom bgColor="bg-gradual-blue" :isBack="true">
			<block slot="backText">返回</block>
			<block slot="content">地址列表</block>
		</cu-custom>
		<view>
			<scroll-view scroll-y class="bg-white nav">
               <radio-group @change="addressChange">
                <block v-for="(item, index2) in addressList" :key="index2">
             	   <view style="width: 100%;margin-left: 10rpx;border-bottom: 1rpx solid gray;height: 120rpx;margin-top: 20rpx;">
             		   <view style="float: left; width: 100rpx;text-align: center;">
             			   <radio :value="item.id + ''" :checked="item.isDefault" />
             		   </view>
             		   <view style="float: left; width: 500rpx; margin-left: 30rpx;">
             			   <text style="font-size: 30rpx;font-weight: 900;">{{item.address | substr }}</text>
             			   <view>
             				   <text>{{item.name}}</text>
             					<text style="margin-left: 20rpx;">{{item.phone}}</text>
             			   </view>
             		   </view>
					   <view @click="edit(item.id)" style="float: left;width: 50rpx;text-align: center;height: 100%;">
						   <image style="width: 50rpx;height: 50rpx;" src="../../../static/images/icon/maple/edit.png"/>
					   </view>
             	   </view>
                </block>
               </radio-group>
			</scroll-view>
		</view>
		<view style="position: fixed;bottom: 0;width: 100%;">
			<view class="cu-bar bg-white tabbar border shop">
				<view class="bg-red submit" @click="addAddress">添加地址</view>
			</view>
		</view>
	</view>
</template>

<script>
	import {listAddress,setDefault} from '@/api/maple/address.js'
	export default {
		data() {
			return {
				addressList: []
			}
		},
		filters: {
				geturl(val) {
					//return '/static/images/profile.jpg'
					return config.baseUrl + val
				},
				substr(val) {
					if(!val || val.length<12) return val
					return val.substr(0,12) + '...'
				}
		},
		onLoad() {
			
		},
		onShow() {
			this.getList();
		},
		methods: {
			getList() {
				let queryParams = {
				        pageNum: 1,
				        pageSize: 999,
				}
				listAddress(queryParams).then(res => {
					this.addressList = res.rows;
				});
			},
			addAddress() {
				this.$tab.navigateTo('/pages/maple/address/addOrUpdate')
			},
			edit(id) {
				uni.navigateTo({url: '/pages/maple/address/addOrUpdate?id='+id})
			},
			addressChange(evt) {
				console.log(evt.detail.value)
				setDefault(evt.detail.value);
			},
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
