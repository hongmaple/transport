package com.ruoyi.maple.domain;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

import com.alibaba.fastjson2.annotation.JSONField;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.fasterxml.jackson.databind.ser.std.ToStringSerializer;
import com.ruoyi.common.core.domain.entity.SysUser;
import com.ruoyi.maple.commom.login.dto.Userinfo;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 订单对象 t_order
 * 
 * @author maple
 * @date 2024-01-07
 */
public class Order extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 订单id */
    @JSONField(serializeUsing = ToStringSerializer.class)
    @JsonSerialize(using = com.fasterxml.jackson.databind.ser.std.ToStringSerializer.class)
    private Long id;

    /** 快递号 */
    @Excel(name = "快递号")
    private String trackingNumber;

    /** 商品名 */
    @Excel(name = "商品名")
    private String name;

    /** 数量 */
    @Excel(name = "数量")
    private Integer num;

    /** 仓库id */
    @Excel(name = "仓库id")
    private Long wareouseId;

    /** 创建者 */
    @Excel(name = "创建者")
    private Long createId;

    /** 状态：0：待入库，1：已入库，2：待支付，3：待发货，4：已发货：5：已到达 */
    @Excel(name = "状态：0：待入库，1：已入库，2：待支付，3：待发货，4：已发货：5：已到达")
    private String status;

    /** 入库时间 */
    @JsonFormat(pattern = "yyyy-MM-dd hh:mm:ss")
    @Excel(name = "入库时间", width = 30, dateFormat = "yyyy-MM-dd hh:mm:ss")
    private Date warehousingTime;

    /** 入库图片 */
    @Excel(name = "入库图片")
    private String warehousingImg;

    /** 入库操作员 */
    @Excel(name = "入库操作员")
    private Long warehousingUserId;

    /** 货柜号 */
    @Excel(name = "货柜号")
    private String containerNumber;

    /** 出库时间 */
    @JsonFormat(pattern = "yyyy-MM-dd hh:mm:ss")
    @Excel(name = "出库时间", width = 30, dateFormat = "yyyy-MM-dd hh:mm:ss")
    private Date outboundTime;

    /** 出库操作员 */
    @Excel(name = "出库操作员")
    private Long outboundUserId;

    /** 重量 */
    @Excel(name = "重量")
    private Long weight;

    /** 体积长：，宽：，高： */
    @Excel(name = "体积长：，宽：，高：")
    private String volume;

    @Excel(name = "运费")
    private BigDecimal freightPrice;

    /** 总价 */
    @Excel(name = "总价")
    private BigDecimal totalPrice;

    /** 优惠 */
    @Excel(name = "优惠")
    private BigDecimal preferentialPrice;

    /** 实际付款 */
    @Excel(name = "实际付款")
    private BigDecimal actualPayment;

    /** 支付时间 */
    @JsonFormat(pattern = "yyyy-MM-dd hh:mm:ss")
    @Excel(name = "支付时间", width = 30, dateFormat = "yyyy-MM-dd hh:mm:ss")
    private Date payTime;

    /** 支付方式0：微信支付 */
    @Excel(name = "支付方式0：微信支付")
    private String payType;

    /** 交易号 */
    @Excel(name = "交易号")
    private String transactionNumber;

    /** 收货人 */
    @Excel(name = "收货人")
    private String consignee;

    /** 收货人地址 */
    @Excel(name = "收货人地址")
    private String address;

    /** 手机号 */
    @Excel(name = "手机号")
    private String phone;

    private Integer length;

    private Integer width;

    private Integer height;

    /*仓库信息*/
    private Warehouse warehouse;

    private SysUser userinfo;

    private String warehousingUser;

    private String outboundUser;

    private List<OrderDetails> orderDetails;

    public List<OrderDetails> getOrderDetails() {
        return orderDetails;
    }

    public void setOrderDetails(List<OrderDetails> orderDetails) {
        this.orderDetails = orderDetails;
    }

    public Warehouse getWarehouse() {
        return warehouse;
    }

    public void setWarehouse(Warehouse warehouse) {
        this.warehouse = warehouse;
    }

    public SysUser getUserinfo() {
        return userinfo;
    }

    public void setUserinfo(SysUser userinfo) {
        this.userinfo = userinfo;
    }

    public String getWarehousingUser() {
        return warehousingUser;
    }

    public void setWarehousingUser(String warehousingUser) {
        this.warehousingUser = warehousingUser;
    }

    public String getOutboundUser() {
        return outboundUser;
    }

    public void setOutboundUser(String outboundUser) {
        this.outboundUser = outboundUser;
    }

    public void setId(Long id)
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setTrackingNumber(String trackingNumber) 
    {
        this.trackingNumber = trackingNumber;
    }

    public String getTrackingNumber() 
    {
        return trackingNumber;
    }
    public void setName(String name) 
    {
        this.name = name;
    }

    public String getName() 
    {
        return name;
    }
    public void setNum(Integer num) 
    {
        this.num = num;
    }

    public Integer getNum() 
    {
        return num;
    }
    public void setWareouseId(Long wareouseId) 
    {
        this.wareouseId = wareouseId;
    }

    public Long getWareouseId() 
    {
        return wareouseId;
    }
    public void setCreateId(Long createId) 
    {
        this.createId = createId;
    }

    public Long getCreateId() 
    {
        return createId;
    }
    public void setStatus(String status) 
    {
        this.status = status;
    }

    public String getStatus() 
    {
        return status;
    }
    public void setWarehousingTime(Date warehousingTime) 
    {
        this.warehousingTime = warehousingTime;
    }

    public Date getWarehousingTime() 
    {
        return warehousingTime;
    }
    public void setWarehousingImg(String warehousingImg) 
    {
        this.warehousingImg = warehousingImg;
    }

    public String getWarehousingImg() 
    {
        return warehousingImg;
    }
    public void setWarehousingUserId(Long warehousingUserId) 
    {
        this.warehousingUserId = warehousingUserId;
    }

    public Long getWarehousingUserId() 
    {
        return warehousingUserId;
    }
    public void setContainerNumber(String containerNumber) 
    {
        this.containerNumber = containerNumber;
    }

    public String getContainerNumber() 
    {
        return containerNumber;
    }
    public void setOutboundTime(Date outboundTime) 
    {
        this.outboundTime = outboundTime;
    }

    public Date getOutboundTime() 
    {
        return outboundTime;
    }
    public void setOutboundUserId(Long outboundUserId) 
    {
        this.outboundUserId = outboundUserId;
    }

    public Long getOutboundUserId() 
    {
        return outboundUserId;
    }
    public void setWeight(Long weight) 
    {
        this.weight = weight;
    }

    public Long getWeight() 
    {
        return weight;
    }
    public void setVolume(String volume) 
    {
        this.volume = volume;
    }

    public String getVolume() 
    {
        return volume;
    }
    public void setTotalPrice(BigDecimal totalPrice) 
    {
        this.totalPrice = totalPrice;
    }

    public BigDecimal getTotalPrice() 
    {
        return totalPrice;
    }
    public void setPreferentialPrice(BigDecimal preferentialPrice) 
    {
        this.preferentialPrice = preferentialPrice;
    }

    public BigDecimal getPreferentialPrice() 
    {
        return preferentialPrice;
    }
    public void setActualPayment(BigDecimal actualPayment) 
    {
        this.actualPayment = actualPayment;
    }

    public BigDecimal getActualPayment() 
    {
        return actualPayment;
    }
    public void setPayTime(Date payTime) 
    {
        this.payTime = payTime;
    }

    public Date getPayTime() 
    {
        return payTime;
    }
    public void setPayType(String payType) 
    {
        this.payType = payType;
    }

    public String getPayType() 
    {
        return payType;
    }
    public void setTransactionNumber(String transactionNumber) 
    {
        this.transactionNumber = transactionNumber;
    }

    public String getTransactionNumber() 
    {
        return transactionNumber;
    }
    public void setConsignee(String consignee) 
    {
        this.consignee = consignee;
    }

    public String getConsignee() 
    {
        return consignee;
    }
    public void setAddress(String address) 
    {
        this.address = address;
    }

    public String getAddress() 
    {
        return address;
    }
    public void setPhone(String phone) 
    {
        this.phone = phone;
    }

    public String getPhone() 
    {
        return phone;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("trackingNumber", getTrackingNumber())
            .append("name", getName())
            .append("num", getNum())
            .append("wareouseId", getWareouseId())
            .append("remark", getRemark())
            .append("createId", getCreateId())
            .append("createTime", getCreateTime())
            .append("status", getStatus())
            .append("warehousingTime", getWarehousingTime())
            .append("warehousingImg", getWarehousingImg())
            .append("warehousingUserId", getWarehousingUserId())
            .append("containerNumber", getContainerNumber())
            .append("outboundTime", getOutboundTime())
            .append("outboundUserId", getOutboundUserId())
            .append("weight", getWeight())
            .append("volume", getVolume())
            .append("totalPrice", getTotalPrice())
            .append("preferentialPrice", getPreferentialPrice())
            .append("actualPayment", getActualPayment())
            .append("payTime", getPayTime())
            .append("payType", getPayType())
            .append("transactionNumber", getTransactionNumber())
            .append("consignee", getConsignee())
            .append("address", getAddress())
            .append("phone", getPhone())
            .toString();
    }

    public BigDecimal getFreightPrice() {
        return freightPrice;
    }

    public void setFreightPrice(BigDecimal freightPrice) {
        this.freightPrice = freightPrice;
    }

    public Integer getLength() {
        return length;
    }

    public void setLength(Integer length) {
        this.length = length;
    }

    public Integer getWidth() {
        return width;
    }

    public void setWidth(Integer width) {
        this.width = width;
    }

    public Integer getHeight() {
        return height;
    }

    public void setHeight(Integer height) {
        this.height = height;
    }
}
