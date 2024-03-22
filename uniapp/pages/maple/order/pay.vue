<template>
	<view>
		<cu-custom bgColor="bg-gradual-blue" :isBack="true">
			<block slot="backText">返回</block>
			<block slot="content">支付</block>
		</cu-custom>
		<view class="flex-sub bg-white padding-sm margin-xs radius">
			<text>{{order.status | getStatus}}</text>
		</view>
		<view class="flex-sub bg-white padding-sm margin-xs radius">
			<view>商品信息</view>
			<view>
				<text>包裹ID：{{order.id}}</text>
			</view>
			<view>
				<text>快递单号：{{order.trackingNumber}}</text>
			</view>
			<view>
				<text>商品名：{{order.name}}</text>
			</view>
			<view>
				<text>数量：{{order.num}}</text>
			</view>
			<view>
				<text>邮寄仓库：{{order.warehouse.name}}</text>
			</view>
			<view>
				<text>备注：{{order.remark}}</text>	
			</view>
		</view>
		
		<view class="flex-sub bg-white padding-sm margin-xs radius" v-if="order.status>=1">
			<view>
				<text>入库时间：{{order.warehousingTime}}</text>	
			</view>
			<view>
				<text>入库拍照</text>	
			</view>
			<view>
				<image style="width: 200rpx;height: 200rpx;margin-left: 20rpx;" :src="config.baseUrl +order.warehousingImg"></image>
			</view>
			<view>
				<text>体积：{{order.volume}}</text>	
			</view>
			<view>
				<text>重量：{{order.weight}} KG</text>	
			</view>
			<view>
				<text>运费：{{order.freightPrice}}</text>	
			</view>
			<view >
				<text>总价：{{order.totalPrice}}</text>	
			</view>
		</view>
		
		<view class="flex-sub bg-white padding-sm margin-xs radius" v-if="order.status>=2">
			<view>
				物流信息
			</view>
			<view>
				<text>收货人：{{order.consignee}}</text>	
			</view>
			<view>
				<text>联系方式：{{order.address}}</text>	
			</view>
			<view>
				<text>地址：{{order.phone}}</text>	
			</view>
		</view>
		<!-- 商品信息 -->
		<view class="flex-sub bg-white padding-sm margin-xs radius" style="margin-bottom: 120rpx;">
			<scroll-view scroll-y class="bg-white nav">
				<block v-for="(item, index) in goodsList" :key="index">
					<view style="width: 300rpx;height: 400rpx;float: left;margin-left: 20rpx;" class="radius">
						<view style="width: 100%;float: left;">
							<image style="width: 300rpx;height: 200rpx" :src="config.baseUrl +item.coverUrl" />
						</view>
						<view style="width: 100%;float: left;font-size: 30rpx;font-weight: 300;margin-top: 20rpx;">
							{{item.title}}
						</view>
						<view style="width: 100%;float: left;margin-top: 20rpx;">
							<view style="width: 90rpx;float: left;">
								<text>{{item.price}}</text>
							</view>
							<view style="width: 150rpx;float: left;margin-left: 10rpx;">
								<view style="width: 50rpx;float: left;" v-if="item.isGouMa">
									<image @click="buyGoods(item.id,-item.price)" style="width: 50rpx;height: 50rpx;" src="../../../static/images/icon/maple/jian.png"/>
								</view>
								<view style="width: 90rpx;float: left;" v-if="item.isGouMa">
									{{item.id | getGoodsNum}} 
								</view>
								<view style="width: 50rpx;float: left;">
									<image @click="buyGoods(item.id,item.price)" style="width: 50rpx;height: 50rpx;" src="../../../static/images/icon/maple/baoguoAdd.png"/>
								</view>
							</view>
						</view>
					</view>
				</block>
			</scroll-view>
		</view>
		
		<view class="cu-bar bg-white tabbar border shop" style="position: fixed;bottom: 0;width: 100%;">
			<view class="action">
				应付金额 {{order.actualPayment}}
			</view>
			<view class="bg-red submit">立即支付</view>
		</view>
	</view>
</template>

<script>
	import {getOrder} from '@/api/maple/order.js'
	import config from '@/config'
	import {listGoods} from '@/api/maple/goods.js'
	
	export default {
		data() {
			return {
				ordrId: null,
				order: {},
				config: config,
				goodsList: []
			}
		},
		onLoad(options) {
			this.ordrId = options.id;
			getOrder(this.ordrId).then(res => {
				this.order = res.data;
				this.order.actualPayment = this.order.freightPrice;
				this.order.totalPrice = this.order.freightPrice;
			})
			let queryParams = {
			   pageNum: 1,
			   pageSize: 9999,
			   title: null,
			   price: null,
			   stock: null
			}
			listGoods(queryParams).then(res => {
				this.goodsList = res.rows;
			})
		},
		filters: {
			getStatus(val) {
				switch(val) {
					case "2":
					   return "待支付"
					case "3":
					   return "待发货"
				}
				return "";
			},
			getGoodsNum(goodsId) {
				this.goodsList.forEach(g => {
					if (g.goodsId == goodsId) {
						return g.num || 0;
					}
				})
			}
		},
		methods: {
			buyGoods(goodsId,price) {
				console.log(price)
				var newGoodsList = [];
				if (price>0) {
					//加
					this.goodsList.forEach(g => {
						if (g.goodsId == goodsId) {
							g.num += 1;
							g.isGouMa = true;
							this.order.actualPayment = this.order.actualPayment + price - this.order.preferentialPrice;
							this.order.totalPrice = this.order.totalPrice + price;
						}
						newGoodsList.push(g);
					})
					this.goodsList = newGoodsList;
					return;
				}
				
				if (price<0) {
					//减
					this.goodsList.forEach(g => {
						if (g.goodsId == goodsId) {
							g.num -= 1;
							this.order.actualPayment = this.order.actualPayment + price - this.order.preferentialPrice;
							this.order.totalPrice = this.order.totalPrice + price;
							if(g.num<=0) {
								g.num = 0;
								g.isGouMa = false;
							}
						}
						newGoodsList.push(g);
					})
					this.goodsList = newGoodsList;
					return;
				}
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
	  background-color: deepskyblue;
	  min-height: 100%;
	  height: auto;
	}
	
	view {
	  font-size: 14px;
	  line-height: inherit;
	}
	
	/* #endif */
	
</style>
