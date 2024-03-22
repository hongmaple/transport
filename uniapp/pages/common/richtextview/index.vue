<template>
  <view class="mobile-item-container">
	  <cu-custom bgColor="bg-gradual-blue" :isBack="true">
	  			<block slot="backText">返回</block>
	  </cu-custom>
    <view style="font-size: 40rpx; font-weight: bold;text-align: center;margin-top: 20rpx;">{{title}}</view>
    <view style="margin-top: 40rpx;margin-left: 20rpx;">
	  	<mp-html :content="content"></mp-html>
    </view>
  </view>
</template>

<script>

export default {
  components: {
  },
  data () {
    return {
      title: null,
      content: null
    }
  },
  onLoad (params) {
    this.title = params.title
     this.content = params.content
  },
  methods: {
    
  }
}
</script>

<style lang="scss" scoped>
</style>