<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" size="small" :inline="true" v-show="showSearch" label-width="68px">
      <el-form-item label="快递号" prop="trackingNumber">
        <el-input
          v-model="queryParams.trackingNumber"
          placeholder="请输入快递号"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="商品名" prop="name">
        <el-input
          v-model="queryParams.name"
          placeholder="请输入商品名"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="数量" prop="num">
        <el-input
          v-model="queryParams.num"
          placeholder="请输入数量"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="创建时间">
        <el-date-picker
          v-model="daterangeCreateTime"
          style="width: 240px"
          value-format="yyyy-MM-dd"
          type="daterange"
          range-separator="-"
          start-placeholder="开始日期"
          end-placeholder="结束日期"
        ></el-date-picker>
      </el-form-item>
      <el-form-item label="状态" prop="status">
        <el-select v-model="queryParams.status" placeholder="请选择状态" clearable>
          <el-option
            v-for="dict in dict.type.maple_order_status"
            :key="dict.value"
            :label="dict.label"
            :value="dict.value"
          />
        </el-select>
      </el-form-item>
      <el-form-item label="入库时间">
        <el-date-picker
          v-model="daterangeWarehousingTime"
          style="width: 240px"
          value-format="yyyy-MM-dd"
          type="daterange"
          range-separator="-"
          start-placeholder="开始日期"
          end-placeholder="结束日期"
        ></el-date-picker>
      </el-form-item>
      <el-form-item label="货柜号" prop="containerNumber">
        <el-input
          v-model="queryParams.containerNumber"
          placeholder="请输入货柜号"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="出库时间">
        <el-date-picker
          v-model="daterangeOutboundTime"
          style="width: 240px"
          value-format="yyyy-MM-dd"
          type="daterange"
          range-separator="-"
          start-placeholder="开始日期"
          end-placeholder="结束日期"
        ></el-date-picker>
      </el-form-item>
      <el-form-item label="重量" prop="weight">
        <el-input
          v-model="queryParams.weight"
          placeholder="请输入重量"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="总价" prop="totalPrice">
        <el-input
          v-model="queryParams.totalPrice"
          placeholder="请输入总价"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="优惠" prop="preferentialPrice">
        <el-input
          v-model="queryParams.preferentialPrice"
          placeholder="请输入优惠"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="实际付款" prop="actualPayment">
        <el-input
          v-model="queryParams.actualPayment"
          placeholder="请输入实际付款"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="支付时间">
        <el-date-picker
          v-model="daterangePayTime"
          style="width: 240px"
          value-format="yyyy-MM-dd"
          type="daterange"
          range-separator="-"
          start-placeholder="开始日期"
          end-placeholder="结束日期"
        ></el-date-picker>
      </el-form-item>
      <el-form-item label="支付方式" prop="payType">
        <el-select v-model="queryParams.payType" placeholder="请选择支付方式" clearable>
          <el-option
            v-for="dict in dict.type.maple_pay_type"
            :key="dict.value"
            :label="dict.label"
            :value="dict.value"
          />
        </el-select>
      </el-form-item>
      <el-form-item label="交易号" prop="transactionNumber">
        <el-input
          v-model="queryParams.transactionNumber"
          placeholder="请输入交易号"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="收货人" prop="consignee">
        <el-input
          v-model="queryParams.consignee"
          placeholder="请输入收货人"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="手机号" prop="phone">
        <el-input
          v-model="queryParams.phone"
          placeholder="请输入手机号"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item>
        <el-button type="primary" icon="el-icon-search" size="mini" @click="handleQuery">搜索</el-button>
        <el-button icon="el-icon-refresh" size="mini" @click="resetQuery">重置</el-button>
      </el-form-item>
    </el-form>

    <el-row :gutter="10" class="mb8">
<!--      <el-col :span="1.5">-->
<!--        <el-button-->
<!--          type="primary"-->
<!--          plain-->
<!--          icon="el-icon-plus"-->
<!--          size="mini"-->
<!--          @click="handleAdd"-->
<!--          v-hasPermi="['maple:order:add']"-->
<!--        >新增</el-button>-->
<!--      </el-col>-->
<!--      <el-col :span="1.5">-->
<!--        <el-button-->
<!--          type="success"-->
<!--          plain-->
<!--          icon="el-icon-edit"-->
<!--          size="mini"-->
<!--          :disabled="single"-->
<!--          @click="handleUpdate"-->
<!--          v-hasPermi="['maple:order:edit']"-->
<!--        >修改</el-button>-->
<!--      </el-col>-->
<!--      <el-col :span="1.5">-->
<!--        <el-button-->
<!--          type="danger"-->
<!--          plain-->
<!--          icon="el-icon-delete"-->
<!--          size="mini"-->
<!--          :disabled="multiple"-->
<!--          @click="handleDelete"-->
<!--          v-hasPermi="['maple:order:remove']"-->
<!--        >删除</el-button>-->
<!--      </el-col>-->
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="el-icon-download"
          size="mini"
          @click="handleExport"
          v-hasPermi="['maple:order:export']"
        >导出</el-button>
      </el-col>
      <right-toolbar :showSearch.sync="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="orderList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="订单id" align="center" prop="id" />
      <el-table-column label="快递号" align="center" prop="trackingNumber" />
      <el-table-column label="商品名" align="center" prop="name" />
      <el-table-column label="数量" align="center" prop="num" />
      <el-table-column label="仓库名" align="center" prop="warehouse.name" />
      <el-table-column label="备注" align="center" prop="remark" />
      <el-table-column label="用户" align="center" prop="userinfo.userName" />
      <el-table-column label="用户手机号" align="center" prop="userinfo.phonenumber" />
      <el-table-column label="创建时间" align="center" prop="createTime" width="180">
        <template slot-scope="scope">
          <span>{{ parseTime(scope.row.createTime, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="状态" align="center" prop="status">
        <template slot-scope="scope">
          <dict-tag :options="dict.type.maple_order_status" :value="scope.row.status"/>
        </template>
      </el-table-column>
      <el-table-column label="入库时间" align="center" prop="warehousingTime" width="180">
        <template slot-scope="scope">
          <span>{{ parseTime(scope.row.warehousingTime, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="入库图片" align="center" prop="warehousingImg" width="100">
        <template slot-scope="scope">
          <image-preview :src="scope.row.warehousingImg" :width="50" :height="50"/>
        </template>
      </el-table-column>
      <el-table-column label="入库操作员" align="center" prop="warehousingUser" />
      <el-table-column label="货柜号" align="center" prop="containerNumber" />
      <el-table-column label="出库时间" align="center" prop="outboundTime" width="180">
        <template slot-scope="scope">
          <span>{{ parseTime(scope.row.outboundTime, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="出库操作员" align="center" prop="outboundUser" />
      <el-table-column label="重量" align="center" prop="weight" />
      <el-table-column label="体积" align="center" prop="volume" />
      <el-table-column label="总价" align="center" prop="totalPrice" />
      <el-table-column label="运费" align="center" prop="freightPrice" />
      <el-table-column label="优惠" align="center" prop="preferentialPrice" />
      <el-table-column label="实际付款" align="center" prop="actualPayment" />
      <el-table-column label="支付时间" align="center" prop="payTime" width="180">
        <template slot-scope="scope">
          <span>{{ parseTime(scope.row.payTime, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="支付方式" align="center" prop="payType">
        <template slot-scope="scope">
          <dict-tag :options="dict.type.maple_pay_type" :value="scope.row.payType"/>
        </template>
      </el-table-column>
      <el-table-column label="交易号" align="center" prop="transactionNumber" />
      <el-table-column label="收货人" align="center" prop="consignee" />
      <el-table-column label="收货人地址" align="center" prop="address" />
      <el-table-column label="手机号" align="center" prop="phone" />
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template slot-scope="scope">
          <div v-if="scope.row.status==='0'">
            <el-button
              size="mini"
              type="text"
              icon="el-icon-edit"
              @click="handleRuku(scope.row)"
              v-hasPermi="['maple:order:edit']"
            >入库</el-button>
          </div>
          <div v-if="scope.row.status==='3'">
            <el-button
              size="mini"
              type="text"
              icon="el-icon-edit"
              @click="handleFaHuo(scope.row)"
              v-hasPermi="['maple:order:edit']"
            >发货</el-button>
          </div>
          <div v-if="scope.row.status==='3' || scope.row.status==='4' || scope.row.status==='5'">
            <router-link :to="'/maple/order-dateil/index/' + scope.row.id" class="link-type">
              <el-button
                size="mini"
                type="text"
                icon="el-icon-edit"
                v-hasPermi="['maple:orederDetails:list']"
              >查看详情</el-button>
            </router-link>
          </div>
          <div v-if="scope.row.status==='4' || scope.row.status==='5'">
            <router-link :to="'/maple/logistics-dateil/index/' + scope.row.id" class="link-type">
              <el-button
                size="mini"
                type="text"
                icon="el-icon-edit"
                v-hasPermi="['maple:logistics:list']"
              >查看物流</el-button>
            </router-link>
          </div>
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

    <!-- 入库对话框 -->
    <el-dialog :title="title" :visible.sync="open" width="500px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="入库图片" prop="warehousingImg">
          <image-upload :limit="1" v-model="form.warehousingImg"/>
        </el-form-item>
        <el-form-item label="货柜号" prop="containerNumber">
          <el-input v-model="form.containerNumber" placeholder="请输入货柜号" />
        </el-form-item>
        <el-form-item label="重量" min:0 prop="weight">
          <el-input v-model="form.weight" type="textarea" placeholder="请输入重量" />
        </el-form-item>
        <el-form-item label="长" min:1 prop="length">
          <el-input v-model="form.length" placeholder="请输入长" />
        </el-form-item>
        <el-form-item label="宽" min:1 prop="width">
          <el-input v-model="form.width" placeholder="请输入宽" />
        </el-form-item>
        <el-form-item label="高" min:1 prop="height">
          <el-input v-model="form.height" placeholder="请输入高" />
        </el-form-item>
        <el-form-item label="运费" min:0 prop="freightPrice">
          <el-input v-model="form.freightPrice" type="number" placeholder="请输入运费" />
        </el-form-item>
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button type="primary" @click="submitRuKuForm">确 定</el-button>
        <el-button @click="cancel">取 消</el-button>
      </div>
    </el-dialog>

    <!-- 发货对话框 -->
    <el-dialog :title="title" :visible.sync="FaHuoOpen" width="500px" append-to-body>
      <el-form ref="faHuoform" :model="faHuoform" :rules="faHuoRules" label-width="80px">
        <el-form-item label="物流公司" prop="expressCompanyId">
          <el-select v-model="faHuoform.expressCompanyId" placeholder="请选择" clearable>
            <el-option
              v-for="item in expressCompanyList"
              :key="item.id"
              :label="item.name"
              :value="item.id"
            />
          </el-select>
        </el-form-item>
        <el-form-item label="快递号" prop="trackingNumber">
          <el-input v-model="faHuoform.trackingNumber" placeholder="请输入快递号" />
        </el-form-item>
        <el-form-item label="收货地址" min:0 prop="address">
          <el-input v-model="faHuoform.address" type="textarea" placeholder="请输入收货地址" />
        </el-form-item>
        <el-form-item label="收货人" min:1 prop="consignee">
          <el-input v-model="faHuoform.consignee" placeholder="请输入收货人" />
        </el-form-item>
        <el-form-item label="手机号" min:1 prop="phone">
          <el-input v-model="faHuoform.phone" placeholder="请输入手机号" />
        </el-form-item>
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button type="primary" @click="submitFaHuoForm">确 定</el-button>
        <el-button @click="cancelFaHuo">取 消</el-button>
      </div>
    </el-dialog>

  </div>
</template>

<script>
import { listOrder, getOrder, delOrder, addOrder, updateOrder,faHuo } from "@/api/maple/order";
import  {listExpressCompany} from "@/api/maple/expressCompany";

export default {
  name: "Order",
  dicts: ['maple_order_status', 'maple_pay_type'],
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
      // 订单表格数据
      orderList: [],
      // 弹出层标题
      title: "",
      // 是否显示弹出层
      open: false,
      // fah
      FaHuoOpen: false,
      // 手机号时间范围
      daterangeCreateTime: [],
      // 手机号时间范围
      daterangeWarehousingTime: [],
      // 手机号时间范围
      daterangeOutboundTime: [],
      // 手机号时间范围
      daterangePayTime: [],
      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 10,
        trackingNumber: null,
        name: null,
        num: null,
        wareouseId: null,
        createTime: null,
        status: null,
        warehousingTime: null,
        warehousingUserId: null,
        containerNumber: null,
        outboundTime: null,
        outboundUserId: null,
        weight: null,
        totalPrice: null,
        preferentialPrice: null,
        actualPayment: null,
        payTime: null,
        payType: null,
        transactionNumber: null,
        consignee: null,
        address: null,
        phone: null,
        length: 0,
        width: 0,
        height: 0
      },
      faHuoform: {
        orederId: null,
        trackingNumber: null,
        expressCompanyId: null,
        consignee: null,
        address: null,
        phone: null
      },
      expressCompanyList: [],
      // 表单参数
      form: {},
      // 表单校验
      rules: {
        warehousingImg: [
          { required: true, message: "入库图片不能为空", trigger: "blur" }
        ],
        containerNumber: [
          { required: true, message: "货柜号不能为空", trigger: "blur" }
        ],
        weight: [
          { required: true, message: "重量不能为空", trigger: "blur" }
        ],
        length: [
          { required: true, message: "长不能为空", trigger: "change" }
        ],
        width: [
          { required: true, message: "宽不能为空", trigger: "blur" }
        ],
        height: [
          { required: true, message: "高不能为空", trigger: "change" }
        ],
        freightPrice: [
          { required: true, message: "运费不能为空", trigger: "change" }
        ],
      },
      faHuoRules: {
        expressCompanyId: [
          { required: true, message: "物流公司不能为空", trigger: "blur" }
        ],
        trackingNumber: [
          { required: true, message: "快递号不能为空", trigger: "blur" }
        ],
        address: [
          { required: true, message: "地址不能为空", trigger: "blur" }
        ],
        consignee: [
          { required: true, message: "收货人不能为空", trigger: "change" }
        ],
        phone: [
          { required: true, message: "手机号不能为空", trigger: "blur" }
        ]
      },
    };
  },
  created() {
    this.getList();
  },
  methods: {
    /** 查询订单列表 */
    getList() {
      this.loading = true;
      this.queryParams.params = {};
      if (null != this.daterangeCreateTime && '' != this.daterangeCreateTime) {
        this.queryParams.params["beginCreateTime"] = this.daterangeCreateTime[0];
        this.queryParams.params["endCreateTime"] = this.daterangeCreateTime[1];
      }
      if (null != this.daterangeWarehousingTime && '' != this.daterangeWarehousingTime) {
        this.queryParams.params["beginWarehousingTime"] = this.daterangeWarehousingTime[0];
        this.queryParams.params["endWarehousingTime"] = this.daterangeWarehousingTime[1];
      }
      if (null != this.daterangeOutboundTime && '' != this.daterangeOutboundTime) {
        this.queryParams.params["beginOutboundTime"] = this.daterangeOutboundTime[0];
        this.queryParams.params["endOutboundTime"] = this.daterangeOutboundTime[1];
      }
      if (null != this.daterangePayTime && '' != this.daterangePayTime) {
        this.queryParams.params["beginPayTime"] = this.daterangePayTime[0];
        this.queryParams.params["endPayTime"] = this.daterangePayTime[1];
      }
      listOrder(this.queryParams).then(response => {
        this.orderList = response.rows;
        this.total = response.total;
        this.loading = false;
      });
    },
    // 取消按钮
    cancel() {
      this.open = false;
      this.reset();
    },
    // 取消按钮
    cancelFaHuo() {
      this.FaHuoOpen = false;
      this.reserFaHuo();
    },
    // 表单重置
    reset() {
      this.form = {
        id: null,
        trackingNumber: null,
        name: null,
        num: null,
        wareouseId: null,
        remark: null,
        createId: null,
        createTime: null,
        status: null,
        warehousingTime: null,
        warehousingImg: null,
        warehousingUserId: null,
        containerNumber: null,
        outboundTime: null,
        outboundUserId: null,
        weight: null,
        volume: null,
        length: null,
        freightPrice: null,
        totalPrice: null,
        preferentialPrice: null,
        actualPayment: null,
        payTime: null,
        payType: null,
        transactionNumber: null,
        consignee: null,
        address: null,
        phone: null
      };
      this.resetForm("form");
    },
    reserFaHuo() {
      this.faHuoform = {
        orederId: null,
        trackingNumber: null,
        expressCompanyId: null,
        consignee: null,
        address: null,
        phone: null
      };
      this.resetForm("faHuoform");
    },
    /** 搜索按钮操作 */
    handleQuery() {
      this.queryParams.pageNum = 1;
      this.getList();
    },
    /** 重置按钮操作 */
    resetQuery() {
      this.daterangeCreateTime = [];
      this.daterangeWarehousingTime = [];
      this.daterangeOutboundTime = [];
      this.daterangePayTime = [];
      this.resetForm("queryForm");
      this.handleQuery();
    },
    // 多选框选中数据
    handleSelectionChange(selection) {
      this.ids = selection.map(item => item.id)
      this.single = selection.length!==1
      this.multiple = !selection.length
    },
    /** 新增按钮操作 */
    handleAdd() {
      this.reset();
      this.open = true;
      this.title = "添加订单";
    },
    /*入库*/
    handleRuku(row) {
      this.reset();
      const id = row.id || this.ids
      getOrder(id).then(response => {
        this.form = response.data;
        this.open = true;
        this.title = "入库";
      });
    },
    handleFaHuo(row) {
      this.reserFaHuo();
      const id = row.id || this.ids
      this.faHuoform.orederId = id;
      this.faHuoform.consignee = row.consignee;
      this.faHuoform.address = row.address;
      this.faHuoform.phone = row.phone;
      listExpressCompany().then(res => {
        this.expressCompanyList = res.rows;
        this.FaHuoOpen = true;
        this.title = "发货";
      });

    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset();
      const id = row.id || this.ids
      getOrder(id).then(response => {
        this.form = response.data;
        this.open = true;
        this.title = "修改订单";
      });
    },
    submitFaHuoForm() {
      this.$refs["faHuoform"].validate(valid => {
        if (valid) {
          faHuo(this.faHuoform).then(response => {
            this.$modal.msgSuccess("发货成功");
            this.FaHuoOpen = false;
            this.getList();
          });
        }
      });
    },
    submitRuKuForm() {
      this.$refs["form"].validate(valid => {
        if (valid) {
          console.log(this.form)
          var data = {
            id: this.form.id,
            freightPrice: this.form.freightPrice,
            weight: this.form.weight,
            containerNumber: this.form.containerNumber,
            warehousingImg: this.form.warehousingImg,
            status: '1',
            volume: "长:"+ this.form.length +",宽:"+ this.form.weight +",高:" + this.form.height
          }
          console.log(data);
          updateOrder(data).then(response => {
            this.$modal.msgSuccess("入库成功");
            this.open = false;
            this.getList();
          });
        }
      });
    },
    /** 删除按钮操作 */
    handleDelete(row) {
      const ids = row.id || this.ids;
      this.$modal.confirm('是否确认删除订单编号为"' + ids + '"的数据项？').then(function() {
        return delOrder(ids);
      }).then(() => {
        this.getList();
        this.$modal.msgSuccess("删除成功");
      }).catch(() => {});
    },
    /** 导出按钮操作 */
    handleExport() {
      this.download('maple/order/export', {
        ...this.queryParams
      }, `order_${new Date().getTime()}.xlsx`)
    }
  }
};
</script>
