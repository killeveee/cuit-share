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
-- TABLE: `������` 
--

CREATE TABLE `������`(
    `�ֻ���`    VARCHAR(10)    NOT NULL,
    `��ס����`  DATE,
    `�������`  DATE,
    `�Ƶ�`      VARCHAR(64),
    `����`      VARCHAR(10),
    `������`    INT,
    PRIMARY KEY (`�ֻ���`)
)ENGINE=MYISAM
COMMENT=''
;

-- 
-- TABLE: `������¼��` 
--

CREATE TABLE `������¼��`(
    `�ֻ���`        VARCHAR(10)    NOT NULL,
    `�����ύʱ��`  DATE,
    `�ܽ��`        FLOAT(8, 0),
    `�Ƿ�֧��`      CHAR(10),
    PRIMARY KEY (`�ֻ���`)
)ENGINE=MYISAM
COMMENT=''
;

-- 
-- TABLE: `���ͱ�` 
--

CREATE TABLE `���ͱ�`(
    `���ͱ��`    INT             NOT NULL,
    `�Ƶ�����`    VARCHAR(64)     NOT NULL,
    `���`        FLOAT(10, 0),
    `¥��`        INT,
    `�Ƿ��д�`    BOOL            NOT NULL,
    `����ס����`  INT,
    `�������`    BOOL,
    `����`        FLOAT(10, 0),
    `��������`    INT,
    PRIMARY KEY (`���ͱ��`)
)ENGINE=MYISAM
COMMENT=''
;

-- 
-- TABLE: `������Ƭ��` 
--

CREATE TABLE `������Ƭ��`(
    `��Ƭ`      VARCHAR(36),
    `���ͱ��`  INT            NOT NULL
)ENGINE=MYISAM
COMMENT=''
;

-- 
-- TABLE: `�˿ͱ�` 
--

CREATE TABLE `�˿ͱ�`(
    `�ֻ���`    VARCHAR(10)    NOT NULL,
    `��¼����`  VARCHAR(10),
    `ע��ʱ��`  DATE,
    PRIMARY KEY (`�ֻ���`)
)ENGINE=MYISAM
COMMENT=''
;

-- 
-- TABLE: `�Ƶ��` 
--

CREATE TABLE `�Ƶ��`(
    `�Ƶ�����`      VARCHAR(64)    NOT NULL,
    `�ֻ���`        VARCHAR(10),
    `��ϵ��`        VARCHAR(10)    NOT NULL,
    `������ô���`  VARCHAR(36),
    `����֤��ͼƬ`  VARCHAR(10),
    `Ӫҵִ��ͼƬ`  VARCHAR(10),
    `ʡ��`          VARCHAR(10),
    `����`          VARCHAR(10),
    `����`          VARCHAR(10),
    `��ϸ��ַ`      VARCHAR(64),
    `����`          VARCHAR(10),
    `γ��`          VARCHAR(10),
    `����Ƿ�ͨ��`  BOOL,
    PRIMARY KEY (`�Ƶ�����`)
)ENGINE=MYISAM
COMMENT=''
;

-- 
-- TABLE: `��ס����Ϣ��` 
--

CREATE TABLE `��ס����Ϣ��`(
    `���֤��`  VARCHAR(20)    NOT NULL,
    `��ϵ�绰`  VARCHAR(10),
    `����`      VARCHAR(10),
    `�ֻ���`    VARCHAR(10)    NOT NULL,
    PRIMARY KEY (`���֤��`)
)ENGINE=MYISAM
COMMENT=''
;

-- 
-- TABLE: `�˵������` 
--

CREATE TABLE `�˵������`(
    `�˵�ԭ��`  TEXT,
    `�ֻ���`    VARCHAR(10)    NOT NULL,
    `�Ƶ�����`  VARCHAR(64)    NOT NULL
)ENGINE=MYISAM
COMMENT=''
;

-- 
-- TABLE: `������` 
--

ALTER TABLE `������` ADD CONSTRAINT `Ref�˿ͱ�11` 
    FOREIGN KEY (`�ֻ���`)
    REFERENCES `�˿ͱ�`(`�ֻ���`)
;


-- 
-- TABLE: `������¼��` 
--

ALTER TABLE `������¼��` ADD CONSTRAINT `Ref������14` 
    FOREIGN KEY (`�ֻ���`)
    REFERENCES `������`(`�ֻ���`)
;


-- 
-- TABLE: `���ͱ�` 
--

ALTER TABLE `���ͱ�` ADD CONSTRAINT `Ref�Ƶ��6` 
    FOREIGN KEY (`�Ƶ�����`)
    REFERENCES `�Ƶ��`(`�Ƶ�����`)
;


-- 
-- TABLE: `������Ƭ��` 
--

ALTER TABLE `������Ƭ��` ADD CONSTRAINT `Ref���ͱ�10` 
    FOREIGN KEY (`���ͱ��`)
    REFERENCES `���ͱ�`(`���ͱ��`)
;


-- 
-- TABLE: `��ס����Ϣ��` 
--

ALTER TABLE `��ס����Ϣ��` ADD CONSTRAINT `Ref������13` 
    FOREIGN KEY (`�ֻ���`)
    REFERENCES `������`(`�ֻ���`)
;


-- 
-- TABLE: `�˵������` 
--

ALTER TABLE `�˵������` ADD CONSTRAINT `Ref������15` 
    FOREIGN KEY (`�ֻ���`)
    REFERENCES `������`(`�ֻ���`)
;

ALTER TABLE `�˵������` ADD CONSTRAINT `Ref�Ƶ��16` 
    FOREIGN KEY (`�Ƶ�����`)
    REFERENCES `�Ƶ��`(`�Ƶ�����`)
;


