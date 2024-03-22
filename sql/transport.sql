/*
Navicat MySQL Data Transfer

Source Server         : maple5.7
Source Server Version : 50744
Source Host           : localhost:3307
Source Database       : transport

Target Server Type    : MYSQL
Target Server Version : 50744
File Encoding         : 65001

Date: 2024-01-27 15:10:54
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table` (
  `table_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `package_name` varchar(100) DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='代码生成业务表';

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES ('1', 't_customer_server', '客服中心', '', '', 'CustomerServer', 'crud', 'com.ruoyi.maple', 'maple', 'customerServer', '客服中心', 'maple', '0', '/', '{\"parentMenuId\":\"2001\"}', 'admin', '2024-01-07 14:19:07', '', '2024-01-09 12:40:47', null);
INSERT INTO `gen_table` VALUES ('2', 't_express_company', '快递公司', null, null, 'ExpressCompany', 'crud', 'com.ruoyi.maple', 'maple', 'expressCompany', '快递公司', 'maple', '0', '/', '{\"parentMenuId\":2001}', 'admin', '2024-01-07 14:19:07', '', '2024-01-07 14:31:39', null);
INSERT INTO `gen_table` VALUES ('3', 't_feedback', '反馈中心', '', '', 'Feedback', 'crud', 'com.ruoyi.maple', 'maple', 'feedback', '反馈中心', 'maple', '0', '/', '{\"parentMenuId\":\"2001\"}', 'admin', '2024-01-07 14:19:07', '', '2024-01-07 14:46:14', null);
INSERT INTO `gen_table` VALUES ('4', 't_goods', '商品', null, null, 'Goods', 'crud', 'com.ruoyi.maple', 'maple', 'goods', '商品', 'maple', '0', '/', '{\"parentMenuId\":\"2001\"}', 'admin', '2024-01-07 14:19:07', '', '2024-01-07 14:39:44', null);
INSERT INTO `gen_table` VALUES ('5', 't_help', '帮助中心', null, null, 'Help', 'crud', 'com.ruoyi.maple', 'maple', 'help', '帮助中心', 'maple', '0', '/', '{\"parentMenuId\":2001}', 'admin', '2024-01-07 14:19:08', '', '2024-01-07 14:39:10', null);
INSERT INTO `gen_table` VALUES ('6', 't_order', '订单', null, null, 'Order', 'crud', 'com.ruoyi.maple', 'maple', 'order', '订单', 'maple', '0', '/', '{\"parentMenuId\":2001}', 'admin', '2024-01-07 14:19:08', '', '2024-01-07 15:04:17', null);
INSERT INTO `gen_table` VALUES ('7', 't_order_logistics', '订单物流', null, null, 'OrderLogistics', 'crud', 'com.ruoyi.maple', 'maple', 'logistics', '订单物流', 'maple', '0', '/', '{\"parentMenuId\":2001}', 'admin', '2024-01-07 14:19:08', '', '2024-01-07 15:05:58', null);
INSERT INTO `gen_table` VALUES ('8', 't_status_log', '状态日志', null, null, 'StatusLog', 'crud', 'com.ruoyi.maple', 'maple', 'statusLog', '状态日志', 'maple', '0', '/', '{\"parentMenuId\":\"2001\"}', 'admin', '2024-01-07 14:19:08', '', '2024-01-07 15:11:31', null);
INSERT INTO `gen_table` VALUES ('9', 't_tutorial', '教程中心', null, null, 'Tutorial', 'crud', 'com.ruoyi.maple', 'maple', 'tutorial', '教程中心', 'maple', '0', '/', '{\"parentMenuId\":2001}', 'admin', '2024-01-07 14:19:08', '', '2024-01-07 15:12:49', null);
INSERT INTO `gen_table` VALUES ('10', 't_warehouse', '仓库', null, null, 'Warehouse', 'crud', 'com.ruoyi.maple', 'maple', 'warehouse', '仓库', 'maple', '0', '/', '{\"parentMenuId\":2001}', 'admin', '2024-01-07 14:19:08', '', '2024-01-07 15:14:09', null);
INSERT INTO `gen_table` VALUES ('11', 't_carousel_chart', '轮播图', null, null, 'CarouselChart', 'crud', 'com.ruoyi.maple', 'maple', 'carouselChart', '轮播图', 'maple', '0', '/', '{\"parentMenuId\":\"2001\"}', 'admin', '2024-01-07 14:19:15', '', '2024-01-07 15:26:14', null);
INSERT INTO `gen_table` VALUES ('12', 't_order_details', '订单详情', null, null, 'OrderDetails', 'crud', 'com.ruoyi.maple', 'maple', 'orederDetails', '订单详情', 'maple', '0', '/', '{}', 'admin', '2024-01-07 14:19:15', '', '2024-01-07 15:25:57', null);
INSERT INTO `gen_table` VALUES ('13', 't_customer_server_bind', '客服微信IP绑定表', null, null, 'CustomerServerBind', 'crud', 'com.ruoyi.maple', 'maple', 'custmoerServerBind', '客服微信IP绑定', 'maple', '0', '/', '{\"parentMenuId\":2001}', 'admin', '2024-01-09 13:06:10', '', '2024-01-09 13:07:36', null);
INSERT INTO `gen_table` VALUES ('14', 't_address', '地址', null, null, 'Address', 'crud', 'com.ruoyi.maple', 'maple', 'address', '地址', 'maple', '0', '/', '{\"parentMenuId\":2001}', 'admin', '2024-01-14 13:04:17', '', '2024-01-14 13:06:18', null);

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column` (
  `column_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) DEFAULT '' COMMENT '字典类型',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8 COMMENT='代码生成业务表字段';

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES ('1', '1', 'id', '客服id', 'bigint(20) unsigned', 'Long', 'id', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2024-01-07 14:19:07', '', '2024-01-09 12:40:47');
INSERT INTO `gen_table_column` VALUES ('2', '1', 'phone', '手机号', 'varchar(11)', 'String', 'phone', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '2', 'admin', '2024-01-07 14:19:07', '', '2024-01-09 12:40:47');
INSERT INTO `gen_table_column` VALUES ('3', '1', 'wx_url', '微信图片', 'varchar(500)', 'String', 'wxUrl', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'imageUpload', '', '3', 'admin', '2024-01-07 14:19:07', '', '2024-01-09 12:40:47');
INSERT INTO `gen_table_column` VALUES ('4', '2', 'id', '快递公司id', 'bigint(20) unsigned', 'Long', 'id', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2024-01-07 14:19:07', '', '2024-01-07 14:31:39');
INSERT INTO `gen_table_column` VALUES ('5', '2', 'name', '快递公司', 'varchar(255)', 'String', 'name', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', '2', 'admin', '2024-01-07 14:19:07', '', '2024-01-07 14:31:39');
INSERT INTO `gen_table_column` VALUES ('6', '2', 'first_weight_price', '首重价格', 'decimal(10,2)', 'BigDecimal', 'firstWeightPrice', '0', '0', '1', '1', '1', '1', '1', 'GTE', 'input', '', '3', 'admin', '2024-01-07 14:19:07', '', '2024-01-07 14:31:39');
INSERT INTO `gen_table_column` VALUES ('7', '3', 'id', '反馈id', 'bigint(20) unsigned', 'Long', 'id', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2024-01-07 14:19:07', '', '2024-01-07 14:46:14');
INSERT INTO `gen_table_column` VALUES ('8', '3', 'content', '内容', 'varchar(1000)', 'String', 'content', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'editor', '', '2', 'admin', '2024-01-07 14:19:07', '', '2024-01-07 14:46:14');
INSERT INTO `gen_table_column` VALUES ('9', '3', 'urls', '图片', 'varchar(2000)', 'String', 'urls', '0', '0', null, '1', '1', '1', '0', 'EQ', 'imageUpload', '', '3', 'admin', '2024-01-07 14:19:07', '', '2024-01-07 14:46:14');
INSERT INTO `gen_table_column` VALUES ('10', '3', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', '0', '1', null, null, '1', 'BETWEEN', 'datetime', '', '4', 'admin', '2024-01-07 14:19:07', '', '2024-01-07 14:46:14');
INSERT INTO `gen_table_column` VALUES ('11', '3', 'create_id', '创建者', 'bigint(20)', 'Long', 'createId', '0', '0', '0', '1', '0', '1', '1', 'EQ', 'input', '', '5', 'admin', '2024-01-07 14:19:07', '', '2024-01-07 14:46:14');
INSERT INTO `gen_table_column` VALUES ('12', '4', 'id', '商品id', 'bigint(20) unsigned', 'Long', 'id', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2024-01-07 14:19:08', '', '2024-01-07 14:39:44');
INSERT INTO `gen_table_column` VALUES ('13', '4', 'title', '商品标题', 'varchar(255)', 'String', 'title', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', '2', 'admin', '2024-01-07 14:19:08', '', '2024-01-07 14:39:44');
INSERT INTO `gen_table_column` VALUES ('14', '4', 'cover_url', '封面图片', 'varchar(500)', 'String', 'coverUrl', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'imageUpload', '', '3', 'admin', '2024-01-07 14:19:08', '', '2024-01-07 14:39:44');
INSERT INTO `gen_table_column` VALUES ('15', '4', 'price', '单价', 'decimal(10,2)', 'BigDecimal', 'price', '0', '0', '1', '1', '1', '1', '1', 'GTE', 'input', '', '4', 'admin', '2024-01-07 14:19:08', '', '2024-01-07 14:39:44');
INSERT INTO `gen_table_column` VALUES ('16', '4', 'stock', '库存', 'int(11)', 'Long', 'stock', '0', '0', '1', '1', '1', '1', '1', 'GTE', 'input', '', '5', 'admin', '2024-01-07 14:19:08', '', '2024-01-07 14:39:44');
INSERT INTO `gen_table_column` VALUES ('17', '5', 'id', '帮助id', 'bigint(20) unsigned', 'Long', 'id', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2024-01-07 14:19:08', '', '2024-01-07 14:39:10');
INSERT INTO `gen_table_column` VALUES ('18', '5', 'title', '标题', 'varchar(100)', 'String', 'title', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', '2', 'admin', '2024-01-07 14:19:08', '', '2024-01-07 14:39:10');
INSERT INTO `gen_table_column` VALUES ('19', '5', 'content', '内容', 'text', 'String', 'content', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'editor', '', '3', 'admin', '2024-01-07 14:19:08', '', '2024-01-07 14:39:10');
INSERT INTO `gen_table_column` VALUES ('20', '6', 'id', '订单id', 'bigint(20)', 'Long', 'id', '1', '0', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2024-01-07 14:19:08', '', '2024-01-07 15:04:17');
INSERT INTO `gen_table_column` VALUES ('21', '6', 'tracking_number', '快递号', 'varchar(100)', 'String', 'trackingNumber', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', '2', 'admin', '2024-01-07 14:19:08', '', '2024-01-07 15:04:17');
INSERT INTO `gen_table_column` VALUES ('22', '6', 'name', '商品名', 'varchar(255)', 'String', 'name', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', '3', 'admin', '2024-01-07 14:19:08', '', '2024-01-07 15:04:17');
INSERT INTO `gen_table_column` VALUES ('23', '6', 'num', '数量', 'int(10)', 'Integer', 'num', '0', '0', '1', '1', '1', '1', '1', 'GTE', 'input', '', '4', 'admin', '2024-01-07 14:19:08', '', '2024-01-07 15:04:17');
INSERT INTO `gen_table_column` VALUES ('24', '6', 'wareouse_id', '仓库id', 'bigint(20)', 'Long', 'wareouseId', '0', '0', '1', '1', '0', '1', '1', 'EQ', 'select', '', '5', 'admin', '2024-01-07 14:19:08', '', '2024-01-07 15:04:17');
INSERT INTO `gen_table_column` VALUES ('25', '6', 'remark', '备注', 'varchar(255)', 'String', 'remark', '0', '0', null, '1', '1', '1', null, 'EQ', 'input', '', '6', 'admin', '2024-01-07 14:19:08', '', '2024-01-07 15:04:17');
INSERT INTO `gen_table_column` VALUES ('26', '6', 'create_id', '创建者', 'bigint(20)', 'Long', 'createId', '0', '0', '0', '1', '0', '1', '0', 'EQ', 'input', '', '7', 'admin', '2024-01-07 14:19:08', '', '2024-01-07 15:04:17');
INSERT INTO `gen_table_column` VALUES ('27', '6', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', '1', '1', null, '1', '1', 'BETWEEN', 'datetime', '', '8', 'admin', '2024-01-07 14:19:08', '', '2024-01-07 15:04:17');
INSERT INTO `gen_table_column` VALUES ('28', '6', 'status', '状态：0：待入库，1：已入库，2：待支付，3：待发货，4：已发货：5：已到达', 'char(1)', 'String', 'status', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'maple_order_status', '9', 'admin', '2024-01-07 14:19:08', '', '2024-01-07 15:04:17');
INSERT INTO `gen_table_column` VALUES ('29', '6', 'warehousing_time', '入库时间', 'datetime', 'Date', 'warehousingTime', '0', '0', null, '0', '1', '1', '1', 'BETWEEN', 'datetime', '', '10', 'admin', '2024-01-07 14:19:08', '', '2024-01-07 15:04:17');
INSERT INTO `gen_table_column` VALUES ('30', '6', 'warehousing_img', '入库图片', 'varchar(500)', 'String', 'warehousingImg', '0', '0', null, '0', '1', '1', '0', 'EQ', 'imageUpload', '', '11', 'admin', '2024-01-07 14:19:08', '', '2024-01-07 15:04:17');
INSERT INTO `gen_table_column` VALUES ('31', '6', 'warehousing_user_id', '入库操作员', 'bigint(20)', 'Long', 'warehousingUserId', '0', '0', null, '0', '1', '1', '1', 'EQ', 'select', '', '12', 'admin', '2024-01-07 14:19:08', '', '2024-01-07 15:04:17');
INSERT INTO `gen_table_column` VALUES ('32', '6', 'container_number', '货柜号', 'varchar(100)', 'String', 'containerNumber', '0', '0', null, '0', '1', '1', '1', 'LIKE', 'input', '', '13', 'admin', '2024-01-07 14:19:08', '', '2024-01-07 15:04:17');
INSERT INTO `gen_table_column` VALUES ('33', '6', 'outbound_time', '出库时间', 'datetime', 'Date', 'outboundTime', '0', '0', null, '0', '1', '1', '1', 'BETWEEN', 'datetime', '', '14', 'admin', '2024-01-07 14:19:08', '', '2024-01-07 15:04:17');
INSERT INTO `gen_table_column` VALUES ('34', '6', 'outbound_user_id', '出库操作员', 'bigint(20)', 'Long', 'outboundUserId', '0', '0', null, '0', '1', '1', '1', 'EQ', 'select', '', '15', 'admin', '2024-01-07 14:19:08', '', '2024-01-07 15:04:17');
INSERT INTO `gen_table_column` VALUES ('35', '6', 'weight', '重量', 'decimal(10,0)', 'Long', 'weight', '0', '0', null, '0', '1', '1', '1', 'GTE', 'input', '', '16', 'admin', '2024-01-07 14:19:08', '', '2024-01-07 15:04:17');
INSERT INTO `gen_table_column` VALUES ('36', '6', 'volume', '体积长：，宽：，高：', 'varchar(255)', 'String', 'volume', '0', '0', null, '0', '1', '1', '0', 'EQ', 'input', '', '17', 'admin', '2024-01-07 14:19:08', '', '2024-01-07 15:04:17');
INSERT INTO `gen_table_column` VALUES ('37', '6', 'total_price', '总价', 'decimal(10,2)', 'BigDecimal', 'totalPrice', '0', '0', null, '0', '1', '1', '1', 'GTE', 'input', '', '18', 'admin', '2024-01-07 14:19:08', '', '2024-01-07 15:04:17');
INSERT INTO `gen_table_column` VALUES ('38', '6', 'preferential_price', '优惠', 'decimal(10,2)', 'BigDecimal', 'preferentialPrice', '0', '0', null, '0', '1', '1', '1', 'GTE', 'input', '', '19', 'admin', '2024-01-07 14:19:08', '', '2024-01-07 15:04:17');
INSERT INTO `gen_table_column` VALUES ('39', '6', 'actual_payment', '实际付款', 'decimal(10,2)', 'BigDecimal', 'actualPayment', '0', '0', null, '0', '1', '1', '1', 'GTE', 'input', '', '20', 'admin', '2024-01-07 14:19:08', '', '2024-01-07 15:04:17');
INSERT INTO `gen_table_column` VALUES ('40', '6', 'pay_time', '支付时间', 'datetime', 'Date', 'payTime', '0', '0', null, '0', '1', '1', '1', 'BETWEEN', 'datetime', '', '21', 'admin', '2024-01-07 14:19:08', '', '2024-01-07 15:04:17');
INSERT INTO `gen_table_column` VALUES ('41', '6', 'pay_type', '支付方式0：微信支付', 'char(1)', 'String', 'payType', '0', '0', null, '0', '1', '1', '1', 'EQ', 'select', 'maple_pay_type', '22', 'admin', '2024-01-07 14:19:08', '', '2024-01-07 15:04:17');
INSERT INTO `gen_table_column` VALUES ('42', '6', 'transaction_number', '交易号', 'varchar(100)', 'String', 'transactionNumber', '0', '0', null, '0', '1', '1', '1', 'LIKE', 'input', '', '23', 'admin', '2024-01-07 14:19:08', '', '2024-01-07 15:04:17');
INSERT INTO `gen_table_column` VALUES ('43', '6', 'consignee', '收货人', 'varchar(50)', 'String', 'consignee', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '24', 'admin', '2024-01-07 14:19:08', '', '2024-01-07 15:04:17');
INSERT INTO `gen_table_column` VALUES ('44', '6', 'address', '收货人地址', 'varchar(500)', 'String', 'address', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'textarea', '', '25', 'admin', '2024-01-07 14:19:08', '', '2024-01-07 15:04:17');
INSERT INTO `gen_table_column` VALUES ('45', '6', 'phone', '手机号', 'varchar(11)', 'String', 'phone', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '26', 'admin', '2024-01-07 14:19:08', '', '2024-01-07 15:04:17');
INSERT INTO `gen_table_column` VALUES ('46', '7', 'oreder_id', '订单id', 'bigint(20)', 'Long', 'orederId', '1', '0', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2024-01-07 14:19:08', '', '2024-01-07 15:05:58');
INSERT INTO `gen_table_column` VALUES ('47', '7', 'tracking_number', '快递号', 'varchar(100)', 'String', 'trackingNumber', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', '2', 'admin', '2024-01-07 14:19:08', '', '2024-01-07 15:05:58');
INSERT INTO `gen_table_column` VALUES ('48', '7', 'express_company_id', '快递公司', 'bigint(20)', 'Long', 'expressCompanyId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', '', '3', 'admin', '2024-01-07 14:19:08', '', '2024-01-07 15:05:58');
INSERT INTO `gen_table_column` VALUES ('49', '7', 'consignee', '收货人', 'varchar(50)', 'String', 'consignee', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', '4', 'admin', '2024-01-07 14:19:08', '', '2024-01-07 15:05:58');
INSERT INTO `gen_table_column` VALUES ('50', '7', 'address', '地址', 'varchar(500)', 'String', 'address', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'textarea', '', '5', 'admin', '2024-01-07 14:19:08', '', '2024-01-07 15:05:58');
INSERT INTO `gen_table_column` VALUES ('51', '7', 'phone', '手机号', 'varchar(11)', 'String', 'phone', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', '6', 'admin', '2024-01-07 14:19:08', '', '2024-01-07 15:05:58');
INSERT INTO `gen_table_column` VALUES ('52', '7', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', '1', '1', null, '1', '1', 'BETWEEN', 'datetime', '', '7', 'admin', '2024-01-07 14:19:08', '', '2024-01-07 15:05:58');
INSERT INTO `gen_table_column` VALUES ('53', '8', 'id', '状态日志id', 'bigint(20) unsigned', 'Long', 'id', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2024-01-07 14:19:08', '', '2024-01-07 15:11:31');
INSERT INTO `gen_table_column` VALUES ('54', '8', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', '1', '1', null, '1', '1', 'BETWEEN', 'datetime', '', '2', 'admin', '2024-01-07 14:19:08', '', '2024-01-07 15:11:31');
INSERT INTO `gen_table_column` VALUES ('55', '8', 'remark', '备注', 'varchar(500)', 'String', 'remark', '0', '0', '1', '1', '1', '1', null, 'EQ', 'textarea', '', '3', 'admin', '2024-01-07 14:19:08', '', '2024-01-07 15:11:31');
INSERT INTO `gen_table_column` VALUES ('56', '8', 'target_id', '目标id', 'bigint(20)', 'Long', 'targetId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '4', 'admin', '2024-01-07 14:19:08', '', '2024-01-07 15:11:31');
INSERT INTO `gen_table_column` VALUES ('57', '8', 'target_type', '目标类型0：物流更新', 'char(1)', 'String', 'targetType', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'maple_status_type', '5', 'admin', '2024-01-07 14:19:08', '', '2024-01-07 15:11:31');
INSERT INTO `gen_table_column` VALUES ('58', '9', 'id', '教程id', 'bigint(20) unsigned', 'Long', 'id', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2024-01-07 14:19:08', '', '2024-01-07 15:12:49');
INSERT INTO `gen_table_column` VALUES ('59', '9', 'title', '教程标题', 'varchar(100)', 'String', 'title', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', '2', 'admin', '2024-01-07 14:19:08', '', '2024-01-07 15:12:49');
INSERT INTO `gen_table_column` VALUES ('60', '9', 'content', '内容', 'longtext', 'String', 'content', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'editor', '', '3', 'admin', '2024-01-07 14:19:08', '', '2024-01-07 15:12:49');
INSERT INTO `gen_table_column` VALUES ('61', '10', 'id', '仓库id', 'bigint(20) unsigned', 'Long', 'id', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2024-01-07 14:19:08', '', '2024-01-07 15:14:09');
INSERT INTO `gen_table_column` VALUES ('62', '10', 'name', '仓库名', 'varchar(50)', 'String', 'name', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', '2', 'admin', '2024-01-07 14:19:08', '', '2024-01-07 15:14:09');
INSERT INTO `gen_table_column` VALUES ('63', '10', 'address', '地址', 'varchar(1000)', 'String', 'address', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'textarea', '', '3', 'admin', '2024-01-07 14:19:08', '', '2024-01-07 15:14:09');
INSERT INTO `gen_table_column` VALUES ('64', '10', 'consignee', '收货人', 'varchar(50)', 'String', 'consignee', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', '4', 'admin', '2024-01-07 14:19:08', '', '2024-01-07 15:14:09');
INSERT INTO `gen_table_column` VALUES ('65', '10', 'phone', '手机号', 'varchar(11)', 'String', 'phone', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', '5', 'admin', '2024-01-07 14:19:08', '', '2024-01-07 15:14:09');
INSERT INTO `gen_table_column` VALUES ('66', '10', 'postal_code', '邮编', 'varchar(50)', 'String', 'postalCode', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '6', 'admin', '2024-01-07 14:19:08', '', '2024-01-07 15:14:09');
INSERT INTO `gen_table_column` VALUES ('67', '11', 'id', '轮播图id', 'bigint(20) unsigned', 'Long', 'id', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2024-01-07 14:19:15', '', '2024-01-07 15:26:14');
INSERT INTO `gen_table_column` VALUES ('68', '11', 'title', '标题', 'varchar(50)', 'String', 'title', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', '2', 'admin', '2024-01-07 14:19:15', '', '2024-01-07 15:26:14');
INSERT INTO `gen_table_column` VALUES ('69', '11', 'img_url', '图片地址', 'varchar(1000)', 'String', 'imgUrl', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'imageUpload', '', '3', 'admin', '2024-01-07 14:19:15', '', '2024-01-07 15:26:14');
INSERT INTO `gen_table_column` VALUES ('70', '11', 'skip_h5_url', '跳转链接', 'varchar(1000)', 'String', 'skipH5Url', '0', '0', null, '1', '1', '1', '0', 'EQ', 'textarea', '', '4', 'admin', '2024-01-07 14:19:15', '', '2024-01-07 15:26:14');
INSERT INTO `gen_table_column` VALUES ('71', '11', 'serial_number', '排序', 'int(11)', 'Long', 'serialNumber', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', '5', 'admin', '2024-01-07 14:19:15', '', '2024-01-07 15:26:14');
INSERT INTO `gen_table_column` VALUES ('72', '12', 'order_id', '订单id', 'bigint(20)', 'Long', 'orderId', '1', '0', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2024-01-07 14:19:15', '', '2024-01-07 15:25:57');
INSERT INTO `gen_table_column` VALUES ('73', '12', 'goods_id', '商品id', 'bigint(20)', 'Long', 'goodsId', '1', '0', null, '1', null, null, null, 'EQ', 'input', '', '2', 'admin', '2024-01-07 14:19:15', '', '2024-01-07 15:25:57');
INSERT INTO `gen_table_column` VALUES ('74', '12', 'goods_name', '商品名', 'varchar(255)', 'String', 'goodsName', '0', '0', '1', '1', '0', '1', '1', 'LIKE', 'input', '', '3', 'admin', '2024-01-07 14:19:15', '', '2024-01-07 15:25:57');
INSERT INTO `gen_table_column` VALUES ('75', '12', 'price', '单价', 'decimal(10,2)', 'BigDecimal', 'price', '0', '0', '1', '1', '0', '1', '1', 'GTE', 'input', '', '4', 'admin', '2024-01-07 14:19:15', '', '2024-01-07 15:25:57');
INSERT INTO `gen_table_column` VALUES ('76', '12', 'num', '数量', 'int(11)', 'Long', 'num', '0', '0', '1', '1', '0', '1', '1', 'GTE', 'input', '', '5', 'admin', '2024-01-07 14:19:15', '', '2024-01-07 15:25:57');
INSERT INTO `gen_table_column` VALUES ('77', '12', 'cover_url', '封面', 'varchar(500)', 'String', 'coverUrl', '0', '0', null, '1', '0', '1', '0', 'EQ', 'imageUpload', '', '6', 'admin', '2024-01-07 14:19:15', '', '2024-01-07 15:25:57');
INSERT INTO `gen_table_column` VALUES ('78', '1', 'status', '状态0：上线，1：下线', 'char(1)', 'String', 'status', '0', '0', null, '1', '1', '1', '1', 'EQ', 'select', 'customer_server_status', '4', '', '2024-01-09 12:35:25', '', '2024-01-09 12:40:47');
INSERT INTO `gen_table_column` VALUES ('79', '13', 'id', null, 'int(20)', 'Long', 'id', '1', '0', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2024-01-09 13:06:10', '', '2024-01-09 13:07:36');
INSERT INTO `gen_table_column` VALUES ('80', '13', 'customer_server_id', '客服id', 'bigint(20)', 'Long', 'customerServerId', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '2', 'admin', '2024-01-09 13:06:10', '', '2024-01-09 13:07:36');
INSERT INTO `gen_table_column` VALUES ('81', '13', 'IP', 'IP地址', 'varchar(100)', 'String', 'IP', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '3', 'admin', '2024-01-09 13:06:10', '', '2024-01-09 13:07:36');
INSERT INTO `gen_table_column` VALUES ('82', '14', 'id', '地址id', 'bigint(20) unsigned', 'Long', 'id', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2024-01-14 13:04:17', '', '2024-01-14 18:07:42');
INSERT INTO `gen_table_column` VALUES ('83', '14', 'address', '地址', 'varchar(255)', 'String', 'address', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '4', 'admin', '2024-01-14 13:04:17', '', '2024-01-14 18:07:42');
INSERT INTO `gen_table_column` VALUES ('84', '14', 'user_id', '', 'bigint(20)', 'Long', 'userId', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '5', 'admin', '2024-01-14 13:04:17', '', '2024-01-14 18:07:42');
INSERT INTO `gen_table_column` VALUES ('85', '14', 'is_default', '是否默认', 'tinyint(2)', 'Integer', 'isDefault', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '6', 'admin', '2024-01-14 13:04:17', '', '2024-01-14 18:07:42');
INSERT INTO `gen_table_column` VALUES ('86', '14', 'name', '收货人', 'varchar(50)', 'String', 'name', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '2', '', '2024-01-14 18:07:42', '', null);
INSERT INTO `gen_table_column` VALUES ('87', '14', 'phone', '手机号', 'varchar(11)', 'String', 'phone', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '3', '', '2024-01-14 18:07:42', '', null);

-- ----------------------------
-- Table structure for merchant_details
-- ----------------------------
DROP TABLE IF EXISTS `merchant_details`;
CREATE TABLE `merchant_details` (
  `details_id` char(32) NOT NULL COMMENT '列表id',
  `pay_type` varchar(30) NOT NULL COMMENT '支付类型(支付渠道) 详情查看com.egzosn.pay.spring.boot.core.merchant.PaymentPlatform对应子类，aliPay 支付宝， wxPay微信..等等',
  `appid` varchar(32) DEFAULT NULL COMMENT '应用id',
  `mch_id` varchar(32) DEFAULT NULL COMMENT '商户id，商户号，合作伙伴id等等',
  `cert_store_type` varchar(16) DEFAULT NULL COMMENT '当前面私钥公钥为证书类型的时候，这里必填，可选值:PATH,STR,INPUT_STREAM,CLASS_PATH,URL',
  `key_private` mediumtext COMMENT '私钥或私钥证书',
  `key_public` mediumtext COMMENT '公钥或公钥证书',
  `key_cert` varchar(20480) DEFAULT NULL COMMENT 'key证书,附加证书使用，如SSL证书，或者银联根级证书方面',
  `key_cert_pwd` varchar(32) DEFAULT NULL COMMENT '私钥证书或key证书的密码',
  `notify_url` varchar(256) DEFAULT NULL COMMENT '异步回调',
  `return_url` varchar(256) DEFAULT NULL COMMENT '同步回调地址，大部分用于付款成功后页面转跳',
  `sign_type` varchar(16) NOT NULL COMMENT '签名方式,目前已实现多种签名方式详情查看com.egzosn.pay.common.util.sign.encrypt。MD5,RSA等等',
  `seller` varchar(32) DEFAULT NULL COMMENT '收款账号，暂时只有支付宝部分使用，可根据开发者自行使用',
  `sub_app_id` varchar(32) DEFAULT NULL COMMENT '子appid',
  `sub_mch_id` varchar(32) DEFAULT NULL COMMENT '子商户id',
  `input_charset` varchar(16) NOT NULL COMMENT '编码类型，大部分为utf-8',
  `is_test` tinyint(1) NOT NULL COMMENT '是否为测试环境: 0 否，1 测试环境',
  PRIMARY KEY (`details_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of merchant_details
-- ----------------------------
INSERT INTO `merchant_details` VALUES ('1', 'aliPay', '2016080400165436', '2088102169916436', null, 'MIICdgIBADANBgkqhkiG9w0BAQEFAASCAmAwggJcAgEAAoGBAKroe/8h5vC4L6T+B2WdXiVwGsMvUKgb2XsKix6VY3m2wcf6tyzpNRDCNykbIwGtaeo7FshN+qZxdXHLiIam9goYncBit/8ojfLGy2gLxO/PXfzGxYGs0KsDZ+ryVPPmE34ZZ8jiJpR0ygzCFl8pN3QJPJRGTJn5+FTT9EF/9zyZAgMBAAECgYAktngcYC35u7cQXDk+jMVyiVhWYU2ULxdSpPspgLGzrZyG1saOcTIi/XVX8Spd6+B6nmLQeF/FbU3rOeuD8U2clzul2Z2YMbJ0FYay9oVZFfp5gTEFpFRTVfzqUaZQBIjJe/xHL9kQVqc5xHlE/LVA27/Kx3dbC35Y7B4EVBDYAQJBAOhsX8ZreWLKPhXiXHTyLmNKhOHJc+0tFH7Ktise/0rNspojU7o9prOatKpNylp9v6kux7migcMRdVUWWiVe+4ECQQC8PqsuEz7B0yqirQchRg1DbHjh64bw9Kj82EN1/NzOUd53tP9tg+SO97EzsibK1F7tOcuwqsa7n2aY48mQ+y0ZAkBndA2xcRcnvOOjtAz5VO8G7R12rse181HjGfG6AeMadbKg30aeaGCyIxN1loiSfNR5xsPJwibGIBg81mUrqzqBAkB+K6rkaPXJR9XtzvdWb/N3235yPkDlw7Z4MiOVM3RzvR/VMDV7m8lXoeDde2zQyeMOMYy6ztwA6WgE1bhGOnQRAkEAouUBv1sVdSBlsexX15qphOmAevzYrpufKgJIRLFWQxroXMS7FTesj+f+FmGrpPCxIde1dqJ8lqYLTyJmbzMPYw==', 'MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDIgHnOn7LLILlKETd6BFRJ0GqgS2Y3mn1wMQmyh9zEyWlz5p1zrahRahbXAfCfSqshSNfqOmAQzSHRVjCqjsAw1jyqrXaPdKBmr90DIpIxmIyKXv4GGAkPyJ/6FTFY99uhpiq0qadD/uSzQsefWo0aTvP/65zi3eof7TcZ32oWpwIDAQAB', null, null, 'http://pay.egzosn.com/payBack1.json', 'http://pay.egzosn.com/payBack1.json', 'RSA', '2088102169916436', null, null, 'UTF-8', '1');
INSERT INTO `merchant_details` VALUES ('11', 'aliPay', '2016080400165436', '2088102169916436', 'CLASS_PATH', 'MIIEvwIBADANBgkqhkiG9w0BAQEFAASCBKkwggSlAgEAAoIBAQCw7MD2Cwv/jnXssFjXnGx3JlGF57gJa2aYbJRV8MnNiPVpX4Ha+8ZjnQDhvkrWH4hHmzcujOr213HqloMpUSYBzCPiXGVRUUvdimejcHHTod7nI4g6nztzzfey/TXNDHmp7vY3pOIcjB0Zn0pkNAz2tKAFkqb4raHOqTB0QA0zD24Cn+26J2UJyYRcgeH0GtSQuUrm7yaGsuKakh+qtgWF6R71n5PMGOTQ5LH3i0WVHfCBkNGgJC6yC96HR4D7cosoyKD0+lp8UB/NVUWl7Tt/KLOgFUwh0GKSYFfv56O/VBV2+xqCGE4PlZESfVuOqz5vjjxzw3xDAUJrV8hSX/AJAgMBAAECggEBAKE0d3U4B4yo/2XUIH8EdgfykCFUSum6RFbpyBauORHfksyaSzV+ZvtomN8XhhSn0oJ8OMFfgM+86nz2+zdwSxMkMCYWTfLUAi4v59KRqAVO3kz4oS3Y3FDeAK3D7XuRvGFL7GgzAhtEx1cLPrsiehVn6s5pG15GxsIIgq/JlL1J88wn1zENLrVHmD6z/JpXvfb/RS1yR+5lyoohp4g0Ph9jJ3bCyUbRpK0QkPEzgAuWL0K2ITCL7PYHNAplI8d2xHHOLF9Qdjyx+ZrQ/RxtqzfyWzhqjsmp2qlgNCxWlt3woS9UhDB+nRvjEoWTJmIOszAMYuj8wGlX+3Ui3ALOdQECgYEA25EqnFPFinUnzgNvB6NYmh5STmZun6s4bUOLqwefKtEvrOtRwTu7sB7NIf37fizG3/MJUWHxiLy2/3ub4d2JxdDNBtJoEqnp6QB12qglCNa4CajdjtJa1dR81F9QvytsqEkmPYXFPPyviB0FcSIDAGMb3IbwvIfzBPY9WY8dJnECgYEAzkg3yKEFBZ8BU0WQ+3hyfKUoAhBEnxouxRSTBcXxwstJRiqaGTVe5aoJGQI+0xS7Z6q07XDtN2t97s6DnRLWbljsX6B64itzNhXRyzjdD3iZDU/KSw7khjhXf8XOZaj9eXmACDiUnkEn1xsM8bLiRGqB8y5f3aMY/RpuACGXnxkCgYEAx/zwT9Vpr1RIfjfYcJ+Su0X0994K0roUukj0tUJK8qf4gcsQ+y1aJe/YLib1ZBaKyj7G9O5+HmqtUAUZld/AdoJZzOXmz2EeYhD+R7wxh1xz4rCBpW3qOKvDS3jJxmZaIOoHv6/RWFxb0WGFrGcrTrX3EaWDLmWxr4pNlP5qsbECgYATllntrBR8/ycyEAX/SuWcHlaZM5BAh0zvm8+GGdCmDYWMqxjs0duL9URd4o+ynWJaKqR5c2KjA4r2tRdcP+Cqo7j2L5fbiAKtnQ7JvEGJaYsm72+nBuf+MrVkRZUepBhFg5r7rNu31zoAO+pTvQetNWvXeozRz93ckrjlPEtYaQKBgQDFwbV92rlRMLjZzlY+o0knoeJBjPQmPdiBTpGNimdy9L4c2Ure7affjcUiYhkKqrK5k5SScJTATgyQ7JF346FdtUtZ/6Kkj1RwJmmprPrDa9CATLoTle7g9OVd4sHT2ITHZMzPaF3ILvzcwJ70AD1xcxCQb+/7sDPmw7Mc8gOA7Q==', 'ali/alipayCertPublicKey_RSA2.crt', 'ali/appCertPublicKey_2016080400165436.crt,ali/alipayRootCert.crt', null, 'http://pay.egzosn.com/payBack1.json', 'http://pay.egzosn.com/payBack1.json', 'RSA2', '2088102169916436', null, null, 'UTF-8', '1');
INSERT INTO `merchant_details` VALUES ('2', 'unionPay', null, '700000000000001', 'PATH', 'D:/certs/acp_test_sign.pfx', 'D:/certs/acp_test_middle.cer', 'D:/certs/acp_test_root.cer', '000000', 'http://pay.egzosn.com/payBack3.json', 'http://pay.egzosn.com/payBack3.json', 'RSA2', null, null, null, 'UTF-8', '1');
INSERT INTO `merchant_details` VALUES ('3', 'wxPay', '公众账号ID', '合作者id（商户号）', 'URL', '密钥', '转账公钥，转账时必填', 'http://www.egzosn.com/certs/apiclient_cert.p12', '默认为商户号', 'http://www.pay.egzosn.com/payBack3.json', 'http://www.pay.egzosn.com/payBack3.json', 'MD5', null, null, null, 'UTF-8', '1');
INSERT INTO `merchant_details` VALUES ('4', 'wxV3Pay', '公众账号ID', '合作者id（商户号）', 'URL', '密钥', '转账公钥，转账时必填', 'http://www.egzosn.com/certs/apiclient_cert.p12', '默认为商户号', 'http://www.pay.egzosn.com/payBack3.json', 'http://www.pay.egzosn.com/payBack3.json', 'MD5', null, null, null, 'UTF-8', '1');
INSERT INTO `merchant_details` VALUES ('5', 'wxV3ProfitSharing', '公众账号ID', '合作者id（商户号）', 'URL', 'V3密钥', '转账公钥，转账时必填', 'http://www.egzosn.com/certs/apiclient_cert.p12', '默认为商户号', 'http://www.pay.egzosn.com/payBack3.json', 'http://www.pay.egzosn.com/payBack3.json', 'MD5', null, null, null, 'UTF-8', '1');
INSERT INTO `merchant_details` VALUES ('6', 'wxV3ProfitSharing', '公众账号ID', '合作者id（商户号）', 'URL', 'V3密钥', '转账公钥，转账时必填', 'http://www.egzosn.com/certs/apiclient_cert.p12', '默认为商户号', 'http://www.pay.egzosn.com/payBack3.json', 'http://www.pay.egzosn.com/payBack3.json', 'MD5', null, null, null, 'UTF-8', '1');
INSERT INTO `merchant_details` VALUES ('7', 'wxV3CombinePay', '公众账号ID', '合作者id（商户号）', 'URL', 'V3密钥', '转账公钥，转账时必填', 'http://www.egzosn.com/certs/apiclient_cert.p12', '默认为商户号', 'http://www.pay.egzosn.com/payBack3.json', 'http://www.pay.egzosn.com/payBack3.json', 'MD5', null, null, null, 'UTF-8', '1');

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config` (
  `config_id` int(5) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='参数配置表';

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES ('1', '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2024-01-05 23:56:00', '', null, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES ('2', '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2024-01-05 23:56:00', '', null, '初始化密码 123456');
INSERT INTO `sys_config` VALUES ('3', '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2024-01-05 23:56:00', '', null, '深色主题theme-dark，浅色主题theme-light');
INSERT INTO `sys_config` VALUES ('4', '账号自助-验证码开关', 'sys.account.captchaEnabled', 'true', 'Y', 'admin', '2024-01-05 23:56:00', '', null, '是否开启验证码功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES ('5', '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'true', 'Y', 'admin', '2024-01-05 23:56:01', 'admin', '2024-01-08 18:01:59', '是否开启注册用户功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES ('6', '用户登录-黑名单列表', 'sys.login.blackIPList', '', 'Y', 'admin', '2024-01-05 23:56:01', '', null, '设置登录IP黑名单限制，多个匹配项以;分隔，支持匹配（*通配、网段）');

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data` (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(4) DEFAULT '0' COMMENT '字典排序',
  `dict_label` varchar(100) DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8 COMMENT='字典数据表';

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES ('1', '1', '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2024-01-05 23:55:53', '', null, '性别男');
INSERT INTO `sys_dict_data` VALUES ('2', '2', '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2024-01-05 23:55:53', '', null, '性别女');
INSERT INTO `sys_dict_data` VALUES ('3', '3', '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2024-01-05 23:55:53', '', null, '性别未知');
INSERT INTO `sys_dict_data` VALUES ('4', '1', '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2024-01-05 23:55:53', '', null, '显示菜单');
INSERT INTO `sys_dict_data` VALUES ('5', '2', '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2024-01-05 23:55:54', '', null, '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES ('6', '1', '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2024-01-05 23:55:54', '', null, '正常状态');
INSERT INTO `sys_dict_data` VALUES ('7', '2', '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2024-01-05 23:55:54', '', null, '停用状态');
INSERT INTO `sys_dict_data` VALUES ('8', '1', '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2024-01-05 23:55:54', '', null, '正常状态');
INSERT INTO `sys_dict_data` VALUES ('9', '2', '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2024-01-05 23:55:55', '', null, '停用状态');
INSERT INTO `sys_dict_data` VALUES ('10', '1', '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2024-01-05 23:55:55', '', null, '默认分组');
INSERT INTO `sys_dict_data` VALUES ('11', '2', '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2024-01-05 23:55:55', '', null, '系统分组');
INSERT INTO `sys_dict_data` VALUES ('12', '1', '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2024-01-05 23:55:55', '', null, '系统默认是');
INSERT INTO `sys_dict_data` VALUES ('13', '2', '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2024-01-05 23:55:55', '', null, '系统默认否');
INSERT INTO `sys_dict_data` VALUES ('14', '1', '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2024-01-05 23:55:56', '', null, '通知');
INSERT INTO `sys_dict_data` VALUES ('15', '2', '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2024-01-05 23:55:56', '', null, '公告');
INSERT INTO `sys_dict_data` VALUES ('16', '1', '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2024-01-05 23:55:56', '', null, '正常状态');
INSERT INTO `sys_dict_data` VALUES ('17', '2', '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2024-01-05 23:55:56', '', null, '关闭状态');
INSERT INTO `sys_dict_data` VALUES ('18', '99', '其他', '0', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2024-01-05 23:55:56', '', null, '其他操作');
INSERT INTO `sys_dict_data` VALUES ('19', '1', '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2024-01-05 23:55:57', '', null, '新增操作');
INSERT INTO `sys_dict_data` VALUES ('20', '2', '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2024-01-05 23:55:57', '', null, '修改操作');
INSERT INTO `sys_dict_data` VALUES ('21', '3', '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2024-01-05 23:55:57', '', null, '删除操作');
INSERT INTO `sys_dict_data` VALUES ('22', '4', '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2024-01-05 23:55:57', '', null, '授权操作');
INSERT INTO `sys_dict_data` VALUES ('23', '5', '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2024-01-05 23:55:58', '', null, '导出操作');
INSERT INTO `sys_dict_data` VALUES ('24', '6', '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2024-01-05 23:55:58', '', null, '导入操作');
INSERT INTO `sys_dict_data` VALUES ('25', '7', '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2024-01-05 23:55:58', '', null, '强退操作');
INSERT INTO `sys_dict_data` VALUES ('26', '8', '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2024-01-05 23:55:58', '', null, '生成操作');
INSERT INTO `sys_dict_data` VALUES ('27', '9', '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2024-01-05 23:55:58', '', null, '清空操作');
INSERT INTO `sys_dict_data` VALUES ('28', '1', '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2024-01-05 23:55:59', '', null, '正常状态');
INSERT INTO `sys_dict_data` VALUES ('29', '2', '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2024-01-05 23:55:59', '', null, '停用状态');
INSERT INTO `sys_dict_data` VALUES ('100', '0', '待入库', '0', 'maple_order_status', null, 'default', 'N', '0', 'admin', '2024-01-07 14:50:28', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('101', '1', '已入库', '1', 'maple_order_status', null, 'default', 'N', '0', 'admin', '2024-01-07 14:50:44', 'admin', '2024-01-07 14:51:15', null);
INSERT INTO `sys_dict_data` VALUES ('102', '2', '待支付', '2', 'maple_order_status', null, 'default', 'N', '0', 'admin', '2024-01-07 14:51:09', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('103', '3', '待发货', '3', 'maple_order_status', null, 'default', 'N', '0', 'admin', '2024-01-07 14:51:58', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('104', '4', '已发货', '4', 'maple_order_status', null, 'default', 'N', '0', 'admin', '2024-01-07 14:52:17', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('105', '5', '已到达', '5', 'maple_order_status', null, 'default', 'N', '0', 'admin', '2024-01-07 14:52:47', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('106', '0', '微信支付', '0', 'maple_pay_type', null, 'default', 'N', '0', 'admin', '2024-01-07 14:59:46', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('107', '0', '物流更新', '0', 'maple_status_type', null, 'default', 'N', '0', 'admin', '2024-01-07 15:10:32', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('108', '1', '订单状态更新', '1', 'maple_status_type', null, 'default', 'N', '0', 'admin', '2024-01-07 15:11:02', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('109', '0', '上线', '0', 'customer_server_status', null, 'default', 'N', '0', 'admin', '2024-01-09 12:40:09', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('110', '0', '下线', '1', 'customer_server_status', null, 'default', 'N', '0', 'admin', '2024-01-09 12:40:18', '', null, null);

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type` (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`),
  UNIQUE KEY `dict_type` (`dict_type`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8 COMMENT='字典类型表';

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES ('1', '用户性别', 'sys_user_sex', '0', 'admin', '2024-01-05 23:55:50', '', null, '用户性别列表');
INSERT INTO `sys_dict_type` VALUES ('2', '菜单状态', 'sys_show_hide', '0', 'admin', '2024-01-05 23:55:50', '', null, '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES ('3', '系统开关', 'sys_normal_disable', '0', 'admin', '2024-01-05 23:55:50', '', null, '系统开关列表');
INSERT INTO `sys_dict_type` VALUES ('4', '任务状态', 'sys_job_status', '0', 'admin', '2024-01-05 23:55:50', '', null, '任务状态列表');
INSERT INTO `sys_dict_type` VALUES ('5', '任务分组', 'sys_job_group', '0', 'admin', '2024-01-05 23:55:51', '', null, '任务分组列表');
INSERT INTO `sys_dict_type` VALUES ('6', '系统是否', 'sys_yes_no', '0', 'admin', '2024-01-05 23:55:51', '', null, '系统是否列表');
INSERT INTO `sys_dict_type` VALUES ('7', '通知类型', 'sys_notice_type', '0', 'admin', '2024-01-05 23:55:51', '', null, '通知类型列表');
INSERT INTO `sys_dict_type` VALUES ('8', '通知状态', 'sys_notice_status', '0', 'admin', '2024-01-05 23:55:51', '', null, '通知状态列表');
INSERT INTO `sys_dict_type` VALUES ('9', '操作类型', 'sys_oper_type', '0', 'admin', '2024-01-05 23:55:52', '', null, '操作类型列表');
INSERT INTO `sys_dict_type` VALUES ('10', '系统状态', 'sys_common_status', '0', 'admin', '2024-01-05 23:55:52', '', null, '登录状态列表');
INSERT INTO `sys_dict_type` VALUES ('100', '订单状态', 'maple_order_status', '0', 'admin', '2024-01-07 14:48:22', '', null, '状态：0：待入库，1：已入库，2：待支付，3：待发货，4：已发货：5：已到达');
INSERT INTO `sys_dict_type` VALUES ('101', '支付方式', 'maple_pay_type', '0', 'admin', '2024-01-07 14:59:29', '', null, '0:微信');
INSERT INTO `sys_dict_type` VALUES ('102', '状态日志类型', 'maple_status_type', '0', 'admin', '2024-01-07 15:08:54', 'admin', '2024-01-07 15:09:25', '目标类型0：物流更新 1：订单状态日志');
INSERT INTO `sys_dict_type` VALUES ('103', '客服中心状态', 'customer_server_status', '0', 'admin', '2024-01-09 12:39:38', '', null, null);

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job` (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`,`job_name`,`job_group`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='定时任务调度表';

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES ('1', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2024-01-05 23:56:02', '', null, '');
INSERT INTO `sys_job` VALUES ('2', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2024-01-05 23:56:02', '', null, '');
INSERT INTO `sys_job` VALUES ('3', '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2024-01-05 23:56:02', '', null, '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log` (
  `job_log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) DEFAULT NULL COMMENT '日志信息',
  `status` char(1) DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) DEFAULT '' COMMENT '异常信息',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='定时任务调度日志表';

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor` (
  `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `user_name` varchar(50) DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(128) DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) DEFAULT '' COMMENT '操作系统',
  `status` char(1) DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) DEFAULT '' COMMENT '提示消息',
  `login_time` datetime DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`),
  KEY `idx_sys_logininfor_s` (`status`),
  KEY `idx_sys_logininfor_lt` (`login_time`)
) ENGINE=InnoDB AUTO_INCREMENT=168 DEFAULT CHARSET=utf8 COMMENT='系统访问记录';

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES ('100', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-01-06 21:20:49');
INSERT INTO `sys_logininfor` VALUES ('101', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-01-07 14:14:04');
INSERT INTO `sys_logininfor` VALUES ('102', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2024-01-07 19:18:37');
INSERT INTO `sys_logininfor` VALUES ('103', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-01-07 19:20:25');
INSERT INTO `sys_logininfor` VALUES ('104', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2024-01-07 19:49:16');
INSERT INTO `sys_logininfor` VALUES ('105', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-01-07 19:51:35');
INSERT INTO `sys_logininfor` VALUES ('106', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '验证码错误', '2024-01-08 17:43:29');
INSERT INTO `sys_logininfor` VALUES ('107', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-01-08 17:43:34');
INSERT INTO `sys_logininfor` VALUES ('108', '19976618156', '127.0.0.1', '内网IP', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '注册成功', '2024-01-08 18:18:47');
INSERT INTO `sys_logininfor` VALUES ('109', '19976618156', '127.0.0.1', '内网IP', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2024-01-08 18:20:22');
INSERT INTO `sys_logininfor` VALUES ('110', '19976618156', '127.0.0.1', '内网IP', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '注册成功', '2024-01-08 18:36:55');
INSERT INTO `sys_logininfor` VALUES ('111', '19976618156', '127.0.0.1', '内网IP', 'Mobile Safari', 'Mac OS X (iPhone)', '1', '验证码已失效', '2024-01-08 18:40:12');
INSERT INTO `sys_logininfor` VALUES ('112', '19976618156', '127.0.0.1', '内网IP', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2024-01-08 18:40:19');
INSERT INTO `sys_logininfor` VALUES ('113', '19976618156', '127.0.0.1', '内网IP', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '注册成功', '2024-01-08 19:19:28');
INSERT INTO `sys_logininfor` VALUES ('114', '19976618156', '127.0.0.1', '内网IP', 'Mobile Safari', 'Mac OS X (iPhone)', '1', '验证码错误', '2024-01-08 19:19:50');
INSERT INTO `sys_logininfor` VALUES ('115', '19976618156', '127.0.0.1', '内网IP', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2024-01-08 19:19:55');
INSERT INTO `sys_logininfor` VALUES ('116', 'maple', '127.0.0.1', '内网IP', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '注册成功', '2024-01-08 19:22:51');
INSERT INTO `sys_logininfor` VALUES ('117', '19976618156', '127.0.0.1', '内网IP', 'Mobile Safari', 'Mac OS X (iPhone)', '1', '登录用户：19976618156 不存在', '2024-01-08 19:35:43');
INSERT INTO `sys_logininfor` VALUES ('118', '19976618156', '127.0.0.1', '内网IP', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '注册成功', '2024-01-08 19:59:00');
INSERT INTO `sys_logininfor` VALUES ('119', '19976618157', '127.0.0.1', '内网IP', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '注册成功', '2024-01-08 19:59:37');
INSERT INTO `sys_logininfor` VALUES ('120', '19976618156', '127.0.0.1', '内网IP', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2024-01-08 19:59:54');
INSERT INTO `sys_logininfor` VALUES ('121', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-01-09 12:28:35');
INSERT INTO `sys_logininfor` VALUES ('122', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2024-01-09 13:14:12');
INSERT INTO `sys_logininfor` VALUES ('123', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-01-09 13:14:29');
INSERT INTO `sys_logininfor` VALUES ('124', 'admin', '127.0.0.1', '内网IP', 'Chrome Mobile', 'Android 6.x', '0', '登录成功', '2024-01-10 00:35:35');
INSERT INTO `sys_logininfor` VALUES ('125', '19976618156', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-01-10 00:48:04');
INSERT INTO `sys_logininfor` VALUES ('126', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-01-10 01:16:13');
INSERT INTO `sys_logininfor` VALUES ('127', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2024-01-10 01:49:19');
INSERT INTO `sys_logininfor` VALUES ('128', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-01-10 01:49:25');
INSERT INTO `sys_logininfor` VALUES ('129', '19976618156', '127.0.0.1', '内网IP', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2024-01-13 15:37:38');
INSERT INTO `sys_logininfor` VALUES ('130', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-01-13 16:12:54');
INSERT INTO `sys_logininfor` VALUES ('131', '19976618156', '127.0.0.1', '内网IP', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2024-01-13 22:57:27');
INSERT INTO `sys_logininfor` VALUES ('132', '19976618156', '127.0.0.1', '内网IP', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '退出成功', '2024-01-13 22:57:53');
INSERT INTO `sys_logininfor` VALUES ('133', '19976618156', '127.0.0.1', '内网IP', 'Mobile Safari', 'Mac OS X (iPhone)', '1', '验证码错误', '2024-01-13 22:59:23');
INSERT INTO `sys_logininfor` VALUES ('134', '19976618156', '127.0.0.1', '内网IP', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2024-01-13 22:59:28');
INSERT INTO `sys_logininfor` VALUES ('135', '19976618156', '127.0.0.1', '内网IP', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2024-01-14 11:03:57');
INSERT INTO `sys_logininfor` VALUES ('136', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-01-14 12:11:34');
INSERT INTO `sys_logininfor` VALUES ('137', '19976618156', '127.0.0.1', '内网IP', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2024-01-15 01:00:01');
INSERT INTO `sys_logininfor` VALUES ('138', '19976618156', '127.0.0.1', '内网IP', 'Mobile Safari', 'Mac OS X (iPhone)', '1', '验证码错误', '2024-01-16 09:39:09');
INSERT INTO `sys_logininfor` VALUES ('139', '19976618156', '127.0.0.1', '内网IP', 'Mobile Safari', 'Mac OS X (iPhone)', '1', '验证码错误', '2024-01-16 09:39:17');
INSERT INTO `sys_logininfor` VALUES ('140', '19976618156', '127.0.0.1', '内网IP', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2024-01-16 09:39:26');
INSERT INTO `sys_logininfor` VALUES ('141', '19976618156', '127.0.0.1', '内网IP', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2024-01-16 09:52:51');
INSERT INTO `sys_logininfor` VALUES ('142', '19976618156', '127.0.0.1', '内网IP', 'Mobile Safari', 'Mac OS X (iPhone)', '1', '验证码错误', '2024-01-18 00:28:37');
INSERT INTO `sys_logininfor` VALUES ('143', '19976618156', '127.0.0.1', '内网IP', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2024-01-18 00:28:44');
INSERT INTO `sys_logininfor` VALUES ('144', '19976618156', '127.0.0.1', '内网IP', 'Mobile Safari', 'Mac OS X (iPhone)', '1', '验证码错误', '2024-01-20 12:20:29');
INSERT INTO `sys_logininfor` VALUES ('145', '19976618156', '127.0.0.1', '内网IP', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2024-01-20 12:20:35');
INSERT INTO `sys_logininfor` VALUES ('146', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-01-20 12:25:11');
INSERT INTO `sys_logininfor` VALUES ('147', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-01-21 10:07:26');
INSERT INTO `sys_logininfor` VALUES ('148', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-01-21 12:54:27');
INSERT INTO `sys_logininfor` VALUES ('149', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2024-01-21 13:08:21');
INSERT INTO `sys_logininfor` VALUES ('150', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2024-01-21 13:08:21');
INSERT INTO `sys_logininfor` VALUES ('151', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-01-21 13:08:29');
INSERT INTO `sys_logininfor` VALUES ('152', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2024-01-21 13:11:42');
INSERT INTO `sys_logininfor` VALUES ('153', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '验证码错误', '2024-01-21 13:11:47');
INSERT INTO `sys_logininfor` VALUES ('154', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-01-21 13:11:53');
INSERT INTO `sys_logininfor` VALUES ('155', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2024-01-21 14:38:13');
INSERT INTO `sys_logininfor` VALUES ('156', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-01-21 14:38:22');
INSERT INTO `sys_logininfor` VALUES ('157', '19976618156', '127.0.0.1', '内网IP', 'Mobile Safari', 'iOS 10 (iPhone)', '0', '登录成功', '2024-01-21 15:53:13');
INSERT INTO `sys_logininfor` VALUES ('158', '19976618156', '127.0.0.1', '内网IP', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '退出成功', '2024-01-21 17:06:45');
INSERT INTO `sys_logininfor` VALUES ('159', '19976618156', '127.0.0.1', '内网IP', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2024-01-21 17:07:28');
INSERT INTO `sys_logininfor` VALUES ('160', '19976618156', '127.0.0.1', '内网IP', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '退出成功', '2024-01-21 17:30:53');
INSERT INTO `sys_logininfor` VALUES ('161', '19976618156', '127.0.0.1', '内网IP', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2024-01-21 23:31:00');
INSERT INTO `sys_logininfor` VALUES ('162', '19976618156', '127.0.0.1', '内网IP', 'Mobile Safari', 'Mac OS X (iPhone)', '1', '验证码已失效', '2024-01-27 13:30:46');
INSERT INTO `sys_logininfor` VALUES ('163', '19976618156', '127.0.0.1', '内网IP', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2024-01-27 13:31:10');
INSERT INTO `sys_logininfor` VALUES ('164', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-01-27 13:36:40');
INSERT INTO `sys_logininfor` VALUES ('165', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '验证码已失效', '2024-01-27 14:32:41');
INSERT INTO `sys_logininfor` VALUES ('166', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '验证码错误', '2024-01-27 14:32:47');
INSERT INTO `sys_logininfor` VALUES ('167', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-01-27 14:32:50');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父菜单ID',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `path` varchar(200) DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) DEFAULT NULL COMMENT '组件路径',
  `query` varchar(255) DEFAULT NULL COMMENT '路由参数',
  `is_frame` int(1) DEFAULT '1' COMMENT '是否为外链（0是 1否）',
  `is_cache` int(1) DEFAULT '0' COMMENT '是否缓存（0缓存 1不缓存）',
  `menu_type` char(1) DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2088 DEFAULT CHARSET=utf8 COMMENT='菜单权限表';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', '系统管理', '0', '1', 'system', null, '', '1', '0', 'M', '0', '0', '', 'system', 'admin', '2024-01-05 23:55:12', '', null, '系统管理目录');
INSERT INTO `sys_menu` VALUES ('2', '系统监控', '0', '2', 'monitor', null, '', '1', '0', 'M', '0', '0', '', 'monitor', 'admin', '2024-01-05 23:55:12', '', null, '系统监控目录');
INSERT INTO `sys_menu` VALUES ('3', '系统工具', '0', '3', 'tool', null, '', '1', '0', 'M', '0', '0', '', 'tool', 'admin', '2024-01-05 23:55:12', '', null, '系统工具目录');
INSERT INTO `sys_menu` VALUES ('100', '管理员信息', '1', '1', 'user', 'system/user/index', '', '1', '0', 'C', '0', '0', 'system:user:list', 'user', 'admin', '2024-01-05 23:55:13', 'admin', '2024-01-06 21:44:32', '用户管理菜单');
INSERT INTO `sys_menu` VALUES ('101', '角色管理', '1', '2', 'role', 'system/role/index', '', '1', '0', 'C', '0', '0', 'system:role:list', 'peoples', 'admin', '2024-01-05 23:55:13', '', null, '角色管理菜单');
INSERT INTO `sys_menu` VALUES ('102', '菜单管理', '1', '3', 'menu', 'system/menu/index', '', '1', '0', 'C', '0', '0', 'system:menu:list', 'tree-table', 'admin', '2024-01-05 23:55:13', '', null, '菜单管理菜单');
INSERT INTO `sys_menu` VALUES ('105', '字典管理', '1', '6', 'dict', 'system/dict/index', '', '1', '0', 'C', '0', '0', 'system:dict:list', 'dict', 'admin', '2024-01-05 23:55:14', '', null, '字典管理菜单');
INSERT INTO `sys_menu` VALUES ('106', '参数设置', '1', '7', 'config', 'system/config/index', '', '1', '0', 'C', '0', '0', 'system:config:list', 'edit', 'admin', '2024-01-05 23:55:14', '', null, '参数设置菜单');
INSERT INTO `sys_menu` VALUES ('107', '通知公告', '1', '8', 'notice', 'system/notice/index', '', '1', '0', 'C', '0', '0', 'system:notice:list', 'message', 'admin', '2024-01-05 23:55:14', '', null, '通知公告菜单');
INSERT INTO `sys_menu` VALUES ('108', '日志管理', '1', '9', 'log', '', '', '1', '0', 'M', '0', '0', '', 'log', 'admin', '2024-01-05 23:55:14', '', null, '日志管理菜单');
INSERT INTO `sys_menu` VALUES ('109', '在线用户', '2', '1', 'online', 'monitor/online/index', '', '1', '0', 'C', '0', '0', 'monitor:online:list', 'online', 'admin', '2024-01-05 23:55:14', '', null, '在线用户菜单');
INSERT INTO `sys_menu` VALUES ('110', '定时任务', '2', '2', 'job', 'monitor/job/index', '', '1', '0', 'C', '0', '0', 'monitor:job:list', 'job', 'admin', '2024-01-05 23:55:15', '', null, '定时任务菜单');
INSERT INTO `sys_menu` VALUES ('111', '数据监控', '2', '3', 'druid', 'monitor/druid/index', '', '1', '0', 'C', '0', '0', 'monitor:druid:list', 'druid', 'admin', '2024-01-05 23:55:15', '', null, '数据监控菜单');
INSERT INTO `sys_menu` VALUES ('112', '服务监控', '2', '4', 'server', 'monitor/server/index', '', '1', '0', 'C', '0', '0', 'monitor:server:list', 'server', 'admin', '2024-01-05 23:55:15', '', null, '服务监控菜单');
INSERT INTO `sys_menu` VALUES ('113', '缓存监控', '2', '5', 'cache', 'monitor/cache/index', '', '1', '0', 'C', '0', '0', 'monitor:cache:list', 'redis', 'admin', '2024-01-05 23:55:15', '', null, '缓存监控菜单');
INSERT INTO `sys_menu` VALUES ('114', '缓存列表', '2', '6', 'cacheList', 'monitor/cache/list', '', '1', '0', 'C', '0', '0', 'monitor:cache:list', 'redis-list', 'admin', '2024-01-05 23:55:16', '', null, '缓存列表菜单');
INSERT INTO `sys_menu` VALUES ('115', '表单构建', '3', '1', 'build', 'tool/build/index', '', '1', '0', 'C', '0', '0', 'tool:build:list', 'build', 'admin', '2024-01-05 23:55:16', '', null, '表单构建菜单');
INSERT INTO `sys_menu` VALUES ('116', '代码生成', '3', '2', 'gen', 'tool/gen/index', '', '1', '0', 'C', '0', '0', 'tool:gen:list', 'code', 'admin', '2024-01-05 23:55:16', '', null, '代码生成菜单');
INSERT INTO `sys_menu` VALUES ('117', '系统接口', '3', '3', 'swagger', 'tool/swagger/index', '', '1', '0', 'C', '0', '0', 'tool:swagger:list', 'swagger', 'admin', '2024-01-05 23:55:16', '', null, '系统接口菜单');
INSERT INTO `sys_menu` VALUES ('500', '操作日志', '108', '1', 'operlog', 'monitor/operlog/index', '', '1', '0', 'C', '0', '0', 'monitor:operlog:list', 'form', 'admin', '2024-01-05 23:55:16', '', null, '操作日志菜单');
INSERT INTO `sys_menu` VALUES ('501', '登录日志', '108', '2', 'logininfor', 'monitor/logininfor/index', '', '1', '0', 'C', '0', '0', 'monitor:logininfor:list', 'logininfor', 'admin', '2024-01-05 23:55:16', '', null, '登录日志菜单');
INSERT INTO `sys_menu` VALUES ('1000', '用户查询', '100', '1', '', '', '', '1', '0', 'F', '0', '0', 'system:user:query', '#', 'admin', '2024-01-05 23:55:17', '', null, '');
INSERT INTO `sys_menu` VALUES ('1001', '用户新增', '100', '2', '', '', '', '1', '0', 'F', '0', '0', 'system:user:add', '#', 'admin', '2024-01-05 23:55:17', '', null, '');
INSERT INTO `sys_menu` VALUES ('1002', '用户修改', '100', '3', '', '', '', '1', '0', 'F', '0', '0', 'system:user:edit', '#', 'admin', '2024-01-05 23:55:17', '', null, '');
INSERT INTO `sys_menu` VALUES ('1003', '用户删除', '100', '4', '', '', '', '1', '0', 'F', '0', '0', 'system:user:remove', '#', 'admin', '2024-01-05 23:55:17', '', null, '');
INSERT INTO `sys_menu` VALUES ('1004', '用户导出', '100', '5', '', '', '', '1', '0', 'F', '0', '0', 'system:user:export', '#', 'admin', '2024-01-05 23:55:18', '', null, '');
INSERT INTO `sys_menu` VALUES ('1005', '用户导入', '100', '6', '', '', '', '1', '0', 'F', '0', '0', 'system:user:import', '#', 'admin', '2024-01-05 23:55:18', '', null, '');
INSERT INTO `sys_menu` VALUES ('1006', '重置密码', '100', '7', '', '', '', '1', '0', 'F', '0', '0', 'system:user:resetPwd', '#', 'admin', '2024-01-05 23:55:18', '', null, '');
INSERT INTO `sys_menu` VALUES ('1007', '角色查询', '101', '1', '', '', '', '1', '0', 'F', '0', '0', 'system:role:query', '#', 'admin', '2024-01-05 23:55:18', '', null, '');
INSERT INTO `sys_menu` VALUES ('1008', '角色新增', '101', '2', '', '', '', '1', '0', 'F', '0', '0', 'system:role:add', '#', 'admin', '2024-01-05 23:55:18', '', null, '');
INSERT INTO `sys_menu` VALUES ('1009', '角色修改', '101', '3', '', '', '', '1', '0', 'F', '0', '0', 'system:role:edit', '#', 'admin', '2024-01-05 23:55:19', '', null, '');
INSERT INTO `sys_menu` VALUES ('1010', '角色删除', '101', '4', '', '', '', '1', '0', 'F', '0', '0', 'system:role:remove', '#', 'admin', '2024-01-05 23:55:19', '', null, '');
INSERT INTO `sys_menu` VALUES ('1011', '角色导出', '101', '5', '', '', '', '1', '0', 'F', '0', '0', 'system:role:export', '#', 'admin', '2024-01-05 23:55:19', '', null, '');
INSERT INTO `sys_menu` VALUES ('1012', '菜单查询', '102', '1', '', '', '', '1', '0', 'F', '0', '0', 'system:menu:query', '#', 'admin', '2024-01-05 23:55:19', '', null, '');
INSERT INTO `sys_menu` VALUES ('1013', '菜单新增', '102', '2', '', '', '', '1', '0', 'F', '0', '0', 'system:menu:add', '#', 'admin', '2024-01-05 23:55:19', '', null, '');
INSERT INTO `sys_menu` VALUES ('1014', '菜单修改', '102', '3', '', '', '', '1', '0', 'F', '0', '0', 'system:menu:edit', '#', 'admin', '2024-01-05 23:55:20', '', null, '');
INSERT INTO `sys_menu` VALUES ('1015', '菜单删除', '102', '4', '', '', '', '1', '0', 'F', '0', '0', 'system:menu:remove', '#', 'admin', '2024-01-05 23:55:20', '', null, '');
INSERT INTO `sys_menu` VALUES ('1025', '字典查询', '105', '1', '#', '', '', '1', '0', 'F', '0', '0', 'system:dict:query', '#', 'admin', '2024-01-05 23:55:22', '', null, '');
INSERT INTO `sys_menu` VALUES ('1026', '字典新增', '105', '2', '#', '', '', '1', '0', 'F', '0', '0', 'system:dict:add', '#', 'admin', '2024-01-05 23:55:22', '', null, '');
INSERT INTO `sys_menu` VALUES ('1027', '字典修改', '105', '3', '#', '', '', '1', '0', 'F', '0', '0', 'system:dict:edit', '#', 'admin', '2024-01-05 23:55:22', '', null, '');
INSERT INTO `sys_menu` VALUES ('1028', '字典删除', '105', '4', '#', '', '', '1', '0', 'F', '0', '0', 'system:dict:remove', '#', 'admin', '2024-01-05 23:55:23', '', null, '');
INSERT INTO `sys_menu` VALUES ('1029', '字典导出', '105', '5', '#', '', '', '1', '0', 'F', '0', '0', 'system:dict:export', '#', 'admin', '2024-01-05 23:55:23', '', null, '');
INSERT INTO `sys_menu` VALUES ('1030', '参数查询', '106', '1', '#', '', '', '1', '0', 'F', '0', '0', 'system:config:query', '#', 'admin', '2024-01-05 23:55:23', '', null, '');
INSERT INTO `sys_menu` VALUES ('1031', '参数新增', '106', '2', '#', '', '', '1', '0', 'F', '0', '0', 'system:config:add', '#', 'admin', '2024-01-05 23:55:23', '', null, '');
INSERT INTO `sys_menu` VALUES ('1032', '参数修改', '106', '3', '#', '', '', '1', '0', 'F', '0', '0', 'system:config:edit', '#', 'admin', '2024-01-05 23:55:23', '', null, '');
INSERT INTO `sys_menu` VALUES ('1033', '参数删除', '106', '4', '#', '', '', '1', '0', 'F', '0', '0', 'system:config:remove', '#', 'admin', '2024-01-05 23:55:24', '', null, '');
INSERT INTO `sys_menu` VALUES ('1034', '参数导出', '106', '5', '#', '', '', '1', '0', 'F', '0', '0', 'system:config:export', '#', 'admin', '2024-01-05 23:55:24', '', null, '');
INSERT INTO `sys_menu` VALUES ('1035', '公告查询', '107', '1', '#', '', '', '1', '0', 'F', '0', '0', 'system:notice:query', '#', 'admin', '2024-01-05 23:55:24', '', null, '');
INSERT INTO `sys_menu` VALUES ('1036', '公告新增', '107', '2', '#', '', '', '1', '0', 'F', '0', '0', 'system:notice:add', '#', 'admin', '2024-01-05 23:55:24', '', null, '');
INSERT INTO `sys_menu` VALUES ('1037', '公告修改', '107', '3', '#', '', '', '1', '0', 'F', '0', '0', 'system:notice:edit', '#', 'admin', '2024-01-05 23:55:24', '', null, '');
INSERT INTO `sys_menu` VALUES ('1038', '公告删除', '107', '4', '#', '', '', '1', '0', 'F', '0', '0', 'system:notice:remove', '#', 'admin', '2024-01-05 23:55:25', '', null, '');
INSERT INTO `sys_menu` VALUES ('1039', '操作查询', '500', '1', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:operlog:query', '#', 'admin', '2024-01-05 23:55:25', '', null, '');
INSERT INTO `sys_menu` VALUES ('1040', '操作删除', '500', '2', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:operlog:remove', '#', 'admin', '2024-01-05 23:55:25', '', null, '');
INSERT INTO `sys_menu` VALUES ('1041', '日志导出', '500', '3', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:operlog:export', '#', 'admin', '2024-01-05 23:55:25', '', null, '');
INSERT INTO `sys_menu` VALUES ('1042', '登录查询', '501', '1', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:logininfor:query', '#', 'admin', '2024-01-05 23:55:25', '', null, '');
INSERT INTO `sys_menu` VALUES ('1043', '登录删除', '501', '2', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:logininfor:remove', '#', 'admin', '2024-01-05 23:55:25', '', null, '');
INSERT INTO `sys_menu` VALUES ('1044', '日志导出', '501', '3', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:logininfor:export', '#', 'admin', '2024-01-05 23:55:25', '', null, '');
INSERT INTO `sys_menu` VALUES ('1045', '账户解锁', '501', '4', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:logininfor:unlock', '#', 'admin', '2024-01-05 23:55:25', '', null, '');
INSERT INTO `sys_menu` VALUES ('1046', '在线查询', '109', '1', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:online:query', '#', 'admin', '2024-01-05 23:55:26', '', null, '');
INSERT INTO `sys_menu` VALUES ('1047', '批量强退', '109', '2', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:online:batchLogout', '#', 'admin', '2024-01-05 23:55:26', '', null, '');
INSERT INTO `sys_menu` VALUES ('1048', '单条强退', '109', '3', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:online:forceLogout', '#', 'admin', '2024-01-05 23:55:26', '', null, '');
INSERT INTO `sys_menu` VALUES ('1049', '任务查询', '110', '1', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:job:query', '#', 'admin', '2024-01-05 23:55:26', '', null, '');
INSERT INTO `sys_menu` VALUES ('1050', '任务新增', '110', '2', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:job:add', '#', 'admin', '2024-01-05 23:55:26', '', null, '');
INSERT INTO `sys_menu` VALUES ('1051', '任务修改', '110', '3', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:job:edit', '#', 'admin', '2024-01-05 23:55:26', '', null, '');
INSERT INTO `sys_menu` VALUES ('1052', '任务删除', '110', '4', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:job:remove', '#', 'admin', '2024-01-05 23:55:26', '', null, '');
INSERT INTO `sys_menu` VALUES ('1053', '状态修改', '110', '5', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:job:changeStatus', '#', 'admin', '2024-01-05 23:55:26', '', null, '');
INSERT INTO `sys_menu` VALUES ('1054', '任务导出', '110', '6', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:job:export', '#', 'admin', '2024-01-05 23:55:26', '', null, '');
INSERT INTO `sys_menu` VALUES ('1055', '生成查询', '116', '1', '#', '', '', '1', '0', 'F', '0', '0', 'tool:gen:query', '#', 'admin', '2024-01-05 23:55:26', '', null, '');
INSERT INTO `sys_menu` VALUES ('1056', '生成修改', '116', '2', '#', '', '', '1', '0', 'F', '0', '0', 'tool:gen:edit', '#', 'admin', '2024-01-05 23:55:27', '', null, '');
INSERT INTO `sys_menu` VALUES ('1057', '生成删除', '116', '3', '#', '', '', '1', '0', 'F', '0', '0', 'tool:gen:remove', '#', 'admin', '2024-01-05 23:55:27', '', null, '');
INSERT INTO `sys_menu` VALUES ('1058', '导入代码', '116', '4', '#', '', '', '1', '0', 'F', '0', '0', 'tool:gen:import', '#', 'admin', '2024-01-05 23:55:27', '', null, '');
INSERT INTO `sys_menu` VALUES ('1059', '预览代码', '116', '5', '#', '', '', '1', '0', 'F', '0', '0', 'tool:gen:preview', '#', 'admin', '2024-01-05 23:55:27', '', null, '');
INSERT INTO `sys_menu` VALUES ('1060', '生成代码', '116', '6', '#', '', '', '1', '0', 'F', '0', '0', 'tool:gen:code', '#', 'admin', '2024-01-05 23:55:27', '', null, '');
INSERT INTO `sys_menu` VALUES ('2000', 'C端客户', '1', '1', 'custom', 'system/custom/index', null, '1', '0', 'C', '0', '0', 'system:user:list', 'user', 'admin', '2024-01-06 21:46:56', '', null, '');
INSERT INTO `sys_menu` VALUES ('2001', '转运管理', '0', '4', 'maple', null, null, '1', '0', 'M', '0', '0', null, 'server', 'admin', '2024-01-07 14:25:43', '', null, '');
INSERT INTO `sys_menu` VALUES ('2002', '轮播图', '2001', '1', 'carouselChart', 'maple/carouselChart/index', null, '1', '0', 'C', '0', '0', 'maple:carouselChart:list', '#', 'admin', '2024-01-07 15:31:16', '', null, '轮播图菜单');
INSERT INTO `sys_menu` VALUES ('2003', '轮播图查询', '2002', '1', '#', '', null, '1', '0', 'F', '0', '0', 'maple:carouselChart:query', '#', 'admin', '2024-01-07 15:31:16', '', null, '');
INSERT INTO `sys_menu` VALUES ('2004', '轮播图新增', '2002', '2', '#', '', null, '1', '0', 'F', '0', '0', 'maple:carouselChart:add', '#', 'admin', '2024-01-07 15:31:16', '', null, '');
INSERT INTO `sys_menu` VALUES ('2005', '轮播图修改', '2002', '3', '#', '', null, '1', '0', 'F', '0', '0', 'maple:carouselChart:edit', '#', 'admin', '2024-01-07 15:31:16', '', null, '');
INSERT INTO `sys_menu` VALUES ('2006', '轮播图删除', '2002', '4', '#', '', null, '1', '0', 'F', '0', '0', 'maple:carouselChart:remove', '#', 'admin', '2024-01-07 15:31:16', '', null, '');
INSERT INTO `sys_menu` VALUES ('2007', '轮播图导出', '2002', '5', '#', '', null, '1', '0', 'F', '0', '0', 'maple:carouselChart:export', '#', 'admin', '2024-01-07 15:31:16', '', null, '');
INSERT INTO `sys_menu` VALUES ('2008', '客服中心', '2001', '1', 'customerServer', 'maple/customerServer/index', null, '1', '0', 'C', '0', '0', 'maple:customerServer:list', '#', 'admin', '2024-01-07 15:31:38', '', null, '客服中心菜单');
INSERT INTO `sys_menu` VALUES ('2009', '客服中心查询', '2008', '1', '#', '', null, '1', '0', 'F', '0', '0', 'maple:customerServer:query', '#', 'admin', '2024-01-07 15:31:38', '', null, '');
INSERT INTO `sys_menu` VALUES ('2010', '客服中心新增', '2008', '2', '#', '', null, '1', '0', 'F', '0', '0', 'maple:customerServer:add', '#', 'admin', '2024-01-07 15:31:38', '', null, '');
INSERT INTO `sys_menu` VALUES ('2011', '客服中心修改', '2008', '3', '#', '', null, '1', '0', 'F', '0', '0', 'maple:customerServer:edit', '#', 'admin', '2024-01-07 15:31:38', '', null, '');
INSERT INTO `sys_menu` VALUES ('2012', '客服中心删除', '2008', '4', '#', '', null, '1', '0', 'F', '0', '0', 'maple:customerServer:remove', '#', 'admin', '2024-01-07 15:31:38', '', null, '');
INSERT INTO `sys_menu` VALUES ('2013', '客服中心导出', '2008', '5', '#', '', null, '1', '0', 'F', '0', '0', 'maple:customerServer:export', '#', 'admin', '2024-01-07 15:31:38', '', null, '');
INSERT INTO `sys_menu` VALUES ('2014', '快递公司', '2001', '1', 'expressCompany', 'maple/expressCompany/index', null, '1', '0', 'C', '0', '0', 'maple:expressCompany:list', '#', 'admin', '2024-01-07 15:31:58', '', null, '快递公司菜单');
INSERT INTO `sys_menu` VALUES ('2015', '快递公司查询', '2014', '1', '#', '', null, '1', '0', 'F', '0', '0', 'maple:expressCompany:query', '#', 'admin', '2024-01-07 15:31:58', '', null, '');
INSERT INTO `sys_menu` VALUES ('2016', '快递公司新增', '2014', '2', '#', '', null, '1', '0', 'F', '0', '0', 'maple:expressCompany:add', '#', 'admin', '2024-01-07 15:31:58', '', null, '');
INSERT INTO `sys_menu` VALUES ('2017', '快递公司修改', '2014', '3', '#', '', null, '1', '0', 'F', '0', '0', 'maple:expressCompany:edit', '#', 'admin', '2024-01-07 15:31:58', '', null, '');
INSERT INTO `sys_menu` VALUES ('2018', '快递公司删除', '2014', '4', '#', '', null, '1', '0', 'F', '0', '0', 'maple:expressCompany:remove', '#', 'admin', '2024-01-07 15:31:59', '', null, '');
INSERT INTO `sys_menu` VALUES ('2019', '快递公司导出', '2014', '5', '#', '', null, '1', '0', 'F', '0', '0', 'maple:expressCompany:export', '#', 'admin', '2024-01-07 15:31:59', '', null, '');
INSERT INTO `sys_menu` VALUES ('2020', '反馈中心', '2001', '1', 'feedback', 'maple/feedback/index', null, '1', '0', 'C', '0', '0', 'maple:feedback:list', '#', 'admin', '2024-01-07 15:32:20', '', null, '反馈中心菜单');
INSERT INTO `sys_menu` VALUES ('2021', '反馈中心查询', '2020', '1', '#', '', null, '1', '0', 'F', '0', '0', 'maple:feedback:query', '#', 'admin', '2024-01-07 15:32:20', '', null, '');
INSERT INTO `sys_menu` VALUES ('2022', '反馈中心新增', '2020', '2', '#', '', null, '1', '0', 'F', '0', '0', 'maple:feedback:add', '#', 'admin', '2024-01-07 15:32:20', '', null, '');
INSERT INTO `sys_menu` VALUES ('2023', '反馈中心修改', '2020', '3', '#', '', null, '1', '0', 'F', '0', '0', 'maple:feedback:edit', '#', 'admin', '2024-01-07 15:32:20', '', null, '');
INSERT INTO `sys_menu` VALUES ('2024', '反馈中心删除', '2020', '4', '#', '', null, '1', '0', 'F', '0', '0', 'maple:feedback:remove', '#', 'admin', '2024-01-07 15:32:20', '', null, '');
INSERT INTO `sys_menu` VALUES ('2025', '反馈中心导出', '2020', '5', '#', '', null, '1', '0', 'F', '0', '0', 'maple:feedback:export', '#', 'admin', '2024-01-07 15:32:20', '', null, '');
INSERT INTO `sys_menu` VALUES ('2026', '商品', '2001', '1', 'goods', 'maple/goods/index', null, '1', '0', 'C', '0', '0', 'maple:goods:list', '#', 'admin', '2024-01-07 15:32:32', '', null, '商品菜单');
INSERT INTO `sys_menu` VALUES ('2027', '商品查询', '2026', '1', '#', '', null, '1', '0', 'F', '0', '0', 'maple:goods:query', '#', 'admin', '2024-01-07 15:32:32', '', null, '');
INSERT INTO `sys_menu` VALUES ('2028', '商品新增', '2026', '2', '#', '', null, '1', '0', 'F', '0', '0', 'maple:goods:add', '#', 'admin', '2024-01-07 15:32:32', '', null, '');
INSERT INTO `sys_menu` VALUES ('2029', '商品修改', '2026', '3', '#', '', null, '1', '0', 'F', '0', '0', 'maple:goods:edit', '#', 'admin', '2024-01-07 15:32:32', '', null, '');
INSERT INTO `sys_menu` VALUES ('2030', '商品删除', '2026', '4', '#', '', null, '1', '0', 'F', '0', '0', 'maple:goods:remove', '#', 'admin', '2024-01-07 15:32:32', '', null, '');
INSERT INTO `sys_menu` VALUES ('2031', '商品导出', '2026', '5', '#', '', null, '1', '0', 'F', '0', '0', 'maple:goods:export', '#', 'admin', '2024-01-07 15:32:32', '', null, '');
INSERT INTO `sys_menu` VALUES ('2032', '帮助中心', '2001', '1', 'help', 'maple/help/index', null, '1', '0', 'C', '0', '0', 'maple:help:list', '#', 'admin', '2024-01-07 15:32:58', '', null, '帮助中心菜单');
INSERT INTO `sys_menu` VALUES ('2033', '帮助中心查询', '2032', '1', '#', '', null, '1', '0', 'F', '0', '0', 'maple:help:query', '#', 'admin', '2024-01-07 15:32:58', '', null, '');
INSERT INTO `sys_menu` VALUES ('2034', '帮助中心新增', '2032', '2', '#', '', null, '1', '0', 'F', '0', '0', 'maple:help:add', '#', 'admin', '2024-01-07 15:32:58', '', null, '');
INSERT INTO `sys_menu` VALUES ('2035', '帮助中心修改', '2032', '3', '#', '', null, '1', '0', 'F', '0', '0', 'maple:help:edit', '#', 'admin', '2024-01-07 15:32:58', '', null, '');
INSERT INTO `sys_menu` VALUES ('2036', '帮助中心删除', '2032', '4', '#', '', null, '1', '0', 'F', '0', '0', 'maple:help:remove', '#', 'admin', '2024-01-07 15:32:58', '', null, '');
INSERT INTO `sys_menu` VALUES ('2037', '帮助中心导出', '2032', '5', '#', '', null, '1', '0', 'F', '0', '0', 'maple:help:export', '#', 'admin', '2024-01-07 15:32:58', '', null, '');
INSERT INTO `sys_menu` VALUES ('2038', '订单物流', '2001', '1', 'logistics', 'maple/logistics/index', null, '1', '0', 'C', '0', '0', 'maple:logistics:list', '#', 'admin', '2024-01-07 15:33:11', '', null, '订单物流菜单');
INSERT INTO `sys_menu` VALUES ('2039', '订单物流查询', '2038', '1', '#', '', null, '1', '0', 'F', '0', '0', 'maple:logistics:query', '#', 'admin', '2024-01-07 15:33:12', '', null, '');
INSERT INTO `sys_menu` VALUES ('2040', '订单物流新增', '2038', '2', '#', '', null, '1', '0', 'F', '0', '0', 'maple:logistics:add', '#', 'admin', '2024-01-07 15:33:12', '', null, '');
INSERT INTO `sys_menu` VALUES ('2041', '订单物流修改', '2038', '3', '#', '', null, '1', '0', 'F', '0', '0', 'maple:logistics:edit', '#', 'admin', '2024-01-07 15:33:12', '', null, '');
INSERT INTO `sys_menu` VALUES ('2042', '订单物流删除', '2038', '4', '#', '', null, '1', '0', 'F', '0', '0', 'maple:logistics:remove', '#', 'admin', '2024-01-07 15:33:12', '', null, '');
INSERT INTO `sys_menu` VALUES ('2043', '订单物流导出', '2038', '5', '#', '', null, '1', '0', 'F', '0', '0', 'maple:logistics:export', '#', 'admin', '2024-01-07 15:33:12', '', null, '');
INSERT INTO `sys_menu` VALUES ('2044', '订单', '2001', '1', 'order', 'maple/order/index', null, '1', '0', 'C', '0', '0', 'maple:order:list', '#', 'admin', '2024-01-07 15:33:22', '', null, '订单菜单');
INSERT INTO `sys_menu` VALUES ('2045', '订单查询', '2044', '1', '#', '', null, '1', '0', 'F', '0', '0', 'maple:order:query', '#', 'admin', '2024-01-07 15:33:22', '', null, '');
INSERT INTO `sys_menu` VALUES ('2046', '订单新增', '2044', '2', '#', '', null, '1', '0', 'F', '0', '0', 'maple:order:add', '#', 'admin', '2024-01-07 15:33:22', '', null, '');
INSERT INTO `sys_menu` VALUES ('2047', '订单修改', '2044', '3', '#', '', null, '1', '0', 'F', '0', '0', 'maple:order:edit', '#', 'admin', '2024-01-07 15:33:22', '', null, '');
INSERT INTO `sys_menu` VALUES ('2048', '订单删除', '2044', '4', '#', '', null, '1', '0', 'F', '0', '0', 'maple:order:remove', '#', 'admin', '2024-01-07 15:33:22', '', null, '');
INSERT INTO `sys_menu` VALUES ('2049', '订单导出', '2044', '5', '#', '', null, '1', '0', 'F', '0', '0', 'maple:order:export', '#', 'admin', '2024-01-07 15:33:22', '', null, '');
INSERT INTO `sys_menu` VALUES ('2050', '订单详情', '2001', '1', 'orederDetails', 'maple/orederDetails/index', null, '1', '0', 'C', '0', '0', 'maple:orederDetails:list', '#', 'admin', '2024-01-07 15:33:32', 'admin', '2024-01-13 16:13:14', '订单详情菜单');
INSERT INTO `sys_menu` VALUES ('2051', '订单详情查询', '2050', '1', '#', '', null, '1', '0', 'F', '0', '0', 'maple:orederDetails:query', '#', 'admin', '2024-01-07 15:33:32', '', null, '');
INSERT INTO `sys_menu` VALUES ('2052', '订单详情新增', '2050', '2', '#', '', null, '1', '0', 'F', '0', '0', 'maple:orederDetails:add', '#', 'admin', '2024-01-07 15:33:33', '', null, '');
INSERT INTO `sys_menu` VALUES ('2053', '订单详情修改', '2050', '3', '#', '', null, '1', '0', 'F', '0', '0', 'maple:orederDetails:edit', '#', 'admin', '2024-01-07 15:33:33', '', null, '');
INSERT INTO `sys_menu` VALUES ('2054', '订单详情删除', '2050', '4', '#', '', null, '1', '0', 'F', '0', '0', 'maple:orederDetails:remove', '#', 'admin', '2024-01-07 15:33:33', '', null, '');
INSERT INTO `sys_menu` VALUES ('2055', '订单详情导出', '2050', '5', '#', '', null, '1', '0', 'F', '0', '0', 'maple:orederDetails:export', '#', 'admin', '2024-01-07 15:33:33', '', null, '');
INSERT INTO `sys_menu` VALUES ('2056', '状态日志', '2001', '1', 'statusLog', 'maple/statusLog/index', null, '1', '0', 'C', '0', '0', 'maple:statusLog:list', '#', 'admin', '2024-01-07 15:33:43', '', null, '状态日志菜单');
INSERT INTO `sys_menu` VALUES ('2057', '状态日志查询', '2056', '1', '#', '', null, '1', '0', 'F', '0', '0', 'maple:statusLog:query', '#', 'admin', '2024-01-07 15:33:43', '', null, '');
INSERT INTO `sys_menu` VALUES ('2058', '状态日志新增', '2056', '2', '#', '', null, '1', '0', 'F', '0', '0', 'maple:statusLog:add', '#', 'admin', '2024-01-07 15:33:43', '', null, '');
INSERT INTO `sys_menu` VALUES ('2059', '状态日志修改', '2056', '3', '#', '', null, '1', '0', 'F', '0', '0', 'maple:statusLog:edit', '#', 'admin', '2024-01-07 15:33:43', '', null, '');
INSERT INTO `sys_menu` VALUES ('2060', '状态日志删除', '2056', '4', '#', '', null, '1', '0', 'F', '0', '0', 'maple:statusLog:remove', '#', 'admin', '2024-01-07 15:33:43', '', null, '');
INSERT INTO `sys_menu` VALUES ('2061', '状态日志导出', '2056', '5', '#', '', null, '1', '0', 'F', '0', '0', 'maple:statusLog:export', '#', 'admin', '2024-01-07 15:33:43', '', null, '');
INSERT INTO `sys_menu` VALUES ('2062', '教程中心', '2001', '1', 'tutorial', 'maple/tutorial/index', null, '1', '0', 'C', '0', '0', 'maple:tutorial:list', '#', 'admin', '2024-01-07 15:34:10', '', null, '教程中心菜单');
INSERT INTO `sys_menu` VALUES ('2063', '教程中心查询', '2062', '1', '#', '', null, '1', '0', 'F', '0', '0', 'maple:tutorial:query', '#', 'admin', '2024-01-07 15:34:10', '', null, '');
INSERT INTO `sys_menu` VALUES ('2064', '教程中心新增', '2062', '2', '#', '', null, '1', '0', 'F', '0', '0', 'maple:tutorial:add', '#', 'admin', '2024-01-07 15:34:10', '', null, '');
INSERT INTO `sys_menu` VALUES ('2065', '教程中心修改', '2062', '3', '#', '', null, '1', '0', 'F', '0', '0', 'maple:tutorial:edit', '#', 'admin', '2024-01-07 15:34:10', '', null, '');
INSERT INTO `sys_menu` VALUES ('2066', '教程中心删除', '2062', '4', '#', '', null, '1', '0', 'F', '0', '0', 'maple:tutorial:remove', '#', 'admin', '2024-01-07 15:34:10', '', null, '');
INSERT INTO `sys_menu` VALUES ('2067', '教程中心导出', '2062', '5', '#', '', null, '1', '0', 'F', '0', '0', 'maple:tutorial:export', '#', 'admin', '2024-01-07 15:34:10', '', null, '');
INSERT INTO `sys_menu` VALUES ('2068', '仓库', '2001', '1', 'warehouse', 'maple/warehouse/index', null, '1', '0', 'C', '0', '0', 'maple:warehouse:list', '#', 'admin', '2024-01-07 15:34:20', '', null, '仓库菜单');
INSERT INTO `sys_menu` VALUES ('2069', '仓库查询', '2068', '1', '#', '', null, '1', '0', 'F', '0', '0', 'maple:warehouse:query', '#', 'admin', '2024-01-07 15:34:20', '', null, '');
INSERT INTO `sys_menu` VALUES ('2070', '仓库新增', '2068', '2', '#', '', null, '1', '0', 'F', '0', '0', 'maple:warehouse:add', '#', 'admin', '2024-01-07 15:34:20', '', null, '');
INSERT INTO `sys_menu` VALUES ('2071', '仓库修改', '2068', '3', '#', '', null, '1', '0', 'F', '0', '0', 'maple:warehouse:edit', '#', 'admin', '2024-01-07 15:34:20', '', null, '');
INSERT INTO `sys_menu` VALUES ('2072', '仓库删除', '2068', '4', '#', '', null, '1', '0', 'F', '0', '0', 'maple:warehouse:remove', '#', 'admin', '2024-01-07 15:34:20', '', null, '');
INSERT INTO `sys_menu` VALUES ('2073', '仓库导出', '2068', '5', '#', '', null, '1', '0', 'F', '0', '0', 'maple:warehouse:export', '#', 'admin', '2024-01-07 15:34:20', '', null, '');
INSERT INTO `sys_menu` VALUES ('2074', '客服微信IP绑定', '2001', '1', 'custmoerServerBind', 'maple/custmoerServerBind/index', null, '1', '0', 'C', '1', '0', 'maple:custmoerServerBind:list', '#', 'admin', '2024-01-09 13:11:38', 'admin', '2024-01-14 12:28:11', '客服微信IP绑定菜单');
INSERT INTO `sys_menu` VALUES ('2075', '客服微信IP绑定查询', '2074', '1', '#', '', null, '1', '0', 'F', '0', '0', 'maple:custmoerServerBind:query', '#', 'admin', '2024-01-09 13:11:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('2076', '客服微信IP绑定新增', '2074', '2', '#', '', null, '1', '0', 'F', '0', '0', 'maple:custmoerServerBind:add', '#', 'admin', '2024-01-09 13:11:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('2077', '客服微信IP绑定修改', '2074', '3', '#', '', null, '1', '0', 'F', '0', '0', 'maple:custmoerServerBind:edit', '#', 'admin', '2024-01-09 13:11:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('2078', '客服微信IP绑定删除', '2074', '4', '#', '', null, '1', '0', 'F', '0', '0', 'maple:custmoerServerBind:remove', '#', 'admin', '2024-01-09 13:11:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('2079', '客服微信IP绑定导出', '2074', '5', '#', '', null, '1', '0', 'F', '0', '0', 'maple:custmoerServerBind:export', '#', 'admin', '2024-01-09 13:11:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('2080', '地址', '2001', '1', 'address', 'maple/address/index', null, '1', '0', 'C', '1', '0', 'maple:address:list', '#', 'admin', '2024-01-14 16:25:55', 'admin', '2024-01-14 17:39:09', '地址菜单');
INSERT INTO `sys_menu` VALUES ('2081', '地址查询', '2080', '1', '#', '', null, '1', '0', 'F', '0', '0', 'maple:address:query', '#', 'admin', '2024-01-14 16:25:55', '', null, '');
INSERT INTO `sys_menu` VALUES ('2082', '地址新增', '2080', '2', '#', '', null, '1', '0', 'F', '0', '0', 'maple:address:add', '#', 'admin', '2024-01-14 16:25:55', '', null, '');
INSERT INTO `sys_menu` VALUES ('2083', '地址修改', '2080', '3', '#', '', null, '1', '0', 'F', '0', '0', 'maple:address:edit', '#', 'admin', '2024-01-14 16:25:55', '', null, '');
INSERT INTO `sys_menu` VALUES ('2084', '地址删除', '2080', '4', '#', '', null, '1', '0', 'F', '0', '0', 'maple:address:remove', '#', 'admin', '2024-01-14 16:25:55', '', null, '');
INSERT INTO `sys_menu` VALUES ('2085', '地址导出', '2080', '5', '#', '', null, '1', '0', 'F', '0', '0', 'maple:address:export', '#', 'admin', '2024-01-14 16:25:55', '', null, '');
INSERT INTO `sys_menu` VALUES ('2086', '入库', '2044', '5', '', null, null, '1', '0', 'F', '0', '0', 'maple:order:ruku', '#', 'admin', '2024-01-27 14:42:23', 'admin', '2024-01-27 14:42:43', '');
INSERT INTO `sys_menu` VALUES ('2087', '发货', '2044', '6', '', null, null, '1', '0', 'F', '0', '0', 'maple:order:faHuo', '#', 'admin', '2024-01-27 14:43:25', '', null, '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice` (
  `notice_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) NOT NULL COMMENT '公告标题',
  `notice_type` char(1) NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob COMMENT '公告内容',
  `status` char(1) DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='通知公告表';

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES ('1', '温馨提醒：2018-07-01 若依新版本发布啦', '2', 0xE696B0E78988E69CACE58685E5AEB9, '0', 'admin', '2024-01-05 23:56:03', '', null, '管理员');
INSERT INTO `sys_notice` VALUES ('2', '维护通知：2018-07-01 若依系统凌晨维护', '1', 0xE7BBB4E68AA4E58685E5AEB9, '0', 'admin', '2024-01-05 23:56:04', '', null, '管理员');

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log` (
  `oper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) DEFAULT '' COMMENT '模块标题',
  `business_type` int(2) DEFAULT '0' COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) DEFAULT '' COMMENT '请求方式',
  `operator_type` int(1) DEFAULT '0' COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) DEFAULT '' COMMENT '返回参数',
  `status` int(1) DEFAULT '0' COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime DEFAULT NULL COMMENT '操作时间',
  `cost_time` bigint(20) DEFAULT '0' COMMENT '消耗时间',
  PRIMARY KEY (`oper_id`),
  KEY `idx_sys_oper_log_bt` (`business_type`),
  KEY `idx_sys_oper_log_s` (`status`),
  KEY `idx_sys_oper_log_ot` (`oper_time`)
) ENGINE=InnoDB AUTO_INCREMENT=252 DEFAULT CHARSET=utf8 COMMENT='操作日志记录';

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES ('100', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/user/index\",\"createTime\":\"2024-01-05 23:55:13\",\"icon\":\"user\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":100,\"menuName\":\"管理员信息\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":1,\"path\":\"user\",\"perms\":\"system:user:list\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-06 21:44:32', '91');
INSERT INTO `sys_oper_log` VALUES ('101', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/custom/index\",\"createBy\":\"admin\",\"icon\":\"user\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"C端客户\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":1,\"path\":\"custom\",\"perms\":\"system:user:list\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-06 21:46:56', '34');
INSERT INTO `sys_oper_log` VALUES ('102', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', null, '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"t_status_log,t_order,t_help,t_goods,t_feedback,t_express_company,t_warehouse,t_tutorial,t_order_logistics,t_customer_server\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-07 14:19:08', '1212');
INSERT INTO `sys_oper_log` VALUES ('103', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', null, '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"t_order_details,t_carousel_chart\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-07 14:19:15', '175');
INSERT INTO `sys_oper_log` VALUES ('104', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"customerServer\",\"className\":\"CustomerServer\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"客服id\",\"columnId\":1,\"columnName\":\"id\",\"columnType\":\"bigint(20) unsigned\",\"createBy\":\"admin\",\"createTime\":\"2024-01-07 14:19:07\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Phone\",\"columnComment\":\"手机号\",\"columnId\":2,\"columnName\":\"phone\",\"columnType\":\"varchar(11)\",\"createBy\":\"admin\",\"createTime\":\"2024-01-07 14:19:07\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"phone\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"WxUrl\",\"columnComment\":\"微信图片\",\"columnId\":3,\"columnName\":\"wx_url\",\"columnType\":\"varchar(500)\",\"createBy\":\"admin\",\"createTime\":\"2024-01-07 14:19:07\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"imageUpload\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"wxUrl\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"usableColumn\":false}],\"crud\":true,\"functionAuthor\":\"maple\",\"functionName\":\"客服中心\",\"genPath\":\"/\",\"genType\":\"0\",\"moduleName\":\"maple\",\"options\":\"{}\",\"packageName\":\"com.ruoyi.system\",\"params\":{},\"sub\":false,\"subTableFkName\":\"\",\"subTableName\":\"\",\"tableComment\":\"客服中心\",\"tableId\":1,\"tableName\":\"t_customer_server\",\"tplCategory\":\"crud\",\"tree\":false}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-07 14:23:55', '71');
INSERT INTO `sys_oper_log` VALUES ('105', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"icon\":\"server\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"转运管理\",\"menuType\":\"M\",\"orderNum\":4,\"params\":{},\"parentId\":0,\"path\":\"maple\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-07 14:25:43', '42');
INSERT INTO `sys_oper_log` VALUES ('106', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/4', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"菜单已分配,不允许删除\",\"code\":601}', '0', null, '2024-01-07 14:26:06', '34');
INSERT INTO `sys_oper_log` VALUES ('107', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2024-01-05 23:55:12\",\"icon\":\"guide\",\"isCache\":\"0\",\"isFrame\":\"0\",\"menuId\":4,\"menuName\":\"若依官网\",\"menuType\":\"M\",\"orderNum\":4,\"params\":{},\"parentId\":0,\"path\":\"http://ruoyi.vip\",\"perms\":\"\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-07 14:26:23', '20');
INSERT INTO `sys_oper_log` VALUES ('108', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/4', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"菜单已分配,不允许删除\",\"code\":601}', '0', null, '2024-01-07 14:26:27', '17');
INSERT INTO `sys_oper_log` VALUES ('109', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2024-01-05 23:55:11\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,501,1042,1043,1044,1045,2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,111,112,113,114,3,115,116,1055,1056,1057,1058,1059,1060,117],\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-07 14:26:57', '111');
INSERT INTO `sys_oper_log` VALUES ('110', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/4', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-07 14:27:05', '57');
INSERT INTO `sys_oper_log` VALUES ('111', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"customerServer\",\"className\":\"CustomerServer\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"客服id\",\"columnId\":1,\"columnName\":\"id\",\"columnType\":\"bigint(20) unsigned\",\"createBy\":\"admin\",\"createTime\":\"2024-01-07 14:19:07\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2024-01-07 14:23:55\",\"usableColumn\":false},{\"capJavaField\":\"Phone\",\"columnComment\":\"手机号\",\"columnId\":2,\"columnName\":\"phone\",\"columnType\":\"varchar(11)\",\"createBy\":\"admin\",\"createTime\":\"2024-01-07 14:19:07\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"phone\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2024-01-07 14:23:55\",\"usableColumn\":false},{\"capJavaField\":\"WxUrl\",\"columnComment\":\"微信图片\",\"columnId\":3,\"columnName\":\"wx_url\",\"columnType\":\"varchar(500)\",\"createBy\":\"admin\",\"createTime\":\"2024-01-07 14:19:07\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"imageUpload\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"wxUrl\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2024-01-07 14:23:55\",\"usableColumn\":false}],\"crud\":true,\"functionAuthor\":\"maple\",\"functionName\":\"客服中心\",\"genPath\":\"/\",\"genType\":\"0\",\"moduleName\":\"maple\",\"options\":\"{\\\"parentMenuId\\\":2001}\",\"packageName\":\"com.ruoyi.maple\",\"params\":{\"parentMenuId\":2001},\"parentMenuId\":\"2001\",\"sub\":false,\"subTableFkName\":', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-07 14:29:49', '76');
INSERT INTO `sys_oper_log` VALUES ('112', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"expressCompany\",\"className\":\"ExpressCompany\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"快递公司id\",\"columnId\":4,\"columnName\":\"id\",\"columnType\":\"bigint(20) unsigned\",\"createBy\":\"admin\",\"createTime\":\"2024-01-07 14:19:07\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"快递公司\",\"columnId\":5,\"columnName\":\"name\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2024-01-07 14:19:07\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"FirstWeightPrice\",\"columnComment\":\"首重价格\",\"columnId\":6,\"columnName\":\"first_weight_price\",\"columnType\":\"decimal(10,2)\",\"createBy\":\"admin\",\"createTime\":\"2024-01-07 14:19:07\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"firstWeightPrice\",\"javaType\":\"BigDecimal\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"GTE\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"usableColumn\":false}],\"crud\":true,\"functionAuthor\":\"maple\",\"functionName\":\"快递公司\",\"genPath\":\"/\",\"genType\":\"0\",\"moduleName\":\"maple\",\"options\":\"{\\\"parentMenuId\\\":2001}\",\"packageName\":\"com.ruoyi.maple\",\"params\":{\"parentMenuId\":2001},\"parentMenuId\":\"2001\",\"sub\":false,\"tableComment\":\"快递公司\",\"tableId\":2,\"tableName\":\"t_express_company\",\"tplCategory\":\"crud', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-07 14:31:39', '41');
INSERT INTO `sys_oper_log` VALUES ('113', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"feedback\",\"className\":\"Feedback\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"反馈id\",\"columnId\":7,\"columnName\":\"id\",\"columnType\":\"bigint(20) unsigned\",\"createBy\":\"admin\",\"createTime\":\"2024-01-07 14:19:07\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Content\",\"columnComment\":\"内容\",\"columnId\":8,\"columnName\":\"content\",\"columnType\":\"varchar(1000)\",\"createBy\":\"admin\",\"createTime\":\"2024-01-07 14:19:07\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"editor\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"content\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Urls\",\"columnComment\":\"图片\",\"columnId\":9,\"columnName\":\"urls\",\"columnType\":\"varchar(2000)\",\"createBy\":\"admin\",\"createTime\":\"2024-01-07 14:19:07\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"imageUpload\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"urls\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"CreateTime\",\"columnComment\":\"创建时间\",\"columnId\":10,\"columnName\":\"create_time\",\"columnType\":\"datetime\",\"createBy\":\"admin\",\"createTime\":\"2024-01-07 14:19:07\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"datetime\",\"increment\":false,\"insert\":true,\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isPk\":\"0\",\"isRequired\":\"0\",\"javaField\":\"createTime\",\"javaType\":\"Date\",\"list\":false,\"params\":{},\"pk\":fal', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-07 14:35:17', '83');
INSERT INTO `sys_oper_log` VALUES ('114', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"goods\",\"className\":\"Goods\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"商品id\",\"columnId\":12,\"columnName\":\"id\",\"columnType\":\"bigint(20) unsigned\",\"createBy\":\"admin\",\"createTime\":\"2024-01-07 14:19:08\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Title\",\"columnComment\":\"商品标题\",\"columnId\":13,\"columnName\":\"title\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2024-01-07 14:19:08\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"title\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"CoverUrl\",\"columnComment\":\"封面图片\",\"columnId\":14,\"columnName\":\"cover_url\",\"columnType\":\"varchar(500)\",\"createBy\":\"admin\",\"createTime\":\"2024-01-07 14:19:08\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"imageUpload\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"coverUrl\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Price\",\"columnComment\":\"单价\",\"columnId\":15,\"columnName\":\"price\",\"columnType\":\"decimal(10,2)\",\"createBy\":\"admin\",\"createTime\":\"2024-01-07 14:19:08\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"price\",\"javaTy', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-07 14:38:01', '116');
INSERT INTO `sys_oper_log` VALUES ('115', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"help\",\"className\":\"Help\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"帮助id\",\"columnId\":17,\"columnName\":\"id\",\"columnType\":\"bigint(20) unsigned\",\"createBy\":\"admin\",\"createTime\":\"2024-01-07 14:19:08\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":5,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Title\",\"columnComment\":\"标题\",\"columnId\":18,\"columnName\":\"title\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2024-01-07 14:19:08\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"title\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":5,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Content\",\"columnComment\":\"内容\",\"columnId\":19,\"columnName\":\"content\",\"columnType\":\"text\",\"createBy\":\"admin\",\"createTime\":\"2024-01-07 14:19:08\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"editor\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"1\",\"javaField\":\"content\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":5,\"updateBy\":\"\",\"usableColumn\":false}],\"crud\":true,\"functionAuthor\":\"maple\",\"functionName\":\"帮助中心\",\"genPath\":\"/\",\"genType\":\"0\",\"moduleName\":\"maple\",\"options\":\"{\\\"parentMenuId\\\":2001}\",\"packageName\":\"com.ruoyi.maple\",\"params\":{\"parentMenuId\":2001},\"parentMenuId\":\"2001\",\"sub\":false,\"tableComment\":\"帮助中心\",\"tableId\":5,\"tableName\":\"t_help\",\"tplCategory\":\"crud\",\"tree\":false}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-07 14:39:10', '35');
INSERT INTO `sys_oper_log` VALUES ('116', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"goods\",\"className\":\"Goods\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"商品id\",\"columnId\":12,\"columnName\":\"id\",\"columnType\":\"bigint(20) unsigned\",\"createBy\":\"admin\",\"createTime\":\"2024-01-07 14:19:08\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"updateTime\":\"2024-01-07 14:38:01\",\"usableColumn\":false},{\"capJavaField\":\"Title\",\"columnComment\":\"商品标题\",\"columnId\":13,\"columnName\":\"title\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2024-01-07 14:19:08\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"title\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"updateTime\":\"2024-01-07 14:38:01\",\"usableColumn\":false},{\"capJavaField\":\"CoverUrl\",\"columnComment\":\"封面图片\",\"columnId\":14,\"columnName\":\"cover_url\",\"columnType\":\"varchar(500)\",\"createBy\":\"admin\",\"createTime\":\"2024-01-07 14:19:08\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"imageUpload\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"1\",\"javaField\":\"coverUrl\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"updateTime\":\"2024-01-07 14:38:01\",\"usableColumn\":false},{\"capJavaField\":\"Price\",\"columnComment\":\"单价\",\"columnId\":15,\"columnName\":\"price\",\"columnType\":\"decimal(10,2)\",\"createBy\":\"admin\",\"createTime\":\"2024-01-07 14:19:08\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncr', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-07 14:39:44', '56');
INSERT INTO `sys_oper_log` VALUES ('117', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"feedback\",\"className\":\"Feedback\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"反馈id\",\"columnId\":7,\"columnName\":\"id\",\"columnType\":\"bigint(20) unsigned\",\"createBy\":\"admin\",\"createTime\":\"2024-01-07 14:19:07\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"updateTime\":\"2024-01-07 14:35:17\",\"usableColumn\":false},{\"capJavaField\":\"Content\",\"columnComment\":\"内容\",\"columnId\":8,\"columnName\":\"content\",\"columnType\":\"varchar(1000)\",\"createBy\":\"admin\",\"createTime\":\"2024-01-07 14:19:07\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"editor\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"1\",\"javaField\":\"content\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"updateTime\":\"2024-01-07 14:35:17\",\"usableColumn\":false},{\"capJavaField\":\"Urls\",\"columnComment\":\"图片\",\"columnId\":9,\"columnName\":\"urls\",\"columnType\":\"varchar(2000)\",\"createBy\":\"admin\",\"createTime\":\"2024-01-07 14:19:07\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"imageUpload\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"javaField\":\"urls\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"updateTime\":\"2024-01-07 14:35:17\",\"usableColumn\":false},{\"capJavaField\":\"CreateTime\",\"columnComment\":\"创建时间\",\"columnId\":10,\"columnName\":\"create_time\",\"columnType\":\"datetime\",\"createBy\":\"admin\",\"createTime\":\"2024-01-07 14:19:07\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"datetime\",\"increment\":false,\"insert\":true,\"isIncrement\":\"0\",\"isInsert\":\"', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-07 14:40:38', '44');
INSERT INTO `sys_oper_log` VALUES ('118', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"customerServer\",\"className\":\"CustomerServer\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"客服id\",\"columnId\":1,\"columnName\":\"id\",\"columnType\":\"bigint(20) unsigned\",\"createBy\":\"admin\",\"createTime\":\"2024-01-07 14:19:07\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2024-01-07 14:29:49\",\"usableColumn\":false},{\"capJavaField\":\"Phone\",\"columnComment\":\"手机号\",\"columnId\":2,\"columnName\":\"phone\",\"columnType\":\"varchar(11)\",\"createBy\":\"admin\",\"createTime\":\"2024-01-07 14:19:07\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"phone\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2024-01-07 14:29:49\",\"usableColumn\":false},{\"capJavaField\":\"WxUrl\",\"columnComment\":\"微信图片\",\"columnId\":3,\"columnName\":\"wx_url\",\"columnType\":\"varchar(500)\",\"createBy\":\"admin\",\"createTime\":\"2024-01-07 14:19:07\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"imageUpload\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"1\",\"javaField\":\"wxUrl\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2024-01-07 14:29:49\",\"usableColumn\":false}],\"crud\":true,\"functionAuthor\":\"maple\",\"functionName\":\"客服中心\",\"genPath\":\"/\",\"genType\":\"0\",\"moduleName\":\"maple\",\"options\":\"{\\\"parentMenuId\\\":\\\"2001\\\"}\",\"packageName\":\"com.ruoyi.maple\",\"params\":{\"parentMenuId\":\"2001\"},\"parentMenuId\":\"2001\",\"sub\":false,\"subTableF', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-07 14:41:11', '30');
INSERT INTO `sys_oper_log` VALUES ('119', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"order\",\"className\":\"TOrder\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"订单id\",\"columnId\":20,\"columnName\":\"id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-01-07 14:19:08\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":6,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"TrackingNumber\",\"columnComment\":\"快递号\",\"columnId\":21,\"columnName\":\"tracking_number\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2024-01-07 14:19:08\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"trackingNumber\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":6,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"商品名\",\"columnId\":22,\"columnName\":\"name\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2024-01-07 14:19:08\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":6,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Num\",\"columnComment\":\"数量\",\"columnId\":23,\"columnName\":\"num\",\"columnType\":\"int(10)\",\"createBy\":\"admin\",\"createTime\":\"2024-01-07 14:19:08\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"num\",\"javaType\":\"Int', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-07 14:44:56', '183');
INSERT INTO `sys_oper_log` VALUES ('120', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"order\",\"className\":\"Order\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"订单id\",\"columnId\":20,\"columnName\":\"id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-01-07 14:19:08\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":6,\"updateBy\":\"\",\"updateTime\":\"2024-01-07 14:44:56\",\"usableColumn\":false},{\"capJavaField\":\"TrackingNumber\",\"columnComment\":\"快递号\",\"columnId\":21,\"columnName\":\"tracking_number\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2024-01-07 14:19:08\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"trackingNumber\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":6,\"updateBy\":\"\",\"updateTime\":\"2024-01-07 14:44:56\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"商品名\",\"columnId\":22,\"columnName\":\"name\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2024-01-07 14:19:08\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":6,\"updateBy\":\"\",\"updateTime\":\"2024-01-07 14:44:56\",\"usableColumn\":false},{\"capJavaField\":\"Num\",\"columnComment\":\"数量\",\"columnId\":23,\"columnName\":\"num\",\"columnType\":\"int(10)\",\"createBy\":\"admin\",\"createTime\":\"2024-01-07 14:19:08\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\"', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-07 14:45:24', '177');
INSERT INTO `sys_oper_log` VALUES ('121', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"feedback\",\"className\":\"Feedback\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"反馈id\",\"columnId\":7,\"columnName\":\"id\",\"columnType\":\"bigint(20) unsigned\",\"createBy\":\"admin\",\"createTime\":\"2024-01-07 14:19:07\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"updateTime\":\"2024-01-07 14:40:38\",\"usableColumn\":false},{\"capJavaField\":\"Content\",\"columnComment\":\"内容\",\"columnId\":8,\"columnName\":\"content\",\"columnType\":\"varchar(1000)\",\"createBy\":\"admin\",\"createTime\":\"2024-01-07 14:19:07\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"editor\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"1\",\"javaField\":\"content\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"updateTime\":\"2024-01-07 14:40:38\",\"usableColumn\":false},{\"capJavaField\":\"Urls\",\"columnComment\":\"图片\",\"columnId\":9,\"columnName\":\"urls\",\"columnType\":\"varchar(2000)\",\"createBy\":\"admin\",\"createTime\":\"2024-01-07 14:19:07\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"imageUpload\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"javaField\":\"urls\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"updateTime\":\"2024-01-07 14:40:38\",\"usableColumn\":false},{\"capJavaField\":\"CreateTime\",\"columnComment\":\"创建时间\",\"columnId\":10,\"columnName\":\"create_time\",\"columnType\":\"datetime\",\"createBy\":\"admin\",\"createTime\":\"2024-01-07 14:19:07\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"datetime\",\"increment\":false,\"insert\":true,\"isIncrement\":\"0\",\"isInsert\":\"', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-07 14:46:14', '38');
INSERT INTO `sys_oper_log` VALUES ('122', '字典类型', '1', 'com.ruoyi.web.controller.system.SysDictTypeController.add()', 'POST', '1', 'admin', null, '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"dictName\":\"订单状态\",\"dictType\":\"maple_order_status\",\"params\":{},\"remark\":\"状态：0：待入库，1：已入库，2：待支付，3：待发货，4：已发货：5：已到达\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-07 14:48:22', '22');
INSERT INTO `sys_oper_log` VALUES ('123', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', '1', 'admin', null, '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"待入库\",\"dictSort\":0,\"dictType\":\"maple_order_status\",\"dictValue\":\"0\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-07 14:50:29', '22');
INSERT INTO `sys_oper_log` VALUES ('124', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', '1', 'admin', null, '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"已入库\",\"dictSort\":0,\"dictType\":\"maple_order_status\",\"dictValue\":\"1\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-07 14:50:44', '23');
INSERT INTO `sys_oper_log` VALUES ('125', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', '1', 'admin', null, '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"待支付\",\"dictSort\":2,\"dictType\":\"maple_order_status\",\"dictValue\":\"2\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-07 14:51:09', '25');
INSERT INTO `sys_oper_log` VALUES ('126', '字典数据', '2', 'com.ruoyi.web.controller.system.SysDictDataController.edit()', 'PUT', '1', 'admin', null, '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2024-01-07 14:50:44\",\"default\":false,\"dictCode\":101,\"dictLabel\":\"已入库\",\"dictSort\":1,\"dictType\":\"maple_order_status\",\"dictValue\":\"1\",\"isDefault\":\"N\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-07 14:51:15', '23');
INSERT INTO `sys_oper_log` VALUES ('127', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', '1', 'admin', null, '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"待发货\",\"dictSort\":3,\"dictType\":\"maple_order_status\",\"dictValue\":\"3\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-07 14:51:58', '20');
INSERT INTO `sys_oper_log` VALUES ('128', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', '1', 'admin', null, '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"已发货\",\"dictSort\":4,\"dictType\":\"maple_order_status\",\"dictValue\":\"4\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-07 14:52:17', '19');
INSERT INTO `sys_oper_log` VALUES ('129', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', '1', 'admin', null, '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"已到达\",\"dictSort\":5,\"dictType\":\"maple_order_status\",\"dictValue\":\"5\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-07 14:52:47', '22');
INSERT INTO `sys_oper_log` VALUES ('130', '字典类型', '1', 'com.ruoyi.web.controller.system.SysDictTypeController.add()', 'POST', '1', 'admin', null, '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"dictName\":\"支付方式\",\"dictType\":\"maple_pay_type\",\"params\":{},\"remark\":\"0:微信\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-07 14:59:29', '17');
INSERT INTO `sys_oper_log` VALUES ('131', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', '1', 'admin', null, '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"微信支付\",\"dictSort\":0,\"dictType\":\"maple_pay_type\",\"dictValue\":\"0\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-07 14:59:46', '23');
INSERT INTO `sys_oper_log` VALUES ('132', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"order\",\"className\":\"Order\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"订单id\",\"columnId\":20,\"columnName\":\"id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-01-07 14:19:08\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":6,\"updateBy\":\"\",\"updateTime\":\"2024-01-07 14:45:24\",\"usableColumn\":false},{\"capJavaField\":\"TrackingNumber\",\"columnComment\":\"快递号\",\"columnId\":21,\"columnName\":\"tracking_number\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2024-01-07 14:19:08\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"trackingNumber\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":6,\"updateBy\":\"\",\"updateTime\":\"2024-01-07 14:45:24\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"商品名\",\"columnId\":22,\"columnName\":\"name\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2024-01-07 14:19:08\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":6,\"updateBy\":\"\",\"updateTime\":\"2024-01-07 14:45:24\",\"usableColumn\":false},{\"capJavaField\":\"Num\",\"columnComment\":\"数量\",\"columnId\":23,\"columnName\":\"num\",\"columnType\":\"int(10)\",\"createBy\":\"admin\",\"createTime\":\"2024-01-07 14:19:08\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\"', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-07 15:00:07', '198');
INSERT INTO `sys_oper_log` VALUES ('133', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"order\",\"className\":\"Order\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"订单id\",\"columnId\":20,\"columnName\":\"id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-01-07 14:19:08\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":6,\"updateBy\":\"\",\"updateTime\":\"2024-01-07 15:00:06\",\"usableColumn\":false},{\"capJavaField\":\"TrackingNumber\",\"columnComment\":\"快递号\",\"columnId\":21,\"columnName\":\"tracking_number\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2024-01-07 14:19:08\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"trackingNumber\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":6,\"updateBy\":\"\",\"updateTime\":\"2024-01-07 15:00:06\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"商品名\",\"columnId\":22,\"columnName\":\"name\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2024-01-07 14:19:08\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":6,\"updateBy\":\"\",\"updateTime\":\"2024-01-07 15:00:06\",\"usableColumn\":false},{\"capJavaField\":\"Num\",\"columnComment\":\"数量\",\"columnId\":23,\"columnName\":\"num\",\"columnType\":\"int(10)\",\"createBy\":\"admin\",\"createTime\":\"2024-01-07 14:19:08\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\"', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-07 15:04:17', '150');
INSERT INTO `sys_oper_log` VALUES ('134', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"logistics\",\"className\":\"OrderLogistics\",\"columns\":[{\"capJavaField\":\"OrederId\",\"columnComment\":\"订单id\",\"columnId\":46,\"columnName\":\"oreder_id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-01-07 14:19:08\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"orederId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"TrackingNumber\",\"columnComment\":\"快递号\",\"columnId\":47,\"columnName\":\"tracking_number\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2024-01-07 14:19:08\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"trackingNumber\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"ExpressCompanyId\",\"columnComment\":\"快递公司\",\"columnId\":48,\"columnName\":\"express_company_id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-01-07 14:19:08\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"expressCompanyId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Consignee\",\"columnComment\":\"收货人\",\"columnId\":49,\"columnName\":\"consignee\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2024-01-07 14:19:08\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isLis', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-07 15:05:58', '60');
INSERT INTO `sys_oper_log` VALUES ('135', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"statusLog\",\"className\":\"StatusLog\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"状态日志id\",\"columnId\":53,\"columnName\":\"id\",\"columnType\":\"bigint(20) unsigned\",\"createBy\":\"admin\",\"createTime\":\"2024-01-07 14:19:08\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":8,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"CreateTime\",\"columnComment\":\"创建时间\",\"columnId\":54,\"columnName\":\"create_time\",\"columnType\":\"datetime\",\"createBy\":\"admin\",\"createTime\":\"2024-01-07 14:19:08\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"datetime\",\"increment\":false,\"insert\":true,\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"createTime\",\"javaType\":\"Date\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"BETWEEN\",\"required\":true,\"sort\":2,\"superColumn\":true,\"tableId\":8,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Remark\",\"columnComment\":\"备注\",\"columnId\":55,\"columnName\":\"remark\",\"columnType\":\"varchar(500)\",\"createBy\":\"admin\",\"createTime\":\"2024-01-07 14:19:08\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"textarea\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isRequired\":\"1\",\"javaField\":\"remark\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":true,\"tableId\":8,\"updateBy\":\"\",\"usableColumn\":true},{\"capJavaField\":\"TargetId\",\"columnComment\":\"目标id\",\"columnId\":56,\"columnName\":\"target_id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-01-07 14:19:08\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"targetId\",\"javaType\"', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-07 15:07:52', '52');
INSERT INTO `sys_oper_log` VALUES ('136', '字典类型', '1', 'com.ruoyi.web.controller.system.SysDictTypeController.add()', 'POST', '1', 'admin', null, '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"dictName\":\"状态日志类型\",\"dictType\":\"maple_status_type\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-07 15:08:54', '17');
INSERT INTO `sys_oper_log` VALUES ('137', '字典类型', '2', 'com.ruoyi.web.controller.system.SysDictTypeController.edit()', 'PUT', '1', 'admin', null, '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2024-01-07 15:08:54\",\"dictId\":102,\"dictName\":\"状态日志类型\",\"dictType\":\"maple_status_type\",\"params\":{},\"remark\":\"目标类型0：物流更新 1：订单状态日志\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-07 15:09:25', '57');
INSERT INTO `sys_oper_log` VALUES ('138', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', '1', 'admin', null, '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"物流更新\",\"dictSort\":0,\"dictType\":\"maple_status_type\",\"dictValue\":\"0\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-07 15:10:32', '14');
INSERT INTO `sys_oper_log` VALUES ('139', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', '1', 'admin', null, '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"订单状态更新\",\"dictSort\":1,\"dictType\":\"maple_status_type\",\"dictValue\":\"1\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-07 15:11:02', '24');
INSERT INTO `sys_oper_log` VALUES ('140', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"statusLog\",\"className\":\"StatusLog\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"状态日志id\",\"columnId\":53,\"columnName\":\"id\",\"columnType\":\"bigint(20) unsigned\",\"createBy\":\"admin\",\"createTime\":\"2024-01-07 14:19:08\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":8,\"updateBy\":\"\",\"updateTime\":\"2024-01-07 15:07:52\",\"usableColumn\":false},{\"capJavaField\":\"CreateTime\",\"columnComment\":\"创建时间\",\"columnId\":54,\"columnName\":\"create_time\",\"columnType\":\"datetime\",\"createBy\":\"admin\",\"createTime\":\"2024-01-07 14:19:08\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"datetime\",\"increment\":false,\"insert\":true,\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"createTime\",\"javaType\":\"Date\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"BETWEEN\",\"required\":true,\"sort\":2,\"superColumn\":true,\"tableId\":8,\"updateBy\":\"\",\"updateTime\":\"2024-01-07 15:07:52\",\"usableColumn\":false},{\"capJavaField\":\"Remark\",\"columnComment\":\"备注\",\"columnId\":55,\"columnName\":\"remark\",\"columnType\":\"varchar(500)\",\"createBy\":\"admin\",\"createTime\":\"2024-01-07 14:19:08\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"textarea\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isRequired\":\"1\",\"javaField\":\"remark\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":true,\"tableId\":8,\"updateBy\":\"\",\"updateTime\":\"2024-01-07 15:07:52\",\"usableColumn\":true},{\"capJavaField\":\"TargetId\",\"columnComment\":\"目标id\",\"columnId\":56,\"columnName\":\"target_id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-01-07 14:19:08\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-07 15:11:31', '42');
INSERT INTO `sys_oper_log` VALUES ('141', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"tutorial\",\"className\":\"TTutorial\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"教程id\",\"columnId\":58,\"columnName\":\"id\",\"columnType\":\"bigint(20) unsigned\",\"createBy\":\"admin\",\"createTime\":\"2024-01-07 14:19:08\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":9,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Title\",\"columnComment\":\"教程标题\",\"columnId\":59,\"columnName\":\"title\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2024-01-07 14:19:08\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"title\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":9,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Content\",\"columnComment\":\"内容\",\"columnId\":60,\"columnName\":\"content\",\"columnType\":\"longtext\",\"createBy\":\"admin\",\"createTime\":\"2024-01-07 14:19:08\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"editor\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"1\",\"javaField\":\"content\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":9,\"updateBy\":\"\",\"usableColumn\":false}],\"crud\":true,\"functionAuthor\":\"ruoyi\",\"functionName\":\"教程中心\",\"genPath\":\"/\",\"genType\":\"0\",\"moduleName\":\"system\",\"options\":\"{}\",\"packageName\":\"com.ruoyi.system\",\"params\":{},\"sub\":false,\"tableComment\":\"教程中心\",\"tableId\":9,\"tableName\":\"t_tutorial\",\"tplCategory\":\"crud\",\"tree\":false}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-07 15:12:18', '37');
INSERT INTO `sys_oper_log` VALUES ('142', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"tutorial\",\"className\":\"Tutorial\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"教程id\",\"columnId\":58,\"columnName\":\"id\",\"columnType\":\"bigint(20) unsigned\",\"createBy\":\"admin\",\"createTime\":\"2024-01-07 14:19:08\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":9,\"updateBy\":\"\",\"updateTime\":\"2024-01-07 15:12:18\",\"usableColumn\":false},{\"capJavaField\":\"Title\",\"columnComment\":\"教程标题\",\"columnId\":59,\"columnName\":\"title\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2024-01-07 14:19:08\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"title\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":9,\"updateBy\":\"\",\"updateTime\":\"2024-01-07 15:12:18\",\"usableColumn\":false},{\"capJavaField\":\"Content\",\"columnComment\":\"内容\",\"columnId\":60,\"columnName\":\"content\",\"columnType\":\"longtext\",\"createBy\":\"admin\",\"createTime\":\"2024-01-07 14:19:08\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"editor\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"1\",\"javaField\":\"content\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":9,\"updateBy\":\"\",\"updateTime\":\"2024-01-07 15:12:18\",\"usableColumn\":false}],\"crud\":true,\"functionAuthor\":\"maple\",\"functionName\":\"教程中心\",\"genPath\":\"/\",\"genType\":\"0\",\"moduleName\":\"maple\",\"options\":\"{\\\"parentMenuId\\\":2001}\",\"packageName\":\"com.ruoyi.maple\",\"params\":{\"parentMenuId\":2001},\"parentMenuId\":\"2001\",\"sub\":false,\"tableComment\":\"教程中心\",\"tabl', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-07 15:12:49', '25');
INSERT INTO `sys_oper_log` VALUES ('143', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"warehouse\",\"className\":\"Warehouse\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"仓库id\",\"columnId\":61,\"columnName\":\"id\",\"columnType\":\"bigint(20) unsigned\",\"createBy\":\"admin\",\"createTime\":\"2024-01-07 14:19:08\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":10,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"仓库名\",\"columnId\":62,\"columnName\":\"name\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2024-01-07 14:19:08\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":10,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Address\",\"columnComment\":\"地址\",\"columnId\":63,\"columnName\":\"address\",\"columnType\":\"varchar(1000)\",\"createBy\":\"admin\",\"createTime\":\"2024-01-07 14:19:08\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"textarea\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"address\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":10,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Consignee\",\"columnComment\":\"收货人\",\"columnId\":64,\"columnName\":\"consignee\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2024-01-07 14:19:08\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"consi', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-07 15:13:40', '55');
INSERT INTO `sys_oper_log` VALUES ('144', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"warehouse\",\"className\":\"Warehouse\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"仓库id\",\"columnId\":61,\"columnName\":\"id\",\"columnType\":\"bigint(20) unsigned\",\"createBy\":\"admin\",\"createTime\":\"2024-01-07 14:19:08\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":10,\"updateBy\":\"\",\"updateTime\":\"2024-01-07 15:13:40\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"仓库名\",\"columnId\":62,\"columnName\":\"name\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2024-01-07 14:19:08\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":10,\"updateBy\":\"\",\"updateTime\":\"2024-01-07 15:13:40\",\"usableColumn\":false},{\"capJavaField\":\"Address\",\"columnComment\":\"地址\",\"columnId\":63,\"columnName\":\"address\",\"columnType\":\"varchar(1000)\",\"createBy\":\"admin\",\"createTime\":\"2024-01-07 14:19:08\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"textarea\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"address\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":10,\"updateBy\":\"\",\"updateTime\":\"2024-01-07 15:13:40\",\"usableColumn\":false},{\"capJavaField\":\"Consignee\",\"columnComment\":\"收货人\",\"columnId\":64,\"columnName\":\"consignee\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2024-01-07 14:19:08\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-07 15:14:09', '48');
INSERT INTO `sys_oper_log` VALUES ('145', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"chart\",\"className\":\"CarouselChart\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"轮播图id\",\"columnId\":67,\"columnName\":\"id\",\"columnType\":\"bigint(20) unsigned\",\"createBy\":\"admin\",\"createTime\":\"2024-01-07 14:19:15\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Title\",\"columnComment\":\"标题\",\"columnId\":68,\"columnName\":\"title\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2024-01-07 14:19:15\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"title\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"ImgUrl\",\"columnComment\":\"图片地址\",\"columnId\":69,\"columnName\":\"img_url\",\"columnType\":\"varchar(1000)\",\"createBy\":\"admin\",\"createTime\":\"2024-01-07 14:19:15\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"textarea\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"1\",\"javaField\":\"imgUrl\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"SkipH5Url\",\"columnComment\":\"跳转链接\",\"columnId\":70,\"columnName\":\"skip_h5_url\",\"columnType\":\"varchar(1000)\",\"createBy\":\"admin\",\"createTime\":\"2024-01-07 14:19:15\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"textarea\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"javaField\":\"skipH5Url\",\"', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-07 15:15:03', '38');
INSERT INTO `sys_oper_log` VALUES ('146', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"chart\",\"className\":\"CarouselChart\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"轮播图id\",\"columnId\":67,\"columnName\":\"id\",\"columnType\":\"bigint(20) unsigned\",\"createBy\":\"admin\",\"createTime\":\"2024-01-07 14:19:15\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"updateTime\":\"2024-01-07 15:15:03\",\"usableColumn\":false},{\"capJavaField\":\"Title\",\"columnComment\":\"标题\",\"columnId\":68,\"columnName\":\"title\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2024-01-07 14:19:15\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"title\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"updateTime\":\"2024-01-07 15:15:03\",\"usableColumn\":false},{\"capJavaField\":\"ImgUrl\",\"columnComment\":\"图片地址\",\"columnId\":69,\"columnName\":\"img_url\",\"columnType\":\"varchar(1000)\",\"createBy\":\"admin\",\"createTime\":\"2024-01-07 14:19:15\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"textarea\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"1\",\"javaField\":\"imgUrl\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"updateTime\":\"2024-01-07 15:15:03\",\"usableColumn\":false},{\"capJavaField\":\"SkipH5Url\",\"columnComment\":\"跳转链接\",\"columnId\":70,\"columnName\":\"skip_h5_url\",\"columnType\":\"varchar(1000)\",\"createBy\":\"admin\",\"createTime\":\"2024-01-07 14:19:15\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"textarea\",\"increment\":false,\"insert\":true,\"isE', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-07 15:15:20', '53');
INSERT INTO `sys_oper_log` VALUES ('147', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"carouselChart\",\"className\":\"CarouselChart\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"轮播图id\",\"columnId\":67,\"columnName\":\"id\",\"columnType\":\"bigint(20) unsigned\",\"createBy\":\"admin\",\"createTime\":\"2024-01-07 14:19:15\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"updateTime\":\"2024-01-07 15:15:20\",\"usableColumn\":false},{\"capJavaField\":\"Title\",\"columnComment\":\"标题\",\"columnId\":68,\"columnName\":\"title\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2024-01-07 14:19:15\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"title\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"updateTime\":\"2024-01-07 15:15:20\",\"usableColumn\":false},{\"capJavaField\":\"ImgUrl\",\"columnComment\":\"图片地址\",\"columnId\":69,\"columnName\":\"img_url\",\"columnType\":\"varchar(1000)\",\"createBy\":\"admin\",\"createTime\":\"2024-01-07 14:19:15\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"textarea\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"1\",\"javaField\":\"imgUrl\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"updateTime\":\"2024-01-07 15:15:20\",\"usableColumn\":false},{\"capJavaField\":\"SkipH5Url\",\"columnComment\":\"跳转链接\",\"columnId\":70,\"columnName\":\"skip_h5_url\",\"columnType\":\"varchar(1000)\",\"createBy\":\"admin\",\"createTime\":\"2024-01-07 14:19:15\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"textarea\",\"increment\":false,\"insert\":t', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-07 15:15:49', '34');
INSERT INTO `sys_oper_log` VALUES ('148', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"orederDetails\",\"className\":\"OrderDetails\",\"columns\":[{\"capJavaField\":\"OrderId\",\"columnComment\":\"订单id\",\"columnId\":72,\"columnName\":\"order_id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-01-07 14:19:15\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"orderId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":12,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"GoodsId\",\"columnComment\":\"商品id\",\"columnId\":73,\"columnName\":\"goods_id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-01-07 14:19:15\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"goodsId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":12,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"GoodsName\",\"columnComment\":\"商品名\",\"columnId\":74,\"columnName\":\"goods_name\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2024-01-07 14:19:15\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"0\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"goodsName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":12,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Price\",\"columnComment\":\"单价\",\"columnId\":75,\"columnName\":\"price\",\"columnType\":\"decimal(10,2)\",\"createBy\":\"admin\",\"createTime\":\"2024-01-07 14:19:15\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"0\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"price\",\"javaType\":\"BigDecimal\",\"list\":t', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-07 15:25:57', '33');
INSERT INTO `sys_oper_log` VALUES ('149', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"carouselChart\",\"className\":\"CarouselChart\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"轮播图id\",\"columnId\":67,\"columnName\":\"id\",\"columnType\":\"bigint(20) unsigned\",\"createBy\":\"admin\",\"createTime\":\"2024-01-07 14:19:15\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"updateTime\":\"2024-01-07 15:15:49\",\"usableColumn\":false},{\"capJavaField\":\"Title\",\"columnComment\":\"标题\",\"columnId\":68,\"columnName\":\"title\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2024-01-07 14:19:15\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"title\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"updateTime\":\"2024-01-07 15:15:49\",\"usableColumn\":false},{\"capJavaField\":\"ImgUrl\",\"columnComment\":\"图片地址\",\"columnId\":69,\"columnName\":\"img_url\",\"columnType\":\"varchar(1000)\",\"createBy\":\"admin\",\"createTime\":\"2024-01-07 14:19:15\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"imageUpload\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"1\",\"javaField\":\"imgUrl\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"updateTime\":\"2024-01-07 15:15:49\",\"usableColumn\":false},{\"capJavaField\":\"SkipH5Url\",\"columnComment\":\"跳转链接\",\"columnId\":70,\"columnName\":\"skip_h5_url\",\"columnType\":\"varchar(1000)\",\"createBy\":\"admin\",\"createTime\":\"2024-01-07 14:19:15\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"textarea\",\"increment\":false,\"insert', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-07 15:26:14', '43');
INSERT INTO `sys_oper_log` VALUES ('150', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', null, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"t_customer_server,t_express_company,t_feedback,t_goods,t_help,t_order,t_order_logistics,t_status_log,t_tutorial,t_warehouse,t_carousel_chart,t_order_details\"}', null, '0', null, '2024-01-07 15:26:56', '4248');
INSERT INTO `sys_oper_log` VALUES ('151', '教程中心', '1', 'com.ruoyi.web.controller.maple.TutorialController.add()', 'POST', '1', 'admin', null, '/maple/tutorial', '127.0.0.1', '内网IP', '{\"content\":\"<p>先注册，登录，后提交包裹</p>\",\"id\":1,\"params\":{},\"title\":\"下单教程\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-07 16:12:44', '162');
INSERT INTO `sys_oper_log` VALUES ('152', '教程中心', '2', 'com.ruoyi.web.controller.maple.TutorialController.edit()', 'PUT', '1', 'admin', null, '/maple/tutorial', '127.0.0.1', '内网IP', '{\"content\":\"<p>先注册，登录，后提交包裹</p>\",\"id\":1,\"params\":{},\"title\":\"下单教程2\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-07 16:13:26', '33');
INSERT INTO `sys_oper_log` VALUES ('153', '教程中心', '2', 'com.ruoyi.web.controller.maple.TutorialController.edit()', 'PUT', '1', 'admin', null, '/maple/tutorial', '127.0.0.1', '内网IP', '{\"content\":\"<p>先注册，登录，后提交包裹</p>\",\"id\":1,\"params\":{},\"title\":\"下单教程\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-07 16:13:30', '17');
INSERT INTO `sys_oper_log` VALUES ('154', '教程中心', '1', 'com.ruoyi.web.controller.maple.TutorialController.add()', 'POST', '1', 'admin', null, '/maple/tutorial', '127.0.0.1', '内网IP', '{\"content\":\"<p><br></p>\",\"id\":2,\"params\":{},\"title\":\"试试\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-07 16:13:38', '13');
INSERT INTO `sys_oper_log` VALUES ('155', '教程中心', '2', 'com.ruoyi.web.controller.maple.TutorialController.edit()', 'PUT', '1', 'admin', null, '/maple/tutorial', '127.0.0.1', '内网IP', '{\"content\":\"<p><br></p>\",\"id\":2,\"params\":{},\"title\":\"试试\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-07 16:13:43', '12');
INSERT INTO `sys_oper_log` VALUES ('156', '教程中心', '3', 'com.ruoyi.web.controller.maple.TutorialController.remove()', 'DELETE', '1', 'admin', null, '/maple/tutorial/2', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-07 16:13:49', '27');
INSERT INTO `sys_oper_log` VALUES ('157', '仓库', '1', 'com.ruoyi.web.controller.maple.WarehouseController.add()', 'POST', '1', 'admin', null, '/maple/warehouse', '127.0.0.1', '内网IP', '{\"address\":\"上海市宝山区吴华路888号\",\"consignee\":\"王丽华\",\"id\":1,\"name\":\"上海一号仓\",\"params\":{},\"phone\":\"189756156\",\"postalCode\":\"425600\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-07 16:16:06', '28');
INSERT INTO `sys_oper_log` VALUES ('158', '仓库', '2', 'com.ruoyi.web.controller.maple.WarehouseController.edit()', 'PUT', '1', 'admin', null, '/maple/warehouse', '127.0.0.1', '内网IP', '{\"address\":\"上海市宝山区吴华路888号\",\"consignee\":\"王丽华\",\"id\":1,\"name\":\"上海一号仓\",\"params\":{},\"phone\":\"18975615689\",\"postalCode\":\"425600\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-07 16:16:43', '21');
INSERT INTO `sys_oper_log` VALUES ('159', '仓库', '1', 'com.ruoyi.web.controller.maple.WarehouseController.add()', 'POST', '1', 'admin', null, '/maple/warehouse', '127.0.0.1', '内网IP', '{\"address\":\"武汉市汉口路888号\",\"consignee\":\"武松\",\"id\":2,\"name\":\"武汉一号仓\",\"params\":{},\"phone\":\"17819006785\",\"postalCode\":\"372834\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-07 16:17:51', '24');
INSERT INTO `sys_oper_log` VALUES ('160', '轮播图', '1', 'com.ruoyi.web.controller.maple.CarouselChartController.add()', 'POST', '1', 'admin', null, '/maple/carouselChart', '127.0.0.1', '内网IP', '{\"id\":1,\"imgUrl\":\"/profile/upload/2024/01/07/15_20240107162026A001.jpg\",\"params\":{},\"serialNumber\":0,\"skipH5Url\":\"https://gitee.com/hongmaple\",\"title\":\"首页一号标题\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-07 16:37:46', '100');
INSERT INTO `sys_oper_log` VALUES ('161', '轮播图', '1', 'com.ruoyi.web.controller.maple.CarouselChartController.add()', 'POST', '1', 'admin', null, '/maple/carouselChart', '127.0.0.1', '内网IP', '{\"id\":2,\"imgUrl\":\"/profile/upload/2024/01/07/2b022c2ffc085826296c609124a99a1d_20240107163825A002.jpg\",\"params\":{},\"serialNumber\":1,\"skipH5Url\":\"https://gitee.com/hongmaple\",\"title\":\"首页第二张图\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-07 16:38:31', '23');
INSERT INTO `sys_oper_log` VALUES ('162', '轮播图', '1', 'com.ruoyi.web.controller.maple.CarouselChartController.add()', 'POST', '1', 'admin', null, '/maple/carouselChart', '127.0.0.1', '内网IP', '{\"id\":3,\"imgUrl\":\"/profile/upload/2024/01/07/11_20240107164325A005.jpeg\",\"params\":{},\"serialNumber\":2,\"skipH5Url\":\"https://modao.cc/app/KMeiqhQrkg0nb8e7fUGzP#screen=sl9sb3jmpt1v8y0\",\"title\":\"首页第三张图\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-07 16:43:32', '52');
INSERT INTO `sys_oper_log` VALUES ('163', '客服中心', '1', 'com.ruoyi.web.controller.maple.CustomerServerController.add()', 'POST', '1', 'admin', null, '/maple/customerServer', '127.0.0.1', '内网IP', '{\"id\":1,\"params\":{},\"phone\":\"18968783311\",\"wxUrl\":\"/profile/upload/2024/01/07/72d527bc7a0a6fa09041f9ac498defc9_20240107165916A007.jpg\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-07 16:59:20', '26');
INSERT INTO `sys_oper_log` VALUES ('164', '快递公司', '1', 'com.ruoyi.web.controller.maple.ExpressCompanyController.add()', 'POST', '1', 'admin', null, '/maple/expressCompany', '127.0.0.1', '内网IP', '{\"firstWeightPrice\":20,\"id\":1,\"name\":\"顺丰\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-07 16:59:55', '57');
INSERT INTO `sys_oper_log` VALUES ('165', '快递公司', '1', 'com.ruoyi.web.controller.maple.ExpressCompanyController.add()', 'POST', '1', 'admin', null, '/maple/expressCompany', '127.0.0.1', '内网IP', '{\"firstWeightPrice\":18,\"id\":2,\"name\":\"京东\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-07 17:00:24', '13');
INSERT INTO `sys_oper_log` VALUES ('166', '快递公司', '1', 'com.ruoyi.web.controller.maple.ExpressCompanyController.add()', 'POST', '1', 'admin', null, '/maple/expressCompany', '127.0.0.1', '内网IP', '{\"firstWeightPrice\":15,\"id\":3,\"name\":\"圆通\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-07 17:00:35', '13');
INSERT INTO `sys_oper_log` VALUES ('167', '快递公司', '2', 'com.ruoyi.web.controller.maple.ExpressCompanyController.edit()', 'PUT', '1', 'admin', null, '/maple/expressCompany', '127.0.0.1', '内网IP', '{\"firstWeightPrice\":16,\"id\":3,\"name\":\"圆通\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-07 17:00:46', '40');
INSERT INTO `sys_oper_log` VALUES ('168', '商品', '1', 'com.ruoyi.web.controller.maple.GoodsController.add()', 'POST', '1', 'admin', null, '/maple/goods', '127.0.0.1', '内网IP', '{\"coverUrl\":\"/profile/upload/2024/01/07/e4ef45414e1888b347dd84a3b7d03f23_20240107201506A002.jpeg\",\"id\":1,\"params\":{},\"price\":20,\"stock\":100,\"title\":\"5千克苹果\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-07 20:15:17', '132');
INSERT INTO `sys_oper_log` VALUES ('169', '帮助中心', '1', 'com.ruoyi.web.controller.maple.HelpController.add()', 'POST', '1', 'admin', null, '/maple/help', '127.0.0.1', '内网IP', '{\"content\":\"<p>我在这里推荐两种方式</p><p>首先需要安装<a href=\\\"https://wkhtmltopdf.org/\\\" rel=\\\"noopener noreferrer\\\" target=\\\"_blank\\\" style=\\\"color: rgb(78, 161, 219); background-color: transparent;\\\">wkhtmltopdf</a>，不同系统有不同的安装反思，同时这也是它的缺点</p><h3>第一种方式，写纯的命令，我直接贴实现代码，对原理感兴趣的自己去挖掘</h3><p>输出流工具</p><pre class=\\\"ql-syntax\\\" spellcheck=\\\"false\\\">public class HtmlToPdfInterceptor extends Thread {\\n    private InputStream is;\\n    \\n    public HtmlToPdfInterceptor(InputStream is){\\n        this.is = is;\\n    }\\n    \\n    public void run(){\\n        try{\\n            InputStreamReader isr = new InputStreamReader(is, \\\"utf-8\\\");\\n            BufferedReader br = new BufferedReader(isr);\\n            String line = null;\\n            while ((line = br.readLine()) != null) {\\n                //输出内容\\n                System.out.println(line.toString());\\n            }\\n        }catch (IOException e){\\n            e.printStackTrace();\\n        }\\n    }\\n}\\n</pre><p><br></p>\",\"id\":1,\"params\":{},\"title\":\"技术帮助\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-07 20:28:44', '23');
INSERT INTO `sys_oper_log` VALUES ('170', '参数管理', '2', 'com.ruoyi.web.controller.system.SysConfigController.edit()', 'PUT', '1', 'admin', null, '/system/config', '127.0.0.1', '内网IP', '{\"configId\":5,\"configKey\":\"sys.account.registerUser\",\"configName\":\"账号自助-是否开启用户注册功能\",\"configType\":\"Y\",\"configValue\":\"true\",\"createBy\":\"admin\",\"createTime\":\"2024-01-05 23:56:01\",\"params\":{},\"remark\":\"是否开启注册用户功能（true开启，false关闭）\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-08 18:01:59', '102');
INSERT INTO `sys_oper_log` VALUES ('171', '用户管理', '3', 'com.ruoyi.web.controller.system.SysUserController.remove()', 'DELETE', '1', 'admin', null, '/system/user/100', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-08 18:22:02', '232');
INSERT INTO `sys_oper_log` VALUES ('172', '角色管理', '1', 'com.ruoyi.web.controller.system.SysRoleController.add()', 'POST', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"deptCheckStrictly\":true,\"deptIds\":[],\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,105,107,2001,2056,2062,2068,2002,2008,2014,2020,2026,2032,2038,2044,1025,1035,2057,2063,2069,2003,2009,2015,2021,2022,2023,2024,2027,2033,2039,2045,2046,2047,2048],\"params\":{},\"roleId\":100,\"roleKey\":\"custom\",\"roleName\":\"C端客户\",\"roleSort\":2,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-08 18:46:51', '166');
INSERT INTO `sys_oper_log` VALUES ('173', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2024-01-05 23:55:11\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,100,101,102,105,106,1000,2000,1007,1012,1025,1030,107,1035,1036,1037,1038,108,500,1039,1040,1041,501,1042,1043,1044,1045],\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-08 18:53:04', '83');
INSERT INTO `sys_oper_log` VALUES ('174', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/103', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"存在子菜单,不允许删除\",\"code\":601}', '0', null, '2024-01-08 18:53:43', '9');
INSERT INTO `sys_oper_log` VALUES ('175', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/1019', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-08 18:53:51', '31');
INSERT INTO `sys_oper_log` VALUES ('176', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/1018', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-08 18:53:55', '55');
INSERT INTO `sys_oper_log` VALUES ('177', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/1017', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-08 18:53:58', '23');
INSERT INTO `sys_oper_log` VALUES ('178', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/1016', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-08 18:54:02', '24');
INSERT INTO `sys_oper_log` VALUES ('179', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/103', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-08 18:54:08', '25');
INSERT INTO `sys_oper_log` VALUES ('180', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/1024', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-08 18:54:15', '18');
INSERT INTO `sys_oper_log` VALUES ('181', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/1023', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-08 18:54:19', '25');
INSERT INTO `sys_oper_log` VALUES ('182', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/1022', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-08 18:54:22', '19');
INSERT INTO `sys_oper_log` VALUES ('183', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/1021', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-08 18:54:26', '26');
INSERT INTO `sys_oper_log` VALUES ('184', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/1020', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-08 18:54:30', '23');
INSERT INTO `sys_oper_log` VALUES ('185', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/104', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-08 18:54:34', '60');
INSERT INTO `sys_oper_log` VALUES ('186', '用户管理', '3', 'com.ruoyi.web.controller.system.SysUserController.remove()', 'DELETE', '1', 'admin', null, '/system/user/101', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-08 18:55:28', '23');
INSERT INTO `sys_oper_log` VALUES ('187', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2024-01-08 18:46:51\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,105,107,2001,2056,2062,2068,2002,2008,2014,2020,2026,2032,2038,2044,1025,1035,2057,2063,2069,2003,2009,2015,2021,2022,2023,2024,2027,2033,2039,2045,2046,2047],\"params\":{},\"roleId\":100,\"roleKey\":\"custom\",\"roleName\":\"C端客户\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-08 19:15:20', '277');
INSERT INTO `sys_oper_log` VALUES ('188', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2024-01-05 23:55:11\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,100,101,102,105,106,2001,2068,2008,2014,2020,2026,2032,2038,2044,1000,2000,1007,1012,1025,1030,107,1035,1036,1037,1038,108,500,1039,1040,1041,501,1042,1043,1044,1045,2056,2057,2058,2059,2060,2061,2062,2063,2064,2065,2066,2067,2069,2071,2073,2009,2015,2021,2027,2033,2039,2040,2041,2043,2045,2047,2049],\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-08 19:18:07', '106');
INSERT INTO `sys_oper_log` VALUES ('189', '在线用户', '7', 'com.ruoyi.web.controller.monitor.SysUserOnlineController.forceLogout()', 'DELETE', '1', 'admin', null, '/monitor/online/115bc69d-d6e8-4817-a0ef-f4fa5ee6ea92', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-08 19:18:56', '6');
INSERT INTO `sys_oper_log` VALUES ('190', '在线用户', '7', 'com.ruoyi.web.controller.monitor.SysUserOnlineController.forceLogout()', 'DELETE', '1', 'admin', null, '/monitor/online/732dc2f1-a247-4619-99d9-4c83dab54895', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-08 19:18:59', '13');
INSERT INTO `sys_oper_log` VALUES ('191', '在线用户', '7', 'com.ruoyi.web.controller.monitor.SysUserOnlineController.forceLogout()', 'DELETE', '1', 'admin', null, '/monitor/online/2a16df09-a805-49d2-9569-000a82722dc0', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-08 19:21:54', '4');
INSERT INTO `sys_oper_log` VALUES ('192', '用户管理', '3', 'com.ruoyi.web.controller.system.SysUserController.remove()', 'DELETE', '1', 'admin', null, '/system/user/102', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-08 19:22:20', '24');
INSERT INTO `sys_oper_log` VALUES ('193', '用户管理', '3', 'com.ruoyi.web.controller.system.SysUserController.remove()', 'DELETE', '1', 'admin', null, '/system/user/103', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-08 19:31:51', '16');
INSERT INTO `sys_oper_log` VALUES ('194', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', '1', 'admin', null, '/tool/gen/synchDb/t_customer_server', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-09 12:35:25', '248');
INSERT INTO `sys_oper_log` VALUES ('195', '字典类型', '1', 'com.ruoyi.web.controller.system.SysDictTypeController.add()', 'POST', '1', 'admin', null, '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"dictName\":\"客服中心状态\",\"dictType\":\"customer_server_status\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-09 12:39:38', '36');
INSERT INTO `sys_oper_log` VALUES ('196', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', '1', 'admin', null, '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"上线\",\"dictSort\":0,\"dictType\":\"customer_server_status\",\"dictValue\":\"0\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-09 12:40:09', '33');
INSERT INTO `sys_oper_log` VALUES ('197', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', '1', 'admin', null, '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"下线\",\"dictSort\":0,\"dictType\":\"customer_server_status\",\"dictValue\":\"1\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-09 12:40:18', '27');
INSERT INTO `sys_oper_log` VALUES ('198', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"customerServer\",\"className\":\"CustomerServer\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"客服id\",\"columnId\":1,\"columnName\":\"id\",\"columnType\":\"bigint(20) unsigned\",\"createBy\":\"admin\",\"createTime\":\"2024-01-07 14:19:07\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2024-01-09 12:35:25\",\"usableColumn\":false},{\"capJavaField\":\"Phone\",\"columnComment\":\"手机号\",\"columnId\":2,\"columnName\":\"phone\",\"columnType\":\"varchar(11)\",\"createBy\":\"admin\",\"createTime\":\"2024-01-07 14:19:07\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"phone\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2024-01-09 12:35:25\",\"usableColumn\":false},{\"capJavaField\":\"WxUrl\",\"columnComment\":\"微信图片\",\"columnId\":3,\"columnName\":\"wx_url\",\"columnType\":\"varchar(500)\",\"createBy\":\"admin\",\"createTime\":\"2024-01-07 14:19:07\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"imageUpload\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"wxUrl\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2024-01-09 12:35:25\",\"usableColumn\":false},{\"capJavaField\":\"Status\",\"columnComment\":\"状态0：上线，1：下线\",\"columnId\":78,\"columnName\":\"status\",\"columnType\":\"char(1)\",\"createBy\":\"\",\"createTime\":\"2024-01-09 12:35:25\",\"dictType\":\"customer_server_status\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":t', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-09 12:40:47', '89');
INSERT INTO `sys_oper_log` VALUES ('199', '客服中心', '2', 'com.ruoyi.web.controller.maple.CustomerServerController.edit()', 'PUT', '1', 'admin', null, '/maple/customerServer', '127.0.0.1', '内网IP', '{\"id\":1,\"params\":{},\"phone\":\"18968783311\",\"status\":\"0\",\"wxUrl\":\"/profile/upload/2024/01/07/72d527bc7a0a6fa09041f9ac498defc9_20240107165916A007.jpg\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-09 12:42:20', '14');
INSERT INTO `sys_oper_log` VALUES ('200', '客服中心', '2', 'com.ruoyi.web.controller.maple.CustomerServerController.edit()', 'PUT', '1', 'admin', null, '/maple/customerServer', '127.0.0.1', '内网IP', '{\"id\":1,\"params\":{},\"phone\":\"18968783311\",\"status\":\"0\",\"wxUrl\":\"/profile/upload/2024/01/09/wx_20240109124453A001.jpg\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-09 12:44:57', '14');
INSERT INTO `sys_oper_log` VALUES ('201', '客服中心', '1', 'com.ruoyi.web.controller.maple.CustomerServerController.add()', 'POST', '1', 'admin', null, '/maple/customerServer', '127.0.0.1', '内网IP', '{\"id\":2,\"params\":{},\"phone\":\"19976618178\",\"status\":\"0\",\"wxUrl\":\"/profile/upload/2024/01/09/wx1_20240109124833A002.jpg\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-09 12:48:53', '14');
INSERT INTO `sys_oper_log` VALUES ('202', '客服中心', '2', 'com.ruoyi.web.controller.maple.CustomerServerController.edit()', 'PUT', '1', 'admin', null, '/maple/customerServer', '127.0.0.1', '内网IP', '{\"id\":1,\"params\":{},\"phone\":\"18968783311\",\"status\":\"1\",\"wxUrl\":\"/profile/upload/2024/01/09/wx_20240109124453A001.jpg\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-09 12:49:02', '10');
INSERT INTO `sys_oper_log` VALUES ('203', '客服中心', '2', 'com.ruoyi.web.controller.maple.CustomerServerController.edit()', 'PUT', '1', 'admin', null, '/maple/customerServer', '127.0.0.1', '内网IP', '{\"id\":1,\"params\":{},\"phone\":\"18968783311\",\"status\":\"0\",\"wxUrl\":\"/profile/upload/2024/01/09/wx_20240109124453A001.jpg\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-09 12:49:08', '18');
INSERT INTO `sys_oper_log` VALUES ('204', '客服中心', '1', 'com.ruoyi.web.controller.maple.CustomerServerController.add()', 'POST', '1', 'admin', null, '/maple/customerServer', '127.0.0.1', '内网IP', '{\"id\":3,\"params\":{},\"phone\":\"17856780981\",\"status\":\"0\",\"wxUrl\":\"/profile/upload/2024/01/09/wx2_20240109124934A003.jpg\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-09 12:49:37', '9');
INSERT INTO `sys_oper_log` VALUES ('205', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', null, '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"t_customer_server_bind\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-09 13:06:10', '94');
INSERT INTO `sys_oper_log` VALUES ('206', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"custmoerServerBind\",\"className\":\"CustomerServerBind\",\"columns\":[{\"capJavaField\":\"Id\",\"columnId\":79,\"columnName\":\"id\",\"columnType\":\"int(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-01-09 13:06:10\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":13,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"CustomerServerId\",\"columnComment\":\"客服id\",\"columnId\":80,\"columnName\":\"customer_server_id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-01-09 13:06:10\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"customerServerId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":13,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"IP\",\"columnComment\":\"IP地址\",\"columnId\":81,\"columnName\":\"IP\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2024-01-09 13:06:10\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"IP\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":13,\"updateBy\":\"\",\"usableColumn\":false}],\"crud\":true,\"functionAuthor\":\"maple\",\"functionName\":\"客服微信IP绑定\",\"genPath\":\"/\",\"genType\":\"0\",\"moduleName\":\"maple\",\"options\":\"{\\\"parentMenuId\\\":2001}\",\"packageName\":\"com.ruoyi.maple\",\"params\":{\"parentMenuId\":2001},\"parentMenuId\":\"2001\",\"sub\":false,\"tableComment\":\"客服微信IP绑定表\",\"tableId\":13,\"tableName\":\"t_customer_server_bind\",\"tplCategory\":\"crud\",\"tree\":false}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-09 13:07:37', '47');
INSERT INTO `sys_oper_log` VALUES ('207', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2024-01-08 18:46:51\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,105,107,2001,2056,2062,2068,2002,2008,2014,2020,2026,2032,2038,2044,1025,1035,2057,2063,2069,2074,2075,2076,2077,2078,2079,2003,2009,2015,2021,2022,2023,2024,2027,2033,2039,2045,2046,2047],\"params\":{},\"roleId\":100,\"roleKey\":\"custom\",\"roleName\":\"C端客户\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-09 13:16:05', '60');
INSERT INTO `sys_oper_log` VALUES ('208', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2024-01-05 23:55:11\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,100,101,102,105,106,2001,2068,2008,2014,2020,2026,2032,2038,2044,1000,2000,1007,1012,1025,1030,107,1035,1036,1037,1038,108,500,1039,1040,1041,501,1042,1043,1044,1045,2056,2057,2058,2059,2060,2061,2062,2063,2064,2065,2066,2067,2069,2071,2073,2074,2075,2076,2077,2078,2079,2009,2015,2021,2027,2033,2039,2040,2041,2043,2045,2047,2049],\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-09 13:16:23', '55');
INSERT INTO `sys_oper_log` VALUES ('209', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"maple/orederDetails/index\",\"createTime\":\"2024-01-07 15:33:32\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2050,\"menuName\":\"订单详情\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2001,\"path\":\"orederDetails\",\"perms\":\"maple:orederDetails:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-13 16:13:15', '114');
INSERT INTO `sys_oper_log` VALUES ('210', '订单', '1', 'com.ruoyi.maple.controller.OrderController.add()', 'POST', '1', '19976618156', null, '/maple/order', '127.0.0.1', '内网IP', '{\"createId\":106,\"name\":\"手镯\",\"num\":5,\"params\":{},\"remark\":\"保密发货\",\"trackingNumber\":\"782812413\",\"wareouseId\":1}', null, '1', '快递号已存在', '2024-01-13 23:31:14', '160');
INSERT INTO `sys_oper_log` VALUES ('211', '订单', '1', 'com.ruoyi.maple.controller.OrderController.add()', 'POST', '1', '19976618156', null, '/maple/order', '127.0.0.1', '内网IP', '{\"createId\":106,\"name\":\"手镯\",\"num\":5,\"params\":{},\"remark\":\"保密发货\",\"trackingNumber\":\"782812413\",\"wareouseId\":1}', null, '1', '快递号已存在', '2024-01-13 23:37:17', '135');
INSERT INTO `sys_oper_log` VALUES ('212', '订单', '1', 'com.ruoyi.maple.controller.OrderController.add()', 'POST', '1', '19976618156', null, '/maple/order', '127.0.0.1', '内网IP', '{\"createId\":106,\"name\":\"手镯\",\"num\":5,\"params\":{},\"remark\":\"保密发货\",\"trackingNumber\":\"782812413\",\"wareouseId\":1}', null, '1', '快递号已存在', '2024-01-13 23:39:00', '86359');
INSERT INTO `sys_oper_log` VALUES ('213', '订单', '1', 'com.ruoyi.maple.controller.OrderController.add()', 'POST', '1', '19976618156', null, '/maple/order', '127.0.0.1', '内网IP', '{\"createId\":106,\"name\":\"手镯\",\"num\":5,\"params\":{},\"remark\":\"保密发货\",\"trackingNumber\":\"782812413\",\"wareouseId\":1}', null, '1', 'For input string: \"a06ec2c5586a4901995a297e1b9ace18\"', '2024-01-13 23:44:02', '22173');
INSERT INTO `sys_oper_log` VALUES ('214', '订单', '1', 'com.ruoyi.maple.controller.OrderController.add()', 'POST', '1', '19976618156', null, '/maple/order', '127.0.0.1', '内网IP', '{\"createId\":106,\"name\":\"手镯\",\"num\":5,\"params\":{},\"remark\":\"保密发货\",\"trackingNumber\":\"782812413\",\"wareouseId\":1}', null, '1', 'For input string: \"6baf524cbd034c6c992132aebb865f2b\"', '2024-01-13 23:46:37', '85796');
INSERT INTO `sys_oper_log` VALUES ('215', '订单', '1', 'com.ruoyi.maple.controller.OrderController.add()', 'POST', '1', '19976618156', null, '/maple/order', '127.0.0.1', '内网IP', '{\"createId\":106,\"createTime\":\"2024-01-13 23:59:50\",\"id\":\"1677352026112\",\"name\":\"手镯\",\"num\":5,\"params\":{},\"remark\":\"保密发货\",\"trackingNumber\":\"782812413\",\"wareouseId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-13 23:59:51', '13062');
INSERT INTO `sys_oper_log` VALUES ('216', '订单', '1', 'com.ruoyi.maple.controller.OrderController.add()', 'POST', '1', '19976618156', null, '/maple/order', '127.0.0.1', '内网IP', '{\"createId\":106,\"name\":\"手镯\",\"num\":5,\"params\":{},\"remark\":\"保密发货\",\"trackingNumber\":\"782812413\",\"wareouseId\":1}', null, '1', '快递号已存在', '2024-01-14 00:00:31', '28');
INSERT INTO `sys_oper_log` VALUES ('217', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"maple/custmoerServerBind/index\",\"createTime\":\"2024-01-09 13:11:38\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2074,\"menuName\":\"客服微信IP绑定\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2001,\"path\":\"custmoerServerBind\",\"perms\":\"maple:custmoerServerBind:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-14 12:28:11', '49');
INSERT INTO `sys_oper_log` VALUES ('218', '订单', '2', 'com.ruoyi.web.controller.maple.OrderController.edit()', 'PUT', '1', 'admin', null, '/maple/order', '127.0.0.1', '内网IP', '{\"containerNumber\":\"01-02-9875\",\"createId\":106,\"createTime\":\"2024-01-13 23:59:51\",\"id\":\"1677352026112\",\"name\":\"手镯\",\"num\":5,\"params\":{},\"payType\":\"0\",\"remark\":\"保密发货\",\"status\":\"0\",\"totalPrice\":0.01,\"trackingNumber\":\"782812413\",\"volume\":\"长:50,宽:10,高:80\",\"warehousingImg\":\"/profile/upload/2024/01/14/d8fca299f743ab958ce6fd34524bb76d--1574323644_20240114123701A002.jpg\",\"wareouseId\":1,\"weight\":10}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-14 12:37:48', '112');
INSERT INTO `sys_oper_log` VALUES ('219', '订单', '2', 'com.ruoyi.web.controller.maple.OrderController.edit()', 'PUT', '1', 'admin', null, '/maple/order', '127.0.0.1', '内网IP', '{\"containerNumber\":\"01-02-9875\",\"createId\":106,\"createTime\":\"2024-01-13 23:59:51\",\"id\":\"1677352026112\",\"name\":\"手镯\",\"num\":5,\"params\":{},\"payType\":\"0\",\"remark\":\"保密发货\",\"status\":\"0\",\"totalPrice\":0.01,\"trackingNumber\":\"782812413\",\"volume\":\"长:10,宽:10,高:30\",\"warehousingImg\":\"/profile/upload/2024/01/14/d8fca299f743ab958ce6fd34524bb76d--1574323644_20240114123701A002.jpg\",\"wareouseId\":1,\"weight\":10}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-14 12:40:16', '18');
INSERT INTO `sys_oper_log` VALUES ('220', '订单', '2', 'com.ruoyi.web.controller.maple.OrderController.edit()', 'PUT', '1', 'admin', null, '/maple/order', '127.0.0.1', '内网IP', '{\"containerNumber\":\"01-02-9875\",\"createId\":106,\"createTime\":\"2024-01-13 23:59:51\",\"id\":\"1677352026112\",\"name\":\"手镯\",\"num\":5,\"params\":{},\"payType\":\"0\",\"remark\":\"保密发货\",\"status\":\"1\",\"totalPrice\":0.01,\"trackingNumber\":\"782812413\",\"volume\":\"长:10,宽:10,高:50\",\"warehousingImg\":\"/profile/upload/2024/01/14/d8fca299f743ab958ce6fd34524bb76d--1574323644_20240114123701A002.jpg\",\"wareouseId\":1,\"weight\":10}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-14 12:51:45', '14');
INSERT INTO `sys_oper_log` VALUES ('221', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', null, '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"t_address\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-14 13:04:17', '130');
INSERT INTO `sys_oper_log` VALUES ('222', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"address\",\"className\":\"Address\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"地址id\",\"columnId\":82,\"columnName\":\"id\",\"columnType\":\"bigint(20) unsigned\",\"createBy\":\"admin\",\"createTime\":\"2024-01-14 13:04:17\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":14,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Address\",\"columnComment\":\"地址\",\"columnId\":83,\"columnName\":\"address\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2024-01-14 13:04:17\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"address\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":14,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"UserId\",\"columnComment\":\"用户id\",\"columnId\":84,\"columnName\":\"user_id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-01-14 13:04:17\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"userId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":14,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"IsDefault\",\"columnComment\":\"是否默认\",\"columnId\":85,\"columnName\":\"is_default\",\"columnType\":\"tinyint(2)\",\"createBy\":\"admin\",\"createTime\":\"2024-01-14 13:04:17\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"radio\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"isDefault\",\"javaType\":\"Integer\",\"list\":true,', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-14 13:06:18', '75');
INSERT INTO `sys_oper_log` VALUES ('223', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', null, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"t_address\"}', null, '0', null, '2024-01-14 13:06:23', '188');
INSERT INTO `sys_oper_log` VALUES ('224', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"maple/address/index\",\"createTime\":\"2024-01-14 16:25:55\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2080,\"menuName\":\"地址\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2001,\"path\":\"address\",\"perms\":\"maple:address:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-14 17:39:09', '44');
INSERT INTO `sys_oper_log` VALUES ('225', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2024-01-08 18:46:51\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,105,107,2001,2056,2062,2068,2002,2008,2014,2020,2026,2032,2038,2044,1025,1035,2057,2063,2069,2074,2075,2076,2077,2078,2079,2080,2081,2082,2083,2084,2085,2003,2009,2015,2021,2022,2023,2024,2027,2033,2039,2045,2046,2047],\"params\":{},\"roleId\":100,\"roleKey\":\"custom\",\"roleName\":\"C端客户\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-14 17:39:45', '91');
INSERT INTO `sys_oper_log` VALUES ('226', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', '1', 'admin', null, '/tool/gen/synchDb/t_address', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-14 18:07:42', '142');
INSERT INTO `sys_oper_log` VALUES ('227', '订单', '2', 'com.ruoyi.web.controller.maple.OrderController.edit()', 'PUT', '1', '19976618156', null, '/maple/order', '127.0.0.1', '内网IP', '{\"address\":\"uweirwhwejlwerwerer\",\"consignee\":\"zhangs\",\"params\":{},\"phone\":\"21943324384\"}', '{\"msg\":\"操作失败\",\"code\":500}', '0', null, '2024-01-16 16:29:11', '109');
INSERT INTO `sys_oper_log` VALUES ('228', '订单', '2', 'com.ruoyi.web.controller.maple.OrderController.edit()', 'PUT', '1', '19976618156', null, '/maple/order', '127.0.0.1', '内网IP', '{\"address\":\"uweirwhwejlwerwerer\",\"consignee\":\"zhangs\",\"params\":{},\"phone\":\"21943324384\"}', '{\"msg\":\"操作失败\",\"code\":500}', '0', null, '2024-01-16 16:33:08', '35443');
INSERT INTO `sys_oper_log` VALUES ('229', '订单', '2', 'com.ruoyi.web.controller.maple.OrderController.edit()', 'PUT', '1', '19976618156', null, '/maple/order', '127.0.0.1', '内网IP', '{\"address\":\"uweirwhwejlwerwerer\",\"consignee\":\"zhangs\",\"id\":\"1677352026112\",\"params\":{},\"phone\":\"21943324384\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-16 16:34:24', '3757');
INSERT INTO `sys_oper_log` VALUES ('230', '订单', '2', 'com.ruoyi.web.controller.maple.OrderController.edit()', 'PUT', '1', '19976618156', null, '/maple/order', '127.0.0.1', '内网IP', '{\"address\":\"uweirwhwejlwerwerer\",\"consignee\":\"zhangs\",\"id\":\"1677352026112\",\"params\":{},\"phone\":\"21943324384\",\"status\":\"2\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-16 16:35:20', '14');
INSERT INTO `sys_oper_log` VALUES ('231', '订单', '2', 'com.ruoyi.web.controller.maple.OrderController.edit()', 'PUT', '1', '19976618156', null, '/maple/order', '127.0.0.1', '内网IP', '{\"id\":\"1677352026112\",\"params\":{},\"status\":\"4\"}', null, '1', '已支付才库变为待发货', '2024-01-18 02:08:04', '54');
INSERT INTO `sys_oper_log` VALUES ('232', '订单', '2', 'com.ruoyi.web.controller.maple.OrderController.edit()', 'PUT', '1', '19976618156', null, '/maple/order', '127.0.0.1', '内网IP', '{\"id\":\"1677352026112\",\"params\":{},\"status\":\"4\"}', null, '1', '已支付才库变为待发货', '2024-01-18 02:09:24', '6');
INSERT INTO `sys_oper_log` VALUES ('233', '订单', '2', 'com.ruoyi.web.controller.maple.OrderController.edit()', 'PUT', '1', '19976618156', null, '/maple/order', '127.0.0.1', '内网IP', '{\"id\":\"1677352026112\",\"params\":{},\"payTime\":\"2024-01-18 02:10:08\",\"status\":\"3\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-18 02:10:08', '159');
INSERT INTO `sys_oper_log` VALUES ('234', '订单', '2', 'com.ruoyi.web.controller.maple.OrderController.edit()', 'PUT', '1', 'admin', null, '/maple/order', '127.0.0.1', '内网IP', '{\"params\":{}}', null, '1', '', '2024-01-21 13:17:52', '54');
INSERT INTO `sys_oper_log` VALUES ('235', '订单', '2', 'com.ruoyi.web.controller.maple.OrderController.edit()', 'PUT', '1', 'admin', null, '/maple/order', '127.0.0.1', '内网IP', '{\"params\":{}}', null, '1', '', '2024-01-21 13:22:17', '7');
INSERT INTO `sys_oper_log` VALUES ('236', '订单入库', '3', 'com.ruoyi.web.controller.maple.OrderController.faHuo()', 'POST', '1', 'admin', null, '/maple/order/faHuo', '127.0.0.1', '内网IP', '{\"address\":\"uweirwhwejlwerwerer\",\"consignee\":\"zhangs\",\"expressCompanyId\":1,\"orederId\":1677352026112,\"params\":{},\"phone\":\"21943324384\",\"trackingNumber\":\"21487241213\"}', null, '1', '代发货才可变为已发货', '2024-01-21 13:24:55', '8');
INSERT INTO `sys_oper_log` VALUES ('237', '订单入库', '3', 'com.ruoyi.web.controller.maple.OrderController.faHuo()', 'POST', '1', 'admin', null, '/maple/order/faHuo', '127.0.0.1', '内网IP', '{\"address\":\"uweirwhwejlwerwerer\",\"consignee\":\"zhangs\",\"expressCompanyId\":1,\"orederId\":1677352026112,\"params\":{},\"phone\":\"21943324384\",\"trackingNumber\":\"21487241213\"}', null, '1', '代发货才可变为已发货', '2024-01-21 13:24:57', '6');
INSERT INTO `sys_oper_log` VALUES ('238', '订单入库', '3', 'com.ruoyi.web.controller.maple.OrderController.faHuo()', 'POST', '1', 'admin', null, '/maple/order/faHuo', '127.0.0.1', '内网IP', '{\"address\":\"uweirwhwejlwerwerer\",\"consignee\":\"zhangs\",\"expressCompanyId\":1,\"orederId\":1677352026112,\"params\":{},\"phone\":\"21943324384\",\"trackingNumber\":\"21487241213\"}', null, '1', '代发货才可变为已发货', '2024-01-21 13:25:53', '29083');
INSERT INTO `sys_oper_log` VALUES ('239', '订单入库', '3', 'com.ruoyi.web.controller.maple.OrderController.faHuo()', 'POST', '1', 'admin', null, '/maple/order/faHuo', '127.0.0.1', '内网IP', '{\"address\":\"uweirwhwejlwerwerer\",\"consignee\":\"zhangs\",\"createTime\":\"2024-01-21 13:45:21\",\"expressCompanyId\":1,\"orederId\":1677352026112,\"params\":{},\"phone\":\"21943324384\",\"trackingNumber\":\"21487241213\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-21 13:45:21', '10104');
INSERT INTO `sys_oper_log` VALUES ('240', '订单入库', '3', 'com.ruoyi.web.controller.maple.OrderController.faHuo()', 'POST', '1', 'admin', null, '/maple/order/faHuo', '127.0.0.1', '内网IP', '{\"address\":\"uweirwhwejlwerwerer\",\"consignee\":\"zhangs\",\"createTime\":\"2024-01-21 13:45:30\",\"expressCompanyId\":1,\"orederId\":1677352026112,\"params\":{},\"phone\":\"21943324384\",\"trackingNumber\":\"21487241213\"}', null, '1', '\r\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'1677352026112\' for key \'PRIMARY\'\r\n### The error may exist in file [D:\\shihuo\\javaProject\\transport\\Transport\\maple-transport\\target\\classes\\mapper\\maple\\OrderLogisticsMapper.xml]\r\n### The error may involve com.ruoyi.maple.mapper.OrderLogisticsMapper.insertOrderLogistics-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_order_logistics          ( oreder_id,             tracking_number,             express_company_id,             consignee,             address,             phone,             create_time )           values ( ?,             ?,             ?,             ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'1677352026112\' for key \'PRIMARY\'\n; Duplicate entry \'1677352026112\' for key \'PRIMARY\'; nested exception is java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'1677352026112\' for key \'PRIMARY\'', '2024-01-21 13:45:30', '3737');
INSERT INTO `sys_oper_log` VALUES ('241', '订单入库', '3', 'com.ruoyi.web.controller.maple.OrderController.faHuo()', 'POST', '1', 'admin', null, '/maple/order/faHuo', '127.0.0.1', '内网IP', '{\"address\":\"uweirwhwejlwerwerer\",\"consignee\":\"zhangs\",\"createTime\":\"2024-01-21 13:45:59\",\"expressCompanyId\":1,\"orederId\":1677352026112,\"params\":{},\"phone\":\"21943324384\",\"trackingNumber\":\"2124341224\"}', null, '1', '\r\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'1677352026112\' for key \'PRIMARY\'\r\n### The error may exist in file [D:\\shihuo\\javaProject\\transport\\Transport\\maple-transport\\target\\classes\\mapper\\maple\\OrderLogisticsMapper.xml]\r\n### The error may involve com.ruoyi.maple.mapper.OrderLogisticsMapper.insertOrderLogistics-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_order_logistics          ( oreder_id,             tracking_number,             express_company_id,             consignee,             address,             phone,             create_time )           values ( ?,             ?,             ?,             ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'1677352026112\' for key \'PRIMARY\'\n; Duplicate entry \'1677352026112\' for key \'PRIMARY\'; nested exception is java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'1677352026112\' for key \'PRIMARY\'', '2024-01-21 13:45:59', '5038');
INSERT INTO `sys_oper_log` VALUES ('242', '订单入库', '3', 'com.ruoyi.web.controller.maple.OrderController.faHuo()', 'POST', '1', 'admin', null, '/maple/order/faHuo', '127.0.0.1', '内网IP', '{\"address\":\"uweirwhwejlwerwerer\",\"consignee\":\"zhangs\",\"createTime\":\"2024-01-21 13:50:56\",\"expressCompanyId\":1,\"orederId\":1677352026112,\"params\":{},\"phone\":\"21943324384\",\"trackingNumber\":\"2124341224\"}', null, '1', '\r\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'1677352026112\' for key \'PRIMARY\'\r\n### The error may exist in file [D:\\shihuo\\javaProject\\transport\\Transport\\maple-transport\\target\\classes\\mapper\\maple\\OrderLogisticsMapper.xml]\r\n### The error may involve com.ruoyi.maple.mapper.OrderLogisticsMapper.insertOrderLogistics-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_order_logistics          ( oreder_id,             tracking_number,             express_company_id,             consignee,             address,             phone,             create_time )           values ( ?,             ?,             ?,             ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'1677352026112\' for key \'PRIMARY\'\n; Duplicate entry \'1677352026112\' for key \'PRIMARY\'; nested exception is java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'1677352026112\' for key \'PRIMARY\'', '2024-01-21 13:50:56', '4073');
INSERT INTO `sys_oper_log` VALUES ('243', '订单入库', '3', 'com.ruoyi.web.controller.maple.OrderController.faHuo()', 'POST', '1', 'admin', null, '/maple/order/faHuo', '127.0.0.1', '内网IP', '{\"address\":\"uweirwhwejlwerwerer\",\"consignee\":\"zhangs\",\"createTime\":\"2024-01-21 13:57:44\",\"expressCompanyId\":1,\"orederId\":1677352026112,\"params\":{},\"phone\":\"21943324384\",\"trackingNumber\":\"121242445556\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-21 13:57:44', '6139');
INSERT INTO `sys_oper_log` VALUES ('244', '订单物流', '2', 'com.ruoyi.web.controller.maple.OrderLogisticsController.edit()', 'PUT', '1', 'admin', null, '/maple/logistics', '127.0.0.1', '内网IP', '{\"address\":\"uweirwhwejlwerwerer\",\"consignee\":\"zhangs324\",\"createTime\":\"2024-01-21 13:57:44\",\"expressCompanyId\":1,\"orederId\":1677352026112,\"params\":{},\"phone\":\"21943324384\",\"trackingNumber\":\"121242445556\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-21 14:38:51', '14');
INSERT INTO `sys_oper_log` VALUES ('245', '订单物流', '2', 'com.ruoyi.web.controller.maple.OrderLogisticsController.edit()', 'PUT', '1', 'admin', null, '/maple/logistics', '127.0.0.1', '内网IP', '{\"address\":\"uweirwhwejlwerwerer\",\"consignee\":\"zhangs\",\"createTime\":\"2024-01-21 13:57:44\",\"expressCompanyId\":1,\"orederId\":1677352026112,\"params\":{},\"phone\":\"21943324384\",\"trackingNumber\":\"121242445556\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-21 14:38:59', '14');
INSERT INTO `sys_oper_log` VALUES ('246', '地址', '1', 'com.ruoyi.web.controller.maple.AddressController.add()', 'POST', '1', '19976618156', null, '/maple/address', '127.0.0.1', '内网IP', '{\"address\":\"wuiewrqweoqwnfwefewrwdfvdf\",\"id\":1,\"name\":\"maple\",\"params\":{},\"phone\":\"19978618197\",\"userId\":106}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-22 00:28:07', '5516');
INSERT INTO `sys_oper_log` VALUES ('247', '订单', '1', 'com.ruoyi.web.controller.maple.OrderController.add()', 'POST', '1', '19976618156', null, '/maple/order', '127.0.0.1', '内网IP', '{\"createId\":106,\"createTime\":\"2024-01-27 13:33:28\",\"id\":\"4917476730626048\",\"name\":\"uwee\",\"num\":1,\"params\":{},\"remark\":\"wer\",\"trackingNumber\":\"34535435\",\"wareouseId\":2}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-27 13:33:28', '1036');
INSERT INTO `sys_oper_log` VALUES ('248', '订单', '1', 'com.ruoyi.web.controller.maple.OrderController.add()', 'POST', '1', '19976618156', null, '/maple/order', '127.0.0.1', '内网IP', '{\"createId\":106,\"createTime\":\"2024-01-27 13:35:32\",\"id\":\"4917996845293568\",\"name\":\"eirr\",\"num\":5,\"params\":{},\"remark\":\"21214\",\"trackingNumber\":\"768768\",\"wareouseId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-27 13:35:32', '674');
INSERT INTO `sys_oper_log` VALUES ('249', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"入库\",\"menuType\":\"F\",\"orderNum\":5,\"params\":{},\"parentId\":2044,\"perms\":\"maple:order:faHuo\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-27 14:42:23', '34');
INSERT INTO `sys_oper_log` VALUES ('250', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2024-01-27 14:42:23\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2086,\"menuName\":\"入库\",\"menuType\":\"F\",\"orderNum\":5,\"params\":{},\"parentId\":2044,\"path\":\"\",\"perms\":\"maple:order:ruku\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-27 14:42:43', '25');
INSERT INTO `sys_oper_log` VALUES ('251', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"发货\",\"menuType\":\"F\",\"orderNum\":6,\"params\":{},\"parentId\":2044,\"perms\":\"maple:order:faHuo\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-27 14:43:25', '11');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(4) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `menu_check_strictly` tinyint(1) DEFAULT '1' COMMENT '菜单树选择项是否关联显示',
  `dept_check_strictly` tinyint(1) DEFAULT '1' COMMENT '部门树选择项是否关联显示',
  `status` char(1) NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COMMENT='角色信息表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '超级管理员', 'admin', '1', '1', '1', '1', '0', '0', 'admin', '2024-01-05 23:55:11', '', null, '超级管理员');
INSERT INTO `sys_role` VALUES ('2', '普通角色', 'common', '2', '2', '1', '1', '0', '0', 'admin', '2024-01-05 23:55:11', 'admin', '2024-01-09 13:16:23', '普通角色');
INSERT INTO `sys_role` VALUES ('100', 'C端客户', 'custom', '2', '1', '1', '1', '0', '0', 'admin', '2024-01-08 18:46:51', 'admin', '2024-01-14 17:39:45', null);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色和菜单关联表';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES ('2', '1');
INSERT INTO `sys_role_menu` VALUES ('2', '100');
INSERT INTO `sys_role_menu` VALUES ('2', '101');
INSERT INTO `sys_role_menu` VALUES ('2', '102');
INSERT INTO `sys_role_menu` VALUES ('2', '105');
INSERT INTO `sys_role_menu` VALUES ('2', '106');
INSERT INTO `sys_role_menu` VALUES ('2', '107');
INSERT INTO `sys_role_menu` VALUES ('2', '108');
INSERT INTO `sys_role_menu` VALUES ('2', '500');
INSERT INTO `sys_role_menu` VALUES ('2', '501');
INSERT INTO `sys_role_menu` VALUES ('2', '1000');
INSERT INTO `sys_role_menu` VALUES ('2', '1007');
INSERT INTO `sys_role_menu` VALUES ('2', '1012');
INSERT INTO `sys_role_menu` VALUES ('2', '1025');
INSERT INTO `sys_role_menu` VALUES ('2', '1030');
INSERT INTO `sys_role_menu` VALUES ('2', '1035');
INSERT INTO `sys_role_menu` VALUES ('2', '1036');
INSERT INTO `sys_role_menu` VALUES ('2', '1037');
INSERT INTO `sys_role_menu` VALUES ('2', '1038');
INSERT INTO `sys_role_menu` VALUES ('2', '1039');
INSERT INTO `sys_role_menu` VALUES ('2', '1040');
INSERT INTO `sys_role_menu` VALUES ('2', '1041');
INSERT INTO `sys_role_menu` VALUES ('2', '1042');
INSERT INTO `sys_role_menu` VALUES ('2', '1043');
INSERT INTO `sys_role_menu` VALUES ('2', '1044');
INSERT INTO `sys_role_menu` VALUES ('2', '1045');
INSERT INTO `sys_role_menu` VALUES ('2', '2000');
INSERT INTO `sys_role_menu` VALUES ('2', '2001');
INSERT INTO `sys_role_menu` VALUES ('2', '2008');
INSERT INTO `sys_role_menu` VALUES ('2', '2009');
INSERT INTO `sys_role_menu` VALUES ('2', '2014');
INSERT INTO `sys_role_menu` VALUES ('2', '2015');
INSERT INTO `sys_role_menu` VALUES ('2', '2020');
INSERT INTO `sys_role_menu` VALUES ('2', '2021');
INSERT INTO `sys_role_menu` VALUES ('2', '2026');
INSERT INTO `sys_role_menu` VALUES ('2', '2027');
INSERT INTO `sys_role_menu` VALUES ('2', '2032');
INSERT INTO `sys_role_menu` VALUES ('2', '2033');
INSERT INTO `sys_role_menu` VALUES ('2', '2038');
INSERT INTO `sys_role_menu` VALUES ('2', '2039');
INSERT INTO `sys_role_menu` VALUES ('2', '2040');
INSERT INTO `sys_role_menu` VALUES ('2', '2041');
INSERT INTO `sys_role_menu` VALUES ('2', '2043');
INSERT INTO `sys_role_menu` VALUES ('2', '2044');
INSERT INTO `sys_role_menu` VALUES ('2', '2045');
INSERT INTO `sys_role_menu` VALUES ('2', '2047');
INSERT INTO `sys_role_menu` VALUES ('2', '2049');
INSERT INTO `sys_role_menu` VALUES ('2', '2056');
INSERT INTO `sys_role_menu` VALUES ('2', '2057');
INSERT INTO `sys_role_menu` VALUES ('2', '2058');
INSERT INTO `sys_role_menu` VALUES ('2', '2059');
INSERT INTO `sys_role_menu` VALUES ('2', '2060');
INSERT INTO `sys_role_menu` VALUES ('2', '2061');
INSERT INTO `sys_role_menu` VALUES ('2', '2062');
INSERT INTO `sys_role_menu` VALUES ('2', '2063');
INSERT INTO `sys_role_menu` VALUES ('2', '2064');
INSERT INTO `sys_role_menu` VALUES ('2', '2065');
INSERT INTO `sys_role_menu` VALUES ('2', '2066');
INSERT INTO `sys_role_menu` VALUES ('2', '2067');
INSERT INTO `sys_role_menu` VALUES ('2', '2068');
INSERT INTO `sys_role_menu` VALUES ('2', '2069');
INSERT INTO `sys_role_menu` VALUES ('2', '2071');
INSERT INTO `sys_role_menu` VALUES ('2', '2073');
INSERT INTO `sys_role_menu` VALUES ('2', '2074');
INSERT INTO `sys_role_menu` VALUES ('2', '2075');
INSERT INTO `sys_role_menu` VALUES ('2', '2076');
INSERT INTO `sys_role_menu` VALUES ('2', '2077');
INSERT INTO `sys_role_menu` VALUES ('2', '2078');
INSERT INTO `sys_role_menu` VALUES ('2', '2079');
INSERT INTO `sys_role_menu` VALUES ('100', '1');
INSERT INTO `sys_role_menu` VALUES ('100', '105');
INSERT INTO `sys_role_menu` VALUES ('100', '107');
INSERT INTO `sys_role_menu` VALUES ('100', '1025');
INSERT INTO `sys_role_menu` VALUES ('100', '1035');
INSERT INTO `sys_role_menu` VALUES ('100', '2001');
INSERT INTO `sys_role_menu` VALUES ('100', '2002');
INSERT INTO `sys_role_menu` VALUES ('100', '2003');
INSERT INTO `sys_role_menu` VALUES ('100', '2008');
INSERT INTO `sys_role_menu` VALUES ('100', '2009');
INSERT INTO `sys_role_menu` VALUES ('100', '2014');
INSERT INTO `sys_role_menu` VALUES ('100', '2015');
INSERT INTO `sys_role_menu` VALUES ('100', '2020');
INSERT INTO `sys_role_menu` VALUES ('100', '2021');
INSERT INTO `sys_role_menu` VALUES ('100', '2022');
INSERT INTO `sys_role_menu` VALUES ('100', '2023');
INSERT INTO `sys_role_menu` VALUES ('100', '2024');
INSERT INTO `sys_role_menu` VALUES ('100', '2026');
INSERT INTO `sys_role_menu` VALUES ('100', '2027');
INSERT INTO `sys_role_menu` VALUES ('100', '2032');
INSERT INTO `sys_role_menu` VALUES ('100', '2033');
INSERT INTO `sys_role_menu` VALUES ('100', '2038');
INSERT INTO `sys_role_menu` VALUES ('100', '2039');
INSERT INTO `sys_role_menu` VALUES ('100', '2044');
INSERT INTO `sys_role_menu` VALUES ('100', '2045');
INSERT INTO `sys_role_menu` VALUES ('100', '2046');
INSERT INTO `sys_role_menu` VALUES ('100', '2047');
INSERT INTO `sys_role_menu` VALUES ('100', '2056');
INSERT INTO `sys_role_menu` VALUES ('100', '2057');
INSERT INTO `sys_role_menu` VALUES ('100', '2062');
INSERT INTO `sys_role_menu` VALUES ('100', '2063');
INSERT INTO `sys_role_menu` VALUES ('100', '2068');
INSERT INTO `sys_role_menu` VALUES ('100', '2069');
INSERT INTO `sys_role_menu` VALUES ('100', '2074');
INSERT INTO `sys_role_menu` VALUES ('100', '2075');
INSERT INTO `sys_role_menu` VALUES ('100', '2076');
INSERT INTO `sys_role_menu` VALUES ('100', '2077');
INSERT INTO `sys_role_menu` VALUES ('100', '2078');
INSERT INTO `sys_role_menu` VALUES ('100', '2079');
INSERT INTO `sys_role_menu` VALUES ('100', '2080');
INSERT INTO `sys_role_menu` VALUES ('100', '2081');
INSERT INTO `sys_role_menu` VALUES ('100', '2082');
INSERT INTO `sys_role_menu` VALUES ('100', '2083');
INSERT INTO `sys_role_menu` VALUES ('100', '2084');
INSERT INTO `sys_role_menu` VALUES ('100', '2085');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `warehouse_id` bigint(20) DEFAULT NULL COMMENT '仓库ID',
  `user_name` varchar(30) NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) DEFAULT '' COMMENT '手机号码',
  `sex` char(1) DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) DEFAULT '' COMMENT '密码',
  `status` char(1) DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登录时间',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8 COMMENT='用户信息表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', null, 'admin', 'maple', '00', 'ry@163.com', '15888888888', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2024-01-27 14:32:51', 'admin', '2024-01-05 23:55:09', '', '2024-01-27 14:32:50', '管理员');
INSERT INTO `sys_user` VALUES ('2', null, 'ry', 'maple', '00', 'ry@qq.com', '15666666666', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2024-01-05 23:55:09', 'admin', '2024-01-05 23:55:09', '', null, '测试员');
INSERT INTO `sys_user` VALUES ('106', null, '19976618156', '19976618156', '01', '', '19976618156', '0', '', '$2a$10$p42rVLrS8pWnL/lb9GYo..XIgoMmDAXnWHg.maI3cO5riiVmGl2iq', '0', '0', '127.0.0.1', '2024-01-27 13:31:11', '', '2024-01-08 19:58:45', '', '2024-01-27 13:31:10', null);
INSERT INTO `sys_user` VALUES ('107', null, '19976618157', '19976618157', '01', '', '19976618157', '0', '', '$2a$10$W0sscSWyJVMuDqAdyQTbauVZGq3mLxRjxQvz9P/H.qMA9C.Y9mmGi', '0', '0', '', null, '', '2024-01-08 19:59:37', '', null, null);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户和角色关联表';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('1', '1');
INSERT INTO `sys_user_role` VALUES ('2', '2');
INSERT INTO `sys_user_role` VALUES ('106', '100');
INSERT INTO `sys_user_role` VALUES ('107', '100');

-- ----------------------------
-- Table structure for t_address
-- ----------------------------
DROP TABLE IF EXISTS `t_address`;
CREATE TABLE `t_address` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '地址id',
  `name` varchar(50) DEFAULT NULL COMMENT '收货人',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号',
  `address` varchar(255) NOT NULL COMMENT '地址',
  `user_id` bigint(20) DEFAULT NULL,
  `is_default` tinyint(2) DEFAULT '1' COMMENT '是否默认',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='地址';

-- ----------------------------
-- Records of t_address
-- ----------------------------
INSERT INTO `t_address` VALUES ('1', 'maple', '19978618197', 'wuiewrqweoqwnfwefewrwdfvdf', '106', '1');

-- ----------------------------
-- Table structure for t_carousel_chart
-- ----------------------------
DROP TABLE IF EXISTS `t_carousel_chart`;
CREATE TABLE `t_carousel_chart` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '轮播图id',
  `title` varchar(50) NOT NULL COMMENT '标题',
  `img_url` varchar(1000) NOT NULL COMMENT '图片地址',
  `skip_h5_url` varchar(1000) DEFAULT '' COMMENT '跳转链接',
  `serial_number` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='轮播图';

-- ----------------------------
-- Records of t_carousel_chart
-- ----------------------------
INSERT INTO `t_carousel_chart` VALUES ('1', '首页一号标题', '/profile/upload/2024/01/07/15_20240107162026A001.jpg', 'https://gitee.com/hongmaple', '0');
INSERT INTO `t_carousel_chart` VALUES ('2', '首页第二张图', '/profile/upload/2024/01/07/2b022c2ffc085826296c609124a99a1d_20240107163825A002.jpg', 'https://gitee.com/hongmaple', '1');
INSERT INTO `t_carousel_chart` VALUES ('3', '首页第三张图', '/profile/upload/2024/01/07/11_20240107164325A005.jpeg', 'https://modao.cc/app/KMeiqhQrkg0nb8e7fUGzP#screen=sl9sb3jmpt1v8y0', '2');

-- ----------------------------
-- Table structure for t_customer_server
-- ----------------------------
DROP TABLE IF EXISTS `t_customer_server`;
CREATE TABLE `t_customer_server` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '客服id',
  `phone` varchar(11) NOT NULL COMMENT '手机号',
  `wx_url` varchar(500) NOT NULL COMMENT '微信图片',
  `status` char(1) DEFAULT '0' COMMENT '状态0：上线，1：下线',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='客服中心';

-- ----------------------------
-- Records of t_customer_server
-- ----------------------------
INSERT INTO `t_customer_server` VALUES ('1', '18968783311', '/profile/upload/2024/01/09/wx_20240109124453A001.jpg', '0');
INSERT INTO `t_customer_server` VALUES ('2', '19976618178', '/profile/upload/2024/01/09/wx1_20240109124833A002.jpg', '0');
INSERT INTO `t_customer_server` VALUES ('3', '17856780981', '/profile/upload/2024/01/09/wx2_20240109124934A003.jpg', '0');

-- ----------------------------
-- Table structure for t_customer_server_bind
-- ----------------------------
DROP TABLE IF EXISTS `t_customer_server_bind`;
CREATE TABLE `t_customer_server_bind` (
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `customer_server_id` bigint(20) DEFAULT NULL COMMENT '客服id',
  `IP` varchar(100) DEFAULT NULL COMMENT 'IP地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='客服微信IP绑定表';

-- ----------------------------
-- Records of t_customer_server_bind
-- ----------------------------
INSERT INTO `t_customer_server_bind` VALUES ('1', '3', '127.0.0.1');
INSERT INTO `t_customer_server_bind` VALUES ('2', '1', '192.168.1.102');
INSERT INTO `t_customer_server_bind` VALUES ('3', '2', '192.168.1.100');
INSERT INTO `t_customer_server_bind` VALUES ('4', '1', '192.168.1.101');

-- ----------------------------
-- Table structure for t_express_company
-- ----------------------------
DROP TABLE IF EXISTS `t_express_company`;
CREATE TABLE `t_express_company` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '快递公司id',
  `name` varchar(255) NOT NULL COMMENT '快递公司',
  `first_weight_price` decimal(10,2) NOT NULL COMMENT '首重价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='快递公司';

-- ----------------------------
-- Records of t_express_company
-- ----------------------------
INSERT INTO `t_express_company` VALUES ('1', '顺丰', '20.00');
INSERT INTO `t_express_company` VALUES ('2', '京东', '18.00');
INSERT INTO `t_express_company` VALUES ('3', '圆通', '16.00');

-- ----------------------------
-- Table structure for t_feedback
-- ----------------------------
DROP TABLE IF EXISTS `t_feedback`;
CREATE TABLE `t_feedback` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '反馈id',
  `content` varchar(1000) NOT NULL COMMENT '内容',
  `urls` varchar(2000) DEFAULT NULL COMMENT '图片',
  `create_time` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `create_id` bigint(20) NOT NULL COMMENT '创建者',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='反馈中心';

-- ----------------------------
-- Records of t_feedback
-- ----------------------------
INSERT INTO `t_feedback` VALUES ('1', '非常不错', '/profile/upload/2024/01/07/15_20240107162026A001.jpg', '2024-01-07 17:08:54', '2');

-- ----------------------------
-- Table structure for t_goods
-- ----------------------------
DROP TABLE IF EXISTS `t_goods`;
CREATE TABLE `t_goods` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '商品id',
  `title` varchar(255) NOT NULL COMMENT '商品标题',
  `cover_url` varchar(500) NOT NULL COMMENT '封面图片',
  `price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '单价',
  `stock` int(11) NOT NULL DEFAULT '0' COMMENT '库存',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='商品';

-- ----------------------------
-- Records of t_goods
-- ----------------------------
INSERT INTO `t_goods` VALUES ('1', '5千克苹果', '/profile/upload/2024/01/07/e4ef45414e1888b347dd84a3b7d03f23_20240107201506A002.jpeg', '20.00', '100');

-- ----------------------------
-- Table structure for t_help
-- ----------------------------
DROP TABLE IF EXISTS `t_help`;
CREATE TABLE `t_help` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '帮助id',
  `title` varchar(100) NOT NULL COMMENT '标题',
  `content` text CHARACTER SET utf8mb4 NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='帮助中心';

-- ----------------------------
-- Records of t_help
-- ----------------------------
INSERT INTO `t_help` VALUES ('1', '技术帮助', '<p>我在这里推荐两种方式</p><p>首先需要安装<a href=\"https://wkhtmltopdf.org/\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(78, 161, 219); background-color: transparent;\">wkhtmltopdf</a>，不同系统有不同的安装反思，同时这也是它的缺点</p><h3>第一种方式，写纯的命令，我直接贴实现代码，对原理感兴趣的自己去挖掘</h3><p>输出流工具</p><pre class=\"ql-syntax\" spellcheck=\"false\">public class HtmlToPdfInterceptor extends Thread {\n    private InputStream is;\n    \n    public HtmlToPdfInterceptor(InputStream is){\n        this.is = is;\n    }\n    \n    public void run(){\n        try{\n            InputStreamReader isr = new InputStreamReader(is, \"utf-8\");\n            BufferedReader br = new BufferedReader(isr);\n            String line = null;\n            while ((line = br.readLine()) != null) {\n                //输出内容\n                System.out.println(line.toString());\n            }\n        }catch (IOException e){\n            e.printStackTrace();\n        }\n    }\n}\n</pre><p><br></p>');

-- ----------------------------
-- Table structure for t_order
-- ----------------------------
DROP TABLE IF EXISTS `t_order`;
CREATE TABLE `t_order` (
  `id` bigint(20) NOT NULL COMMENT '订单id',
  `tracking_number` varchar(100) NOT NULL COMMENT '快递号',
  `name` varchar(255) NOT NULL COMMENT '商品名',
  `num` int(10) NOT NULL DEFAULT '1' COMMENT '数量',
  `wareouse_id` bigint(20) NOT NULL COMMENT '仓库id',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_id` bigint(20) NOT NULL COMMENT '创建者',
  `create_time` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `status` char(1) NOT NULL DEFAULT '0' COMMENT '状态：0：待入库，1：已入库，2：待支付，3：待发货，4：已发货：5：已到达',
  `warehousing_time` datetime DEFAULT NULL COMMENT '入库时间',
  `warehousing_img` varchar(500) DEFAULT NULL COMMENT '入库图片',
  `warehousing_user_id` bigint(20) DEFAULT NULL COMMENT '入库操作员',
  `container_number` varchar(100) DEFAULT NULL COMMENT '货柜号',
  `outbound_time` datetime DEFAULT NULL COMMENT '出库时间',
  `outbound_user_id` bigint(20) DEFAULT NULL COMMENT '出库操作员',
  `weight` decimal(10,0) DEFAULT NULL COMMENT '重量',
  `volume` varchar(255) DEFAULT NULL COMMENT '体积长：，宽：，高：',
  `freight_price` decimal(10,2) DEFAULT '0.00' COMMENT '运费',
  `total_price` decimal(10,2) DEFAULT '0.00' COMMENT '总价',
  `preferential_price` decimal(10,2) DEFAULT '0.00' COMMENT '优惠',
  `actual_payment` decimal(10,2) DEFAULT '0.00' COMMENT '实际付款',
  `pay_time` datetime DEFAULT NULL COMMENT '支付时间',
  `pay_type` char(1) DEFAULT '0' COMMENT '支付方式0：微信支付',
  `transaction_number` varchar(100) DEFAULT NULL COMMENT '交易号',
  `consignee` varchar(50) DEFAULT NULL COMMENT '收货人',
  `address` varchar(500) DEFAULT NULL COMMENT '收货人地址',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单';

-- ----------------------------
-- Records of t_order
-- ----------------------------
INSERT INTO `t_order` VALUES ('1677352026112', '782812413', '手镯', '5', '1', '保密发货', '106', '2024-01-18 02:10:08', '4', '2024-01-18 00:31:06', '/profile/upload/2024/01/14/d8fca299f743ab958ce6fd34524bb76d--1574323644_20240114123701A002.jpg', '2', '01-02-9875', '2024-01-21 13:57:44', '1', '10', '长:10,宽:10,高:50', '0.01', '0.01', null, null, '2024-01-18 02:10:09', '0', null, 'zhangs', 'uweirwhwejlwerwerer', '21943324384');
INSERT INTO `t_order` VALUES ('4917476730626048', '34535435', 'uwee', '1', '2', 'wer', '106', '2024-01-27 13:33:29', '0', null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', '0.00', null, '0', null, null, null, null);
INSERT INTO `t_order` VALUES ('4917996845293568', '768768', 'eirr', '5', '1', '21214', '106', '2024-01-27 13:35:33', '0', null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', '0.00', null, '0', null, null, null, null);

-- ----------------------------
-- Table structure for t_order_details
-- ----------------------------
DROP TABLE IF EXISTS `t_order_details`;
CREATE TABLE `t_order_details` (
  `order_id` bigint(20) NOT NULL COMMENT '订单id',
  `goods_id` bigint(20) NOT NULL COMMENT '商品id',
  `goods_name` varchar(255) NOT NULL COMMENT '商品名',
  `price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '单价',
  `num` int(11) NOT NULL DEFAULT '1' COMMENT '数量',
  `cover_url` varchar(500) DEFAULT NULL COMMENT '封面',
  PRIMARY KEY (`order_id`,`goods_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单详情';

-- ----------------------------
-- Records of t_order_details
-- ----------------------------

-- ----------------------------
-- Table structure for t_order_logistics
-- ----------------------------
DROP TABLE IF EXISTS `t_order_logistics`;
CREATE TABLE `t_order_logistics` (
  `oreder_id` bigint(20) NOT NULL COMMENT '订单id',
  `tracking_number` varchar(100) NOT NULL COMMENT '快递号',
  `express_company_id` bigint(20) NOT NULL COMMENT '快递公司',
  `consignee` varchar(50) NOT NULL COMMENT '收货人',
  `address` varchar(500) NOT NULL COMMENT '地址',
  `phone` varchar(11) NOT NULL COMMENT '手机号',
  `create_time` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`oreder_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单物流';

-- ----------------------------
-- Records of t_order_logistics
-- ----------------------------
INSERT INTO `t_order_logistics` VALUES ('1677352026112', '121242445556', '1', 'zhangs', 'uweirwhwejlwerwerer', '21943324384', '2024-01-21 13:57:44');

-- ----------------------------
-- Table structure for t_status_log
-- ----------------------------
DROP TABLE IF EXISTS `t_status_log`;
CREATE TABLE `t_status_log` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '状态日志id',
  `create_time` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `remark` varchar(500) NOT NULL COMMENT '备注',
  `target_id` bigint(20) NOT NULL COMMENT '目标id',
  `target_type` char(1) NOT NULL DEFAULT '0' COMMENT '目标类型0：物流更新 1：订单状态日志',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='状态日志';

-- ----------------------------
-- Records of t_status_log
-- ----------------------------
INSERT INTO `t_status_log` VALUES ('1', '2024-01-21 13:57:44', '已发货，待揽收', '1677352026112', '0');

-- ----------------------------
-- Table structure for t_tutorial
-- ----------------------------
DROP TABLE IF EXISTS `t_tutorial`;
CREATE TABLE `t_tutorial` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '教程id',
  `title` varchar(100) NOT NULL COMMENT '教程标题',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='教程中心';

-- ----------------------------
-- Records of t_tutorial
-- ----------------------------
INSERT INTO `t_tutorial` VALUES ('1', '下单教程', '<p>先注册，登录，后提交包裹</p>');

-- ----------------------------
-- Table structure for t_warehouse
-- ----------------------------
DROP TABLE IF EXISTS `t_warehouse`;
CREATE TABLE `t_warehouse` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '仓库id',
  `name` varchar(50) NOT NULL COMMENT '仓库名',
  `address` varchar(1000) NOT NULL COMMENT '地址',
  `consignee` varchar(50) NOT NULL COMMENT '收货人',
  `phone` varchar(11) NOT NULL COMMENT '手机号',
  `postal_code` varchar(50) NOT NULL COMMENT '邮编',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='仓库';

-- ----------------------------
-- Records of t_warehouse
-- ----------------------------
INSERT INTO `t_warehouse` VALUES ('1', '上海一号仓', '上海市宝山区吴华路888号', '王丽华', '18975615689', '425600');
INSERT INTO `t_warehouse` VALUES ('2', '武汉一号仓', '武汉市汉口路888号', '武松', '17819006785', '372834');
