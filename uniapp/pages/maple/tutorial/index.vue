<template>
	<view>
		<cu-custom bgColor="bg-gradual-blue" :isBack="true">
					<block slot="backText">返回</block>
					<block slot="content">教程中心</block>
		</cu-custom>
		<view class="help-container">
		  <view v-for="(item, findex) in tutorialList" :key="findex" :title="item.title" class="list-title">
		    <view class="childList">
		      <view class="question" hover-class="hover"
		        @click="handleText(item)">
		        <view class="text-item">{{ item.title }}</view>
		        <view class="line" v-if="zindex !== tutorialList.length - 1"></view>
		      </view>
		    </view>
		  </view>
		</view>
	</view>
</template>

<script>
	import {listTutorial} from '@/api/maple/tutorial.js';
  export default {
    data() {
      return {
		tutorialList: []
      }
	},
	onLoad: function() {
		let queryParams = {
			pageNum: 1,
			pageSize: 9999,
			title: null,
		  }
		listTutorial(queryParams).then(res => {
			this.tutorialList = res.rows;
		});
	},
    methods: {
      handleText(item) {
        this.$tab.navigateTo(`/pages/common/richtextview/index?title=${item.title}&content=${item.content}`)
      }
    }
  }
</script>

<style lang="scss" scoped>
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
