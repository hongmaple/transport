<template>
	<view>
		<view>
			<cu-custom bgColor="bg-gradual-blue" :isBack="true">
				<block slot="backText">返回</block>
				<block slot="content">订单详情</block>
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
				<scroll-view scroll-y="true">
					<block v-for="(item,index) in listStatusLogList" :key="index">
						<view class="cu-timeline">
							<view class="cu-time">{{item.createTime}}</view>
							<view class="cu-item cur cuIcon-noticefill">
								<view class="content bg-green shadow-blur">
									<text></text> {{item.remark}}
								</view>
							</view>
						</view>
					</block>
				</scroll-view>
			</view>
			
		</view>
	</view>
</template>

<script>
	import {getOrder} from '@/api/maple/order.js'
	import config from '@/config'
	import {listStatusLog} from '@/api/maple/statusLog.js'
	export default {
			data() {
				return {
					ordrId: null,
					order: {},
					config: config,
					listStatusLogList: []
				}
			},
			onLoad(options) {
				this.ordrId = options.id;
				getOrder(this.ordrId).then(res => {
					this.order = res.data;
				})
				let queryParams = {
				   pageNum: 1,
				   pageSize: 9999,
				   targetId: this.ordrId,
				   targetType: 0
				}
				listStatusLog(queryParams).then(res => {
					this.listStatusLogList = res.rows;
				});
			},
			filters: {
				getStatus(val) {
					switch(val) {
						case "2":
						   return "待支付"
						case "3":
						   return "待发货"
						case "4":
						   return "已发货"
						case "5":
						   return "已送达"
					}
					return "";
				}
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
	