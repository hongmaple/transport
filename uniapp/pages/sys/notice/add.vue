<template>
  <view class="container">
	  <cu-custom bgColor="bg-gradual-blue" :isBack="true">
	  	<block slot="backText">返回</block>
	  	<block slot="content">添加公告</block>
	  </cu-custom>
    <view class="example">
      <uni-forms ref="form" :model="nptice" labelWidth="80px">
        <uni-forms-item label="标题" name="noticeTitle">
          <uni-easyinput v-model="nptice.noticeTitle" placeholder="请输入标题" />
        </uni-forms-item>
		
		<uni-forms-item label="公告类型" name="noticeType">
			      <uni-data-select
			  			  placeholder="请选择公告类型"
			  			  :value="nptice.noticeType"
			          v-model="nptice.noticeType"
			          :localdata="types"
			        ></uni-data-select>
		</uni-forms-item>
		
		<uni-forms-item label="内容" name="noticeContent">
		   <textarea   v-model="nptice.noticeContent" placeholder="请输入内容" ></textarea >
		</uni-forms-item>
      </uni-forms>
	
	 
      <button type="primary" @click="submit">提交</button>
    </view>
  </view>
</template>

<script>
  import { addNotice,getNotice,updateNotice } from "@/api/system/notice.js"

  export default {
    data() {
      return {
        nptice: {
		  noticeId: undefined,
          noticeTitle: "",
		  noticeContent: "",
		  noticeType: 1
        },
        rules: {
          noticeTitle: {
            rules: [{
              required: true,
              errorMessage: '标题不能为空'
            }]
          },
		  noticeContent: {
		    rules: [{
		      required: true,
		      errorMessage: '内容不能为空'
		    }]
		  },
		  noticeType: {
		    rules: [{
		      required: true,
		      errorMessage: '类型不能为空'
		    }]
		  }
        },
		isAdd: 1,
		types: [
			{ value: '1', text: "通知" },
		    { value: '2', text: "公告" }
		]
      }
    },
    onLoad(event) {
		this.noticeId = event.id;
		if(this.noticeId>0) {
			getNotice(this.noticeId).then(response => {
			 if (response.data) {
			      	  this.isAdd = 0;
			      	  this.nptice = response.data
			 }
			})
		}
      
    },
    onReady() {
      this.$refs.form.setRules(this.rules)
    },
    methods: {
      submit(ref) {
        this.$refs.form.validate().then(res => {
			if(this.isAdd==1) {
				addNotice(this.nptice).then(response => {
				  this.$modal.msgSuccess("修改成功")
				  this.$tab.navigateBack();
				})
			}else {
				updateNotice(this.nptice).then(response => {
				  this.$modal.msgSuccess("修改成功")
				  this.$tab.navigateBack();
				})
			}
        })
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
