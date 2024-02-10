--
-- ER/Studio 8.0 SQL Code Generation
-- Company :      0
-- Project :      Model1.DM1
-- Author :       Ja1e
--
-- Date Created : Thursday, December 08, 2022 11:27:29
-- Target DBMS : MySQL 5.x
--

-- 
-- TABLE: `订单表` 
--

CREATE TABLE `订单表`(
    `手机号`    VARCHAR(10)    NOT NULL,
    `入住日期`  DATE,
    `离店日期`  DATE,
    `酒店`      VARCHAR(64),
    `房型`      VARCHAR(10),
    `房间数`    INT,
    PRIMARY KEY (`手机号`)
)ENGINE=MYISAM
COMMENT=''
;

-- 
-- TABLE: `订单记录表` 
--

CREATE TABLE `订单记录表`(
    `手机号`        VARCHAR(10)    NOT NULL,
    `订单提交时间`  DATE,
    `总金额`        FLOAT(8, 0),
    `是否支付`      CHAR(10),
    PRIMARY KEY (`手机号`)
)ENGINE=MYISAM
COMMENT=''
;

-- 
-- TABLE: `房型表` 
--

CREATE TABLE `房型表`(
    `房型编号`    INT             NOT NULL,
    `酒店名称`    VARCHAR(64)     NOT NULL,
    `面积`        FLOAT(10, 0),
    `楼层`        INT,
    `是否有窗`    BOOL            NOT NULL,
    `可入住人数`  INT,
    `有无早餐`    BOOL,
    `报价`        FLOAT(10, 0),
    `房间数量`    INT,
    PRIMARY KEY (`房型编号`)
)ENGINE=MYISAM
COMMENT=''
;

-- 
-- TABLE: `房型照片表` 
--

CREATE TABLE `房型照片表`(
    `照片`      VARCHAR(36),
    `房型编号`  INT            NOT NULL
)ENGINE=MYISAM
COMMENT=''
;

-- 
-- TABLE: `顾客表` 
--

CREATE TABLE `顾客表`(
    `手机号`    VARCHAR(10)    NOT NULL,
    `登录密码`  VARCHAR(10),
    `注册时间`  DATE,
    PRIMARY KEY (`手机号`)
)ENGINE=MYISAM
COMMENT=''
;

-- 
-- TABLE: `酒店表` 
--

CREATE TABLE `酒店表`(
    `酒店名称`      VARCHAR(64)    NOT NULL,
    `手机号`        VARCHAR(10),
    `联系人`        VARCHAR(10)    NOT NULL,
    `社会信用代码`  VARCHAR(36),
    `法人证书图片`  VARCHAR(10),
    `营业执照图片`  VARCHAR(10),
    `省份`          VARCHAR(10),
    `城市`          VARCHAR(10),
    `区县`          VARCHAR(10),
    `详细地址`      VARCHAR(64),
    `经度`          VARCHAR(10),
    `纬度`          VARCHAR(10),
    `审核是否通过`  BOOL,
    PRIMARY KEY (`酒店名称`)
)ENGINE=MYISAM
COMMENT=''
;

-- 
-- TABLE: `入住人信息表` 
--

CREATE TABLE `入住人信息表`(
    `身份证号`  VARCHAR(20)    NOT NULL,
    `联系电话`  VARCHAR(10),
    `姓名`      VARCHAR(10),
    `手机号`    VARCHAR(10)    NOT NULL,
    PRIMARY KEY (`身份证号`)
)ENGINE=MYISAM
COMMENT=''
;

-- 
-- TABLE: `退单申请表` 
--

CREATE TABLE `退单申请表`(
    `退单原因`  TEXT,
    `手机号`    VARCHAR(10)    NOT NULL,
    `酒店名称`  VARCHAR(64)    NOT NULL
)ENGINE=MYISAM
COMMENT=''
;

-- 
-- TABLE: `订单表` 
--

ALTER TABLE `订单表` ADD CONSTRAINT `Ref顾客表11` 
    FOREIGN KEY (`手机号`)
    REFERENCES `顾客表`(`手机号`)
;


-- 
-- TABLE: `订单记录表` 
--

ALTER TABLE `订单记录表` ADD CONSTRAINT `Ref订单表14` 
    FOREIGN KEY (`手机号`)
    REFERENCES `订单表`(`手机号`)
;


-- 
-- TABLE: `房型表` 
--

ALTER TABLE `房型表` ADD CONSTRAINT `Ref酒店表6` 
    FOREIGN KEY (`酒店名称`)
    REFERENCES `酒店表`(`酒店名称`)
;


-- 
-- TABLE: `房型照片表` 
--

ALTER TABLE `房型照片表` ADD CONSTRAINT `Ref房型表10` 
    FOREIGN KEY (`房型编号`)
    REFERENCES `房型表`(`房型编号`)
;


-- 
-- TABLE: `入住人信息表` 
--

ALTER TABLE `入住人信息表` ADD CONSTRAINT `Ref订单表13` 
    FOREIGN KEY (`手机号`)
    REFERENCES `订单表`(`手机号`)
;


-- 
-- TABLE: `退单申请表` 
--

ALTER TABLE `退单申请表` ADD CONSTRAINT `Ref订单表15` 
    FOREIGN KEY (`手机号`)
    REFERENCES `订单表`(`手机号`)
;

ALTER TABLE `退单申请表` ADD CONSTRAINT `Ref酒店表16` 
    FOREIGN KEY (`酒店名称`)
    REFERENCES `酒店表`(`酒店名称`)
;


