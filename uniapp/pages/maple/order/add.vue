<template>
	<view class="container">
		<cu-custom bgColor="bg-gradual-blue" :isBack="true">
			<block slot="backText">返回</block>
			<block slot="content">添加包裹</block>
		</cu-custom>
		<view class="example">
		  <uni-forms ref="form" :model="from" labelWidth="80px">
		    <uni-forms-item required label="快递单号" name="trackingNumber">
		      <uni-easyinput v-model="from.trackingNumber" placeholder="快递单号" />
		    </uni-forms-item>
		    <uni-forms-item required label="商品名称" name="name">
		      <uni-easyinput v-model="from.name" placeholder="请输入商品名称" />
		    </uni-forms-item>
		    <uni-forms-item required label="数量" name="num">
			  <uni-number-box v-model="from.num" :min="1"></uni-number-box>
		    </uni-forms-item>
		    <uni-forms-item label="邮寄仓库" name="wareouseId" required>
		         <uni-data-select
		            v-model="from.wareouseId"
		            :localdata="wareouseList"
		            @change="changeWareouse"
		          ></uni-data-select>
				<!--  <uni-data-select
				    v-model="from.wareouseId"
				    v-for="itme in wareouseList"
				    :key="itme.id"
				    :text="itme.name"
				    :value="itme.id"
				  /> -->
		    </uni-forms-item>
			<uni-forms-item label="备注" name="remark">
			  <uni-easyinput v-model="from.remark" placeholder="请输入备注" />
			</uni-forms-item>
		  </uni-forms>
		  <button type="primary" @click="submit">提交</button>
		</view>
	</view>
</template>

<script>
	import {addOrder} from '@/api/maple/order.js'
	import {listWarehouse} from '@/api/maple/warehouse.js'
	
	export default {
		data() {
			return {
				rules: {
				  trackingNumber: {
				    rules: [{
				      required: true,
				      errorMessage: '快递单号不能为空'
				    }]
				  },
				  num: {
				    rules: [{
				      required: true,
				      errorMessage: '数量不能为空'
				    }]
				  },
				  wareouseId: {
				    rules: [{
				      required: true,
				      errorMessage: '邮寄仓库不能为空'
				    }]
				  }
				},
				from: {
					trackingNumber: '',
					name: '',
					num: 1,
					wareouseId: '',
					remark: ''
				},
				wareouseList: []
				
			}
		},
		created() {
			let queryParams = {
			        pageNum: 1,
			        pageSize: 9999
			}
			listWarehouse(queryParams).then(res => {
				var arryW = [];
				for (var w in res.rows) { 
				         var item = {
							 text: res.rows[w].name,
							 value: res.rows[w].id
						 };
						 console.log(item)
						 arryW.push(item);
				} 
				this.wareouseList = arryW;
			});
		},
		methods: {
			submit(ref) {
			  this.$refs.form.validate().then(res => {
			    addOrder(this.from).then(response => {
			      this.$modal.msgSuccess("添加成功")
				  uni.switchTab({ url: '/pages/index' })
			    })
			  })
			},
			changeWareouse(e) {
				console.log("e:", e);
				this.from.wareouseId = e;
			}
			
		}
	}
</script>

<style lang="scss">
  page {
    background-color: #ffffff;
  }

  .example {
    padding: 15px;
    background-color: #fff;
  }

  .segmented-control {
    margin-bottom: 15px;
  }

  .button-group {
    margin-top: 15px;
    display: flex;
    justify-content: space-around;
  }

  .form-item {
    display: flex;
    align-items: center;
    flex: 1;
  }

  .button {
    display: flex;
    align-items: center;
    height: 35px;
    line-height: 35px;
    margin-left: 10px;
  }
</style>

