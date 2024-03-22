<template>
  <view class="work-container">
	  <cu-custom bgColor="bg-gradual-blue" :isBack="true">
	  	<block slot="backText">返回</block>
	  	<block slot="content">工作台</block>
	  </cu-custom>
    <!-- 轮播图 -->
    <uni-swiper-dot class="uni-swiper-dot-box" :info="data" :current="current" field="content">
      <swiper class="swiper-box" :current="swiperDotIndex" @change="changeSwiper">
        <swiper-item v-for="(item, index) in data" :key="index">
          <view class="swiper-item" @click="clickBannerItem(item)">
            <image :src="item.image" mode="aspectFill" :draggable="false" />
          </view>
        </swiper-item>
      </swiper>
    </uni-swiper-dot>

    <!-- 宫格组件 -->
    <uni-section title="" type="line"></uni-section>
    <view class="grid-body">
      <uni-grid :column="4" :showBorder="false">
		  <uni-grid-item>
		    <view @click="handleToReward" class="grid-item-box">
		  	<uni-icons type="chat-filled" size="30"></uni-icons>
		  	<text class="text">奖惩信息</text>
		    </view>
		  </uni-grid-item>
        <uni-grid-item  v-if="checkRole(['teacher','parent'])">
          <view @click="handleToStudent" class="grid-item-box">
            <uni-icons type="person-filled" size="30"></uni-icons>
            <text class="text">班级学生</text>
          </view>
        </uni-grid-item>
		<uni-grid-item v-if="checkRole(['teacher'])">
		  <view @click="handleToGuanLiNotice" class="grid-item-box">
		    <uni-icons type="chat-filled" size="30"></uni-icons>
		    <text class="text">通知公告</text>
		  </view>
		</uni-grid-item>
		<uni-grid-item>
		  <view @click="handleToSuggest" class="grid-item-box">
			<uni-icons type="chat-filled" size="30"></uni-icons>
			<text class="text">建议信息</text>
		  </view>
		</uni-grid-item>
      </uni-grid>
    </view>
  </view>
</template>

<script>
	import storage from '@/utils/storage'
	import { checkPermi, checkRole } from "@/utils/permission"; // 权限判断函数
  export default {
    data() {
      return {
        current: 0,
        swiperDotIndex: 0,
        data: [{
            image: '/static/images/banner/banner01.jpg'
          },
          {
            image: '/static/images/banner/banner02.jpg'
          },
          {
            image: '/static/images/banner/banner03.jpg'
          }
        ]
      }
    },
    methods: {
      clickBannerItem(item) {
        console.info(item)
      },
      changeSwiper(e) {
        this.current = e.detail.current
      },
	  handleToGuanLiNotice() {
		  this.$tab.navigateTo('/pages/sys/notice/list')
	  },
	  handleToStudent () {
		  this.$tab.navigateTo('/pages/edu/student/list')
	  },
	  handleToReward () {
		    this.$tab.navigateTo('/pages/edu/reward/list')
	  },
	  handleToSuggest() {
		    this.$tab.navigateTo('/pages/edu/suggest/list')
	  },
	  checkPermi,
	  checkRole
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

  .text {
    text-align: center;
    font-size: 26rpx;
    margin-top: 10rpx;
  }

  .grid-item-box {
    flex: 1;
    /* #ifndef APP-NVUE */
    display: flex;
    /* #endif */
    flex-direction: column;
    align-items: center;
    justify-content: center;
    padding: 15px 0;
  }

  .uni-margin-wrap {
    width: 690rpx;
    width: 100%;
    ;
  }

  .swiper {
    height: 300rpx;
  }

  .swiper-box {
    height: 150px;
  }

  .swiper-item {
    /* #ifndef APP-NVUE */
    display: flex;
    /* #endif */
    flex-direction: column;
    justify-content: center;
    align-items: center;
    color: #fff;
    height: 300rpx;
    line-height: 300rpx;
  }

  @media screen and (min-width: 500px) {
    .uni-swiper-dot-box {
      width: 400px;
      /* #ifndef APP-NVUE */
      margin: 0 auto;
      /* #endif */
      margin-top: 8px;
    }

    .image {
      width: 100%;
    }
  }
</style>
