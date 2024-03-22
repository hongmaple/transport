<template>
	<view class="container">
		<cu-custom bgColor="bg-gradual-blue" :isBack="true">
			<block slot="backText">返回</block>
			<block slot="content">添加编辑地址</block>
		</cu-custom>
		<view class="example" style="margin-top: 10rpx;margin-left: 10rpx;">
		  <uni-forms ref="form" :model="from" labelWidth="80px">
			<uni-forms-item label="收货人" name="name">
			  <uni-easyinput v-model="from.name" placeholder="请输入收货人" />
			</uni-forms-item>
			<uni-forms-item label="手机号码" name="phone">
			  <uni-easyinput v-model="from.phone" placeholder="请输入手机号码" />
			</uni-forms-item>
			<uni-forms-item label="地址" name="address">
			  <uni-easyinput type="textarea" autoHeight v-model="from.address" placeholder="请输入地址" />
			</uni-forms-item>
		  </uni-forms>
		  <button type="primary" @click="submit">提交</button>
		  <button v-if="from.id" @click="deleteAddress">删除</button>
		</view>
	</view>
</template>

<script>
	import {addAddress,getAddress,updateAddress,delAddress} from '@/api/maple/address.js'
	
	export default {
		data() {
			return {
				from: {
					id: null,
					name: null,
					phone: null,
					address: null
				},
				rules: {
				  name: {
				    rules: [{
				      required: true,
				      errorMessage: '收货人不能为空'
				    }]
				  },
				  phone: {
				    rules: [{
				      required: true,
				      errorMessage: '手机号码不能为空'
				    }, {
				      pattern: /^1[3|4|5|6|7|8|9][0-9]\d{8}$/,
				      errorMessage: '请输入正确的手机号码'
				    }]
				  },
				  address: {
				    rules: [{
				      required: true,
				      errorMessage: '地址不能为空'
				    }]
				  }
				}
			}
		},
		onLoad(options) {
			this.from.id = options.id;
			if(this.from.id) {
				getAddress(this.from.id).then(res => {
					this.from = res.data;
				})
			}
		},
		methods: {
			submit(ref) {
			  this.$refs.form.validate().then(res => {
				  if(this.from.id) {
					  updateAddress(this.from).then(response => {
						  this.$modal.msgSuccess("修改成功")
							setTimeout(() => {
								uni.navigateBack({
								  delta: 1
								});
							}, 1000)
						  return;
					  })
				  }else {
					  addAddress(this.from).then(response => {
					    this.$modal.msgSuccess("添加成功")
						setTimeout(() => {
							uni.navigateBack({
							  delta: 1
							});
						}, 1000)
					  })
				  }

			  })
			},
			deleteAddress() {
				delAddress(this.from.id).then(res => {
					this.$modal.msgSuccess("删除成功")
					setTimeout(() => {
						uni.navigateBack({
						  delta: 1
						});
					}, 1000)
				}) 
			}
		}
	}
</script>

<style>

</style>
