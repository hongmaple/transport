<template>
  <div class="app-container">
    <el-row :gutter="10" class="mb8">
      <el-col :span="1.5">
        <router-link :to="'/maple/status-log/index/' + orderId+'/0'" class="link-type">
          <el-button
            type="primary"
            plain
            icon="el-icon-plus"
            size="mini"
            v-hasPermi="['maple:statusLog:add']"
          >更新物流</el-button>
        </router-link>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="success"
          plain
          icon="el-icon-edit"
          size="mini"
          :disabled="single"
          @click="handleUpdate"
          v-hasPermi="['maple:logistics:edit']"
        >修改</el-button>
      </el-col>
<!--      <el-col :span="1.5">-->
<!--        <el-button-->
<!--          type="danger"-->
<!--          plain-->
<!--          icon="el-icon-delete"-->
<!--          size="mini"-->
<!--          :disabled="multiple"-->
<!--          @click="handleDelete"-->
<!--          v-hasPermi="['maple:logistics:remove']"-->
<!--        >删除</el-button>-->
<!--      </el-col>-->
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="el-icon-download"
          size="mini"
          @click="handleExport"
          v-hasPermi="['maple:logistics:export']"
        >导出</el-button>
      </el-col>
      <right-toolbar :showSearch.sync="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="logisticsList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="订单id" align="center" prop="orederId" />
      <el-table-column label="快递号" align="center" prop="trackingNumber" />
      <el-table-column label="快递公司" align="center" prop="expressCompanyId" />
      <el-table-column label="收货人" align="center" prop="consignee" />
      <el-table-column label="地址" align="center" prop="address" />
      <el-table-column label="手机号" align="center" prop="phone" />
      <el-table-column label="创建时间" align="center" prop="createTime" width="180">
        <template slot-scope="scope">
          <span>{{ parseTime(scope.row.createTime, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template slot-scope="scope">
          <el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handleUpdate(scope.row)"
            v-hasPermi="['maple:logistics:edit']"
          >修改</el-button>
<!--          <el-button-->
<!--            size="mini"-->
<!--            type="text"-->
<!--            icon="el-icon-delete"-->
<!--            @click="handleDelete(scope.row)"-->
<!--            v-hasPermi="['maple:logistics:remove']"-->
<!--          >删除</el-button>-->
          <el-button
            size="mini"
            type="text"
            @click="handleShouHuo(scope.row)"
            v-hasPermi="['maple:logistics:remove']"
          >确认收货</el-button>
        </template>
      </el-table-column>
    </el-table>

    <pagination
      v-show="total>0"
      :total="total"
      :page.sync="queryParams.pageNum"
      :limit.sync="queryParams.pageSize"
      @pagination="getList"
    />

    <!-- 添加或修改订单物流对话框 -->
    <el-dialog :title="title" :visible.sync="open" width="500px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="快递号" prop="trackingNumber">
          <el-input v-model="form.trackingNumber" placeholder="请输入快递号" />
        </el-form-item>
        <el-form-item label="收货人" prop="consignee">
          <el-input v-model="form.consignee" placeholder="请输入收货人" />
        </el-form-item>
        <el-form-item label="地址" prop="address">
          <el-input v-model="form.address" type="textarea" placeholder="请输入内容" />
        </el-form-item>
        <el-form-item label="手机号" prop="phone">
          <el-input v-model="form.phone" placeholder="请输入手机号" />
        </el-form-item>
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button type="primary" @click="submitForm">确 定</el-button>
        <el-button @click="cancel">取 消</el-button>
      </div>
    </el-dialog>
  </div>
</template>

<script>
import { listLogistics, getLogistics, delLogistics, addLogistics, updateLogistics } from "@/api/maple/logistics";
import {updateOrder} from "../../../api/maple/order";
import {addStatusLog} from "@/api/maple/statusLog";

export default {
  name: "Logistics",
  data() {
    return {
      // 遮罩层
      loading: true,
      // 选中数组
      ids: [],
      // 非单个禁用
      single: true,
      // 非多个禁用
      multiple: true,
      // 显示搜索条件
      showSearch: true,
      // 总条数
      total: 0,
      // 订单物流表格数据
      logisticsList: [],
      // 弹出层标题
      title: "",
      // 是否显示弹出层
      open: false,
      // 手机号时间范围
      daterangeCreateTime: [],
      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 10,
        orederId: null,
        trackingNumber: null,
        expressCompanyId: null,
        consignee: null,
        address: null,
        phone: null,
        createTime: null
      },
      // 表单参数
      form: {},
      // 表单校验
      rules: {
        trackingNumber: [
          { required: true, message: "快递号不能为空", trigger: "blur" }
        ],
        expressCompanyId: [
          { required: true, message: "快递公司不能为空", trigger: "change" }
        ],
        consignee: [
          { required: true, message: "收货人不能为空", trigger: "blur" }
        ],
        address: [
          { required: true, message: "地址不能为空", trigger: "blur" }
        ],
        phone: [
          { required: true, message: "手机号不能为空", trigger: "blur" }
        ],
        createTime: [
          { required: true, message: "创建时间不能为空", trigger: "blur" }
        ]
      },
      orderId: null
    };
  },
  created() {
    const orderId = this.$route.params && this.$route.params.orderId;
    this.orderId = orderId;
    this.getList();
  },
  methods: {
    /** 查询订单物流列表 */
    getList() {
      this.loading = true;
      this.queryParams.params = {};
      this.queryParams.orederId = this.orderId;
      if (null != this.daterangeCreateTime && '' != this.daterangeCreateTime) {
        this.queryParams.params["beginCreateTime"] = this.daterangeCreateTime[0];
        this.queryParams.params["endCreateTime"] = this.daterangeCreateTime[1];
      }
      listLogistics(this.queryParams).then(response => {
        this.logisticsList = response.rows;
        this.total = response.total;
        this.loading = false;
      });
    },
    // 取消按钮
    cancel() {
      this.open = false;
      this.reset();
    },
    // 表单重置
    reset() {
      this.form = {
        orederId: null,
        trackingNumber: null,
        expressCompanyId: null,
        consignee: null,
        address: null,
        phone: null,
        createTime: null
      };
      this.resetForm("form");
    },
    /** 搜索按钮操作 */
    handleQuery() {
      this.queryParams.pageNum = 1;
      this.getList();
    },
    /** 重置按钮操作 */
    resetQuery() {
      this.daterangeCreateTime = [];
      this.resetForm("queryForm");
      this.handleQuery();
    },
    // 多选框选中数据
    handleSelectionChange(selection) {
      this.ids = selection.map(item => item.orederId)
      this.single = selection.length!==1
      this.multiple = !selection.length
    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset();
      const orederId = row.orederId || this.ids
      getLogistics(orederId).then(response => {
        this.form = response.data;
        this.open = true;
        this.title = "修改订单物流";
      });
    },
    /** 提交按钮 */
    submitForm() {
      this.$refs["form"].validate(valid => {
        if (valid) {
          if (this.form.orederId != null) {
            updateLogistics(this.form).then(response => {
              this.$modal.msgSuccess("修改成功");
              this.open = false;
              this.getList();
            });
          } else {
            addLogistics(this.form).then(response => {
              this.$modal.msgSuccess("新增成功");
              this.open = false;
              this.getList();
            });
          }
        }
      });
    },
    /** 删除按钮操作 */
    handleDelete(row) {
      const orederIds = row.orederId || this.ids;
      this.$modal.confirm('是否确认删除订单物流编号为"' + orederIds + '"的数据项？').then(function() {
        return delLogistics(orederIds);
      }).then(() => {
        this.getList();
        this.$modal.msgSuccess("删除成功");
      }).catch(() => {});
    },
    handleShouHuo(row) {
      var data = {
        id: row.orederId,
        status: "5"
      }
      updateOrder(data).then(res => {
        var form = {
          remark: "收货成功",
          targetId: row.orederId,
          targetType: 0
        };
        addStatusLog(form).then(r => {
          this.$modal.msgSuccess("收货成功");
        })
      })
    },
    /** 导出按钮操作 */
    handleExport() {
      this.download('maple/logistics/export', {
        ...this.queryParams
      }, `logistics_${new Date().getTime()}.xlsx`)
    }
  }
};
</script>
