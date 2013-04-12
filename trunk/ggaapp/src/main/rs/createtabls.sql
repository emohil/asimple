#生产单元
drop table if exists t_production_cell;
create table t_production_cell (
    id              int              AUTO_INCREMENT,
    cuser_id           int              default 0,
    cdate           datetime         default null,
    code            varchar(10)      default ''      comment '生产单元代码',
    location        varchar(100)     default ''      comment '生产单元位置',
    area            decimal(10,2)    default 0       comment '生产单元面积',
    cdate           datetime        default null   comment '建档时间',
    status          int              default 0       comment '单元状态 0:空闲,1:占用',
    auser_id
    adate
    primary key(cell_id)
);

#肥料资源
drop table if exists t_manure_resource;
create table t_manure_resource (
	resource_id          int              AUTO_INCREMENT,
	resource_name        varchar(60)      default ''      comment '资源名称',
	resource_type        int              default 0       comment '资源类型 1-品名 2-规格 3-生产批号 4-生产商 5-种类',
	primary key(resource_id)
);

#肥料库存
drop table if exists t_manure_stock;
create table t_manure_stock (
	stock_id             int              AUTO_INCREMENT,
	stock_nameid         int              default 0       comment '名称ID',
	stock_sizeid         int              default 0       comment '规格/型号ID',
	stock_batchid        int              default 0       comment '生产批号ID',
	stock_producerid     int              default 0       comment '生产厂商ID',
	stock_kindid         int              default 0       comment '所属类别ID',
	stock_quantity       decimal(10,2)    default 0       comment '库存数量',
	stock_status         int              default 0       comment '库存状态',
	primary key(stock_id)
);

#肥料入库
drop table if exists t_manure_instock;
create table t_manure_instock (
	instock_id           int              AUTO_INCREMENT,
	instock_stockid      int              default 0       comment '库存ID',
	instock_nameid       int              default 0       comment '名称ID',
	instock_sizeid       int              default 0       comment '规格/型号ID',
	instock_batchid      int              default 0       comment '生产批号ID',
	instock_producerid   int              default 0       comment '生产厂商ID',
	instock_quantity     decimal(10,2)    default 0       comment '入库数量',
	instock_status       int              default 0       comment '入库状态',
	instock_location     varchar(60)      default ''      comment '产地',
	instock_element      varchar(60)      default ''      comment '有效成分',
	instock_indate       timestamp        default now()   comment '入库时间',
	instock_kindid       int              default 0       comment '所属类别ID',
	instock_expirydate   datetime         default '19000101' comment '有效期',
	instock_vendor       varchar(60)      default ''      comment '供应商',
	instock_wrap         varchar(60)      default ''      comment '包装形式',
	instock_inmanager    varchar(36)      default ''      comment '入库人',
	instock_comment      varchar(255)     default ''      comment '备注',
	primary key(instock_id)
);

#肥料出库
drop table if exists t_manure_outstock;
create table t_manure_outstock (
	outstock_id          int              AUTO_INCREMENT,
	outstock_stockid     int              default 0       comment '库存ID',
	outstock_registerid  int              default 0       comment '注册ID',
	outstock_cellid      int              default 0       comment '生产单元ID',
	outstock_nameid      int              default 0       comment '名称ID',
	outstock_sizeid      int              default 0       comment '规格/型号ID',
	outstock_batchid     int              default 0       comment '生产批号ID',
	outstock_producerid  int              default 0       comment '生产厂商ID',
	outstock_kindid      int              default 0       comment '所属类别ID',
	outstock_quantity    decimal(10,2)    default 0       comment '出库数量',
	outstock_status      int              default 0       comment '出库状态',
	outstock_outdate     timestamp        default now()   comment '出库时间',
	outstock_outmanager  varchar(36)      default ''      comment '出库人/领用人',
	outstock_comment     varchar(255)     default ''      comment '备注',
	primary key(outstock_id)
);


#农药资源
drop table if exists t_pesticide_resource;
create table t_pesticide_resource (
	resource_id          int              AUTO_INCREMENT,
	resource_name        varchar(60)      default ''      comment '资源名称',
	resource_type        int              default 0       comment '资源类型 1-品名 2-规格 3-生产批号 4-生产商 5-种类',
	primary key(resource_id)
);

#农药库存
drop table if exists t_pesticide_stock;
create table t_pesticide_stock (
	stock_id             int              AUTO_INCREMENT,
	stock_nameid         int              default 0       comment '名称ID',
	stock_sizeid         int              default 0       comment '规格/型号ID',
	stock_batchid        int              default 0       comment '生产批号ID',
	stock_producerid     int              default 0       comment '生产厂商ID',
	stock_kindid         int              default 0       comment '所属类别ID',
	stock_quantity       decimal(10,2)    default 0       comment '库存数量',
	stock_status         int              default 0       comment '库存状态',
	primary key(stock_id)
);

#农药入库
drop table if exists t_pesticide_instock;
create table t_pesticide_instock (
	instock_id           int              AUTO_INCREMENT,
	instock_stockid      int              default 0       comment '库存ID',
	instock_nameid       int              default 0       comment '名称ID',
	instock_sizeid       int              default 0       comment '规格/型号ID',
	instock_batchid      int              default 0       comment '生产批号ID',
	instock_producerid   int              default 0       comment '生产厂商ID',
	instock_quantity     decimal(10,2)    default 0       comment '入库数量',
	instock_status       int              default 0       comment '入库状态',
	instock_location     varchar(60)      default ''      comment '产地',
	instock_element      varchar(60)      default ''      comment '有效成分',
	instock_indate       timestamp        default now()   comment '入库时间',
	instock_kindid       int              default 0       comment '所属类别ID',
	instock_expirydate   datetime         default '19000101' comment '有效期',
	instock_vendor       varchar(60)      default ''      comment '供应商',
	instock_wrap         varchar(60)      default ''      comment '包装形式',
	instock_inmanager    varchar(36)      default ''      comment '入库人',
	instock_comment      varchar(255)     default ''      comment '备注',
	primary key(instock_id)
);

#农药出库
drop table if exists t_pesticide_outstock;
create table t_pesticide_outstock (
	outstock_id          int              AUTO_INCREMENT,
	outstock_stockid     int              default 0       comment '库存ID',
	outstock_registerid  int              default 0       comment '注册ID',
	outstock_cellid      int              default 0       comment '生产单元ID',
	outstock_nameid      int              default 0       comment '名称ID',
	outstock_sizeid      int              default 0       comment '规格/型号ID',
	outstock_batchid     int              default 0       comment '生产批号ID',
	outstock_producerid  int              default 0       comment '生产厂商ID',
	outstock_kindid      int              default 0       comment '所属类别ID',
	outstock_quantity    decimal(10,2)    default 0       comment '出库数量',
	outstock_status      int              default 0       comment '出库状态',
	outstock_outdate     timestamp        default now()   comment '出库时间',
	outstock_outmanager  varchar(36)      default ''      comment '出库人/领用人',
	outstock_comment     varchar(255)     default ''      comment '备注',
	primary key(outstock_id)
);


#种植
drop table if exists t_grow_register;
create table t_grow_register (
	register_id          int              AUTO_INCREMENT,
	register_cellid      int              default 0       comment '生产单元ID',
	register_person      varchar(36)      default ''      comment '登记人',
	register_regdate     timestamp        default now()   comment '登记时间',
	register_desc        varchar(60)      default ''      comment '种植描述',
	register_status      int              default 0       comment '种植状态, 0:未审核,1:进行中,2:已完成,3:已归档',
	register_comment     varchar(255)     default ''      comment '备注',
	primary key(register_id)
);

#农事活动
drop table if exists t_grow_farm;
create table t_grow_farm (
	farm_id              int              AUTO_INCREMENT,
	farm_registerid      int              default 0       comment '种植ID',
	farm_cellid          int              default 0       comment '生产单元ID',
	farm_date            timestamp        default now()   comment '活动时间',
	farm_content         varchar(255)     default ''      comment '农事活动内容',
	farm_scope		     decimal(10,2)    default 0       comment '农事活动规模(亩）',
	farm_people          int              default 0       comment '参与人员数量',
	farm_manager         varchar(36)      default ''      comment '负责人',
	farm_comment         varchar(255)     default ''      comment '备注',
	primary key(farm_id)
);

#灌溉记录
drop table if exists t_grow_irrigate;
create table t_grow_irrigate (
	irrigate_id          int              AUTO_INCREMENT,
	irrigate_registerid  int              default 0       comment '种植ID',
	irrigate_cellid      int              default 0       comment '生产单元ID',
	irrigate_date        timestamp        default now()   comment '灌溉时间',
	irrigate_way         varchar(20)      default ''      comment '灌溉方式',
	irrigate_area        decimal(10,2)    default 0       comment '灌溉面积',
	irrigate_quantum     decimal(10,2)    default 0       comment '灌溉量',
	irrigate_manager     varchar(36)      default ''      comment '操作负责人',
	irrigate_approver    varchar(36)      default ''      comment '审核员',
	irrigate_comment     varchar(255)     default ''      comment '备注',
	primary key(irrigate_id)
);

#收割(收获)记录
drop table if exists t_grow_harvest;
create table t_grow_harvest (
	harvest_id           int              AUTO_INCREMENT,
	harvest_registerid   int              default 0       comment '种植ID',
	harvest_cellid       int              default 0       comment '生产单元ID',
	harvest_pname        varchar(60)      default ''      comment '产品名称',
	harvest_batch        int              default 0       comment '产品批次号',
	harvest_operatedate  timestamp        default now()   comment '操作时间',
	harvest_method       varchar(60)      default ''      comment '收割方法',     
	harvest_scale        varchar(20)      default ''      comment '规模',
	harvest_yield        decimal(10,2)    default 0       comment '产量',
	harvest_storage      varchar(36)      default ''      comment '存储地点',
	harvest_respmanager  varchar(36)      default ''      comment '基地负责人',
	harvest_storemanager varchar(36)      default ''      comment '操作负责人',
	harvest_comment      varchar(255)     default ''      comment '备注',
	primary key(harvest_id)
);


#产品库存
drop table if exists t_product_stock;
create table t_product_stock (
	stock_id             int              AUTO_INCREMENT,
	primary key(stock_id)
);

#产品入库
drop table if exists t_product_instock;
create table t_product_instock (
	instock_id           int              AUTO_INCREMENT,
	primary key(instock_id)
);

#产品出库
drop table if exists t_product_outstock;
create table t_product_outstock (
	outstock_id          int              AUTO_INCREMENT,
	primary key(outstock_id)
);