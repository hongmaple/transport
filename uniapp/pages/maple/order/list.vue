<template>
	<view>
		<cu-custom bgColor="bg-gradual-blue" :isBack="false">
			<!-- <block slot="backText">返回</block> -->
			<block slot="content">订单列表</block>
		</cu-custom>
		<view style="width: 100%;height: 100%;background-color: #fff;">
					<scroll-view scroll-y class="bg-white nav">
						<scroll-view scroll-x class="bg-white nav" scroll-with-animation :scroll-left="scrollLeft">
							<view class="cu-item" :class="index==TabCur?'text-green cur':''" v-for="(item,index) in tabList" :key="index" @tap="tabSelect" :data-id="index">
								{{item.text}}
							</view>
						</scroll-view>
						<view class="main">
						    <view class="empty" v-if="orderList.length==0">
						      还没有任何相关订单
						    </view>
						    <!-- 订单列表 -->
						    <block v-for="(item, index) in orderList" :key="index">
						      <view class="prod-item">
						        <view class="order-num">
									<view>
										<text>包裹ID：{{item.id}}</text>
									</view>
									<view>
										<text>快递单号：{{item.trackingNumber}}</text>
									</view>
									<view>
										<text>商品名：{{item.name}}</text>
									</view>
									<view>
										<text>数量：{{item.num}}</text>
									</view>
									<view>
										<text>邮寄仓库：{{item.warehouse.name}}</text>
									</view>
						          	<view>
						          		<text>备注：{{item.remark}}</text>	
						          	</view>
									<view v-if="item.status>=1">
										<view>
											<text>入库时间：{{item.warehousingTime}}</text>	
										</view>
										<view>
											<text>入库拍照</text>	
										</view>
										<view>
											<image style="width: 200rpx;height: 200rpx;margin-left: 20rpx;" :src="config.baseUrl +item.warehousingImg"></image>
										</view>
										<view>
											<text>体积：{{item.volume}}</text>	
										</view>
										<view>
											<text>重量：{{item.weight}} KG</text>	
										</view>
										<view>
											<text>运费：{{item.freightPrice}}</text>	
										</view>
										<view>
											<text>总价：{{item.totalPrice}}</text>	
										</view>
									</view>
								  
						          <view class="order-state">
						            <view class="clear-btn" v-if="item.status==5">
						              <image src="/static/images/icon/maple/clear-his.png" class="clear-list-btn" @tap="delOrderList" :data-ordernum="item.orderId"></image>
						            </view>
						          </view>
						        </view>
						        <!-- 商品列表 -->
						        <!-- 一个订单单个商品的显示 -->
						        <block v-if="item.orderDetails.length==1">
						          <block v-for="(prod, index2) in item.orderDetails" :key="index2">
						            <view>
						              <view class="item-cont" @tap="toOrderDetailPage" :data-ordernum="item.orderId">
						                <view class="prod-pic">
						                  <image :src="config.baseUrl+prod.coverUrl"></image>
						                </view>
						                <view class="prod-info">
						                  <view class="prodname">
						                    {{prod.goodsName}}
						                  </view>
						                  <view class="prod-info-cont">{{prod.num}}</view>
						                  <view class="price-nums">
						                    <text class="prodprice"><text class="symbol">￥</text>
						                    <text class="big-num">{{prod.price}}</text>
						                    <text class="small-num">.{{prod.price}}</text></text>
						                    <text class="prodcount">x{{prod.num}}</text>
						                  </view>
						                </view>
						              </view>
						            </view>
						          </block>
						        </block>
						        <!-- 一个订单多个商品时的显示 -->
						        <block v-else>
						          <view class="item-cont" @tap="toOrderDetailPage" :data-ordernum="item.orderId">
						            <scroll-view scroll-x="true" scroll-left="0" scroll-with-animation="false" class="categories">
						              <block v-for="(prod, index2) in item.orderDetails" :key="index2">
						                <view class="prod-pic">
						                  <image :src="config.baseUrl+prod.coverUrl"></image>
						                </view>
						              </block>
						            </scroll-view>
						          </view>
						        </block>
						
						        <view class="total-num">
						          <text class="prodcount">共{{item.num}}件商品</text>
						          <view class="prodprice" v-if="item.status==2">合计：
						            <text class="symbol">￥</text>
						            <text class="big-num">{{item.totalPrice}}</text>
						          </view>
						        </view>
						        <!-- end 商品列表 -->
						        <view class="prod-foot">
						          <view class="btn">
						            <text v-if="item.status==1" class="button" @tap="applyForMailing" :data-ordernum="item.id" hover-class="none">申请邮寄</text>
						            <text v-if="item.status==2" class="button warn" @tap="normalPay" :data-ordernum="item.id" hover-class="none">去支付</text>
						            <text v-if="item.status==4 || item.status==5" class="button" @tap="toDetailPage" :data-ordernum="item.id" hover-class="none">查看物流</text>
						            <!-- <text v-if="item.status==4" class="button warn" @tap="onConfirmReceive" :data-ordernum="item.orderId" hover-class="none">确认收货</text> -->
						          </view>
						        </view>
						      </view>
						
						    </block>
						  </view>
						  <!-- end 订单列表 -->
					</scroll-view>
		</view>
		<view style="height: 100%;">
			<uni-popup ref="popup" type="bottom" background-color="#fff" :mask-click="false">
			 <view style="height: 800rpx;">
				             <view style="height: 100rpx;margin-top: 20rpx;padding-left: 10rpx; padding-right: 10rpx;">
				 				 <button class="cu-btn block bg-blue lg round" style="height: 60rpx;width: 200rpx;float: left;" @click="handleQueDing">确定</button>
				 				 <button class="cu-btn block bg-blue lg round" style="height: 60rpx;width: 200rpx;float: right;" @click="handleQuxiao">取消</button>
				 			 </view>
				 			 <uni-section title="我的地址" type="line"></uni-section>
				 			  <scroll-view scroll-y class="bg-white nav">
								  <radio-group @change="addressChange">
								   <block v-for="(item, index2) in addressList" :key="index2">
									   <view style="width: 100%;margin-left: 20rpx;border-bottom: 1rpx solid gray;height: 120rpx;margin-top: 10rpx;">
										   <view style="float: left; width: 100rpx;text-align: center;">
											   <radio :value="index2 + ''" :checked="item.isDefault" />
										   </view>
										   <view style="float: left; width: 500rpx; margin-left: 30rpx;">
											   <text style="font-size: 30rpx;font-weight: 900;">{{item.address | substr}}</text>
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
							  <view style="position: fixed;bottom: 0;width: 100%;">
							  	<view class="cu-bar bg-white tabbar border shop">
							  		<view class="bg-red submit" @click="addAddress">添加地址</view>
							  	</view>
							  </view>
			   </view>
			  </uni-popup>			
		  </view>
		</view>
	</view>
</template>

<script>
	import {listOrder,updateOrder} from '@/api/maple/order.js'
	import config from '@/config'
	import {listAddress,setDefault} from '@/api/maple/address.js' 
	export default {
		data() {
			return {
				config: config,
				TabCur: 0,
				scrollLeft: 0,
				tabList: [
					{
						text: '待入库',
						value: 0
					},
					{
						text: '已入库',
						value: 1
					},
					{
						text: '待支付',
						value: 2
					},
					{
						text: '待发货',
						value: 3
					},
					{
						text: '已发货',
						value: 4
					},
					{
						text: '已到达',
						value: 5
					},
				],
				orderList: [],
				addressList: [
				],
				applyForMailingFrom: {
					id: null,
					consignee: null,
					address: null,
					phone: null,
					status: 2
				},
				payFrom: {
					id: null,
					status: 3
				}
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
		created() {
			let queryParams = {
					pageNum: 1,
					pageSize: 9999,
					status: 0
			}	
			this.list(queryParams);
		},
		onShow() {
			let queryParams = {
					pageNum: 1,
					pageSize: 9999
			}	
			listAddress(queryParams).then(res => {
				this.addressList = res.rows;
			});
		},
		methods: {
			tabSelect(e) {
				this.TabCur = e.currentTarget.dataset.id;
				this.scrollLeft = (e.currentTarget.dataset.id - 1) * 60
				let queryParams = {
						pageNum: 1,
						pageSize: 9999,
						status: e.currentTarget.dataset.id
				}	
				this.list(queryParams);
			},
			list(queryParams) {
				listOrder(queryParams).then(res => {
					this.orderList = res.rows
				});
			},
			applyForMailing(e) {
				this.applyForMailingFrom.id = e.currentTarget.dataset.ordernum
				let queryParams = {
						pageNum: 1,
						pageSize: 9999
				}	
				listAddress(queryParams).then(res => {
					this.addressList = res.rows;
				});
				 // 通过组件定义的ref调用uni-popup方法 ,如果传入参数 ，type 属性将失效 ，仅支持 ['top','left','bottom','right','center']
				 this.$refs.popup.open('bottom')
			},
			//确定
			handleQueDing() {
				this.$refs.popup.close();
				updateOrder(this.applyForMailingFrom).then(res => {
					this.$modal.msgSuccess("申请成功");
					this.TabCur = 2;
					let queryParams = {
										pageNum: 1,
										pageSize: 9999,
										status: 2
					}	
					this.list(queryParams);
				})
			},
			handleQuxiao() {
				this.$refs.popup.close();
			},
			addressChange(evt) {
				var address = this.addressList[evt.detail.value];
				setDefault(address.id);
				this.applyForMailingFrom.consignee = address.name;
				this.applyForMailingFrom.address = address.address;
				this.applyForMailingFrom.phone = address.phone;
			},
			//去支付
			normalPay(e) {
				this.payFrom.id = e.currentTarget.dataset.ordernum;
				// updateOrder(this.payFrom).then(res => {
				// 	this.$modal.msgSuccess("付款成功");
				// 	this.TabCur = 3;
				// 	let queryParams = {
				// 						pageNum: 1,
				// 						pageSize: 9999,
				// 						status: 3
				// 	}	
				// 	this.list(queryParams);
				// })
				this.$tab.navigateTo('/pages/maple/order/pay?id='+e.currentTarget.dataset.ordernum)
			},
			addAddress() {
				this.$tab.navigateTo('/pages/maple/address/addOrUpdate')
			},
			edit(id) {
				uni.navigateTo({url: '/pages/maple/address/addOrUpdate?id='+id})
			},
			toDetailPage(e) {
				uni.navigateTo({url: '/pages/maple/order/detail?id='+e.currentTarget.dataset.ordernum})
			}
		}
	}
</script>

<style lang="scss">
	@import "./orderList.css";
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
</style>
