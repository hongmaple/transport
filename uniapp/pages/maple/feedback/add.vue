<template>
	<view class="container">
		<cu-custom bgColor="bg-gradual-blue" :isBack="true">
			<block slot="backText">返回</block>
			<block slot="content">添加反馈</block>
		</cu-custom>
		<view class="example">
		  <uni-forms ref="form" :model="from" labelWidth="80px">
		    <uni-forms-item required label="内容" name="content">
		      <uni-easyinput  type="textarea" v-model="from.content" placeholder="content" />
		    </uni-forms-item>
		    <uni-forms-item required label="图片" name="name">
		      <view class="grid col-4 grid-square flex-sub">
		      	<view class="bg-img" v-for="(item,index) in imgList" :key="index" @tap="ViewImage" :data-url="imgList[index]">
		      	 <image :src="imgList[index]" mode="aspectFill"></image>
		      		<view class="cu-tag bg-red" @tap.stop="DelImg" :data-index="index">
		      			<text class='cuIcon-close'></text>
		      		</view>
		      	</view>
		      	<view class="solids" @tap="ChooseImage" v-if="imgList.length<1">
		      		<text class='cuIcon-cameraadd'></text>
		      	</view>
		      </view>
		    </uni-forms-item>
		  </uni-forms>
		  <button type="primary" @click="submit">提交</button>
		</view>
	</view>
</template>

<script>
	import {addFeedback} from '@/api/maple/feedback.js'
	import {uploadFile} from '@/api/system/upload.js'
	
	export default {
		data() {
			return {
				rules: {
				  content: {
				    rules: [{
				      required: true,
				      errorMessage: '内容不能为空'
				    }]
				  },
				  urls: {
				    rules: [{
				      required: true,
				      errorMessage: '图片不能为空'
				    }]
				  }
				},
				from: {
					content: '',
					urls: ''
				},
				imgList: [],
			}
		},
		created() {
		
		},
		methods: {
			submit(ref) {
				let data = {name: 'file', filePath: this.imgList[0]}
				uploadFile(data).then(response => {
					this.from.urls = response.fileName;
				})
			  this.$refs.form.validate().then(res => {
			    addFeedback(this.from).then(response => {
			      this.$modal.msgSuccess("添加成功")
				  uni.switchTab({ url: '/pages/mine/index' })
			    })
			  })
			},
			ViewImage(e) {
				uni.previewImage({
					urls: this.imgList,
					current: e.currentTarget.dataset.url
				});
			},
			DelImg(e) {
				uni.showModal({
					title: '删除图片',
					content: '确定要删除这张图片？',
					cancelText: '再看看',
					confirmText: '再见',
					success: res => {
						if (res.confirm) {
							this.imgList.splice(e.currentTarget.dataset.index, 1)
						}
					}
				})
			},
			ChooseImage() {
				uni.chooseImage({
					count: 4, //默认9
					sizeType: ['original', 'compressed'], //可以指定是原图还是压缩图，默认二者都有
					sourceType: ['album'], //从相册选择
					success: (res) => {
						if (this.imgList.length != 0) {
							this.imgList = this.imgList.concat(res.tempFilePaths)
						} else {
							this.imgList = res.tempFilePaths
						}
					}
				});
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

