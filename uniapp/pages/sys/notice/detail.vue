<template>
  <view class="mobile-item-container">
	  <cu-custom bgColor="bg-gradual-blue" :isBack="true">
	  	<block slot="backText">返回</block>
	  	<block slot="content">公告详情</block>
	  </cu-custom>
    <view style="font-size: 40rpx; font-weight: bold;text-align: center;margin-top: 20rpx;">{{notice.noticeTitle}}</view>
    <view style="display: flex; font-size: 12px; color: #909399;margin: 20rpx 20rpx 20rpx 20rpx;">
      <view name="clock" size="12"></view>
      <text>发布时间：{{notice.createTime}}</text>
    </view>
    <view style="margin-top: 40rpx;margin-left: 20rpx;">
	  	<mp-html :content="notice.noticeContent"></mp-html>
    </view>
  </view>
</template>

<script>
import * as NoticeApi from '@/api/system/notice'

export default {
  components: {
  },
  data () {
    return {
      noticeId: undefined,
      notice: {}
    }
  },
  onLoad (params) {
    this.noticeId = params.id
    this.loadData()
  },
  methods: {
    loadData () {
      const app = this
      NoticeApi.getNotice(this.noticeId).then(res => {
        app.notice = res.data
      })
    }
  }
}
</script>

<style lang="scss" scoped>
</style>