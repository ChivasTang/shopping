DROP DATABASE IF EXISTS shopping;
CREATE DATABASE IF NOT EXISTS shopping DEFAULT CHARSET utf8 COLLATE utf8_general_ci;
SET FOREIGN_KEY_CHECKS = 0;
USE shopping;

-- ----------------------------
-- Table structure for m_category
-- 0. 大分類
-- ----------------------------
DROP TABLE IF EXISTS `m_category`;
CREATE TABLE `m_category`
(
    `CATEGORY_ID`   BIGINT      NOT NULL AUTO_INCREMENT COMMENT '販売店が属する大分類唯一区分',
    `CATEGORY_NAME` VARCHAR(50) NOT NULL DEFAULT '大分類' COMMENT '大分類名称',
    `ADD_USER`      VARCHAR(50) NOT NULL DEFAULT '大分類' COMMENT 'ADD_USER',
    `ADD_DATE`      TIMESTAMP   NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '作成タイムスタンプ',
    `UP_USER`       VARCHAR(50) NOT NULL DEFAULT '大分類' COMMENT 'ADD_USER',
    `UP_DATE`       TIMESTAMP   NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新タイムスタンプ',
    `DEL_KBN`       TINYINT(1)  NOT NULL DEFAULT 0 COMMENT '削除フラグ',
    PRIMARY KEY (`CATEGORY_ID`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 1
  DEFAULT CHARSET = utf8 COMMENT '0. 大分類';


-- ----------------------------
-- Table structure for m_shop
-- 1. 販売店（大分類、販売店ID、販売店）
-- ----------------------------
DROP TABLE IF EXISTS `m_shop`;
CREATE TABLE `m_shop`
(
    `SHOP_ID`     BIGINT      NOT NULL AUTO_INCREMENT COMMENT '販売店唯一区分',
    `CATEGORY_ID` BIGINT      NOT NULL DEFAULT 1 COMMENT '販売店が属する大分類唯一区分',
    `SHOP_NAME`   VARCHAR(50) NOT NULL DEFAULT '販売店' COMMENT '販売店名称',
    `ADD_USER`    VARCHAR(50) NOT NULL DEFAULT '販売店' COMMENT 'ADD_USER',
    `ADD_DATE`    TIMESTAMP   NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '作成タイムスタンプ',
    `UP_USER`     VARCHAR(50) NOT NULL DEFAULT '販売店' COMMENT 'ADD_USER',
    `UP_DATE`     TIMESTAMP   NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新タイムスタンプ',
    `DEL_KBN`     TINYINT(1)  NOT NULL DEFAULT 0 COMMENT '削除フラグ',
    PRIMARY KEY (`SHOP_ID`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 1
  DEFAULT CHARSET = utf8 COMMENT '1. 販売店（大分類、販売店ID、販売店）';

-- ----------------------------
-- Table structure for m_good
-- 2.1 商品（ID、商品名、価格、登録日、商品種別1、商品種別2、国、地域、備考）
-- ----------------------------
DROP TABLE IF EXISTS `m_good`;
CREATE TABLE `m_good`
(
    `GOOD_ID`      BIGINT      NOT NULL AUTO_INCREMENT COMMENT '商品唯一区分',
    `SHOP_ID`      BIGINT      NOT NULL DEFAULT 1 COMMENT '販売店唯一区分',
    `GOOD_NAME`    VARCHAR(50) NOT NULL DEFAULT '商品' COMMENT '商品名称',
    `PRICE`        BIGINT      NOT NULL DEFAULT 100000 COMMENT '価格',
    `MODEL_TYPE_1` BIGINT      NOT NULL DEFAULT 1 COMMENT '商品種別1',
    `MODEL_TYPE_2` BIGINT      NOT NULL DEFAULT 2 COMMENT '商品種別2',
    `ORIGIN_ID`    BIGINT      NOT NULL DEFAULT 1 COMMENT '地域唯一区分',
    `NOTE`         TEXT                 DEFAULT NULL COMMENT '備考',
    `ADD_USER`     VARCHAR(50) NOT NULL DEFAULT '商品' COMMENT 'ADD_USER',
    `ADD_DATE`     TIMESTAMP   NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '作成タイムスタンプ',
    `UP_USER`      VARCHAR(50) NOT NULL DEFAULT '商品' COMMENT 'ADD_USER',
    `UP_DATE`      TIMESTAMP   NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新タイムスタンプ',
    `DEL_KBN`      TINYINT(1)  NOT NULL DEFAULT 0 COMMENT '削除フラグ',
    PRIMARY KEY (`GOOD_ID`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 1
  DEFAULT CHARSET = utf8 COMMENT '2.1 商品（ID、商品名、価格、登録日、商品種別1、商品種別2、国、地域、備考）';

-- ----------------------------
-- Table structure for t_model_picture
-- 2.2 商品写真（ID、商品ID、写真説明、パス）
-- ----------------------------
DROP TABLE IF EXISTS `t_model_picture`;
CREATE TABLE `t_model_picture`
(
    `PICTURE_ID`   BIGINT       NOT NULL AUTO_INCREMENT COMMENT '商品種別写真の唯一区分',
    `GOOD_ID`      BIGINT       NOT NULL DEFAULT 1 COMMENT '商品唯一区分',
    `TITLE`        VARCHAR(50)  NOT NULL DEFAULT '写真タイトル' COMMENT '写真タイトル',
    `DESCRIPTION`  TEXT                  DEFAULT NULL COMMENT '写真説明文',
    `PICTURE_DEST` VARCHAR(255) NOT NULL DEFAULT '写真' COMMENT '写真パス',
    `ADD_USER`     VARCHAR(50)  NOT NULL DEFAULT '写真' COMMENT 'ADD_USER',
    `ADD_DATE`     TIMESTAMP    NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '作成タイムスタンプ',
    `UP_USER`      VARCHAR(50)  NOT NULL DEFAULT '写真' COMMENT 'ADD_USER',
    `UP_DATE`      TIMESTAMP    NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新タイムスタンプ',
    `DEL_KBN`      TINYINT(1)   NOT NULL DEFAULT '0' COMMENT '削除フラグ',
    PRIMARY KEY (`PICTURE_ID`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 1
  DEFAULT CHARSET = utf8 COMMENT '2.2 商品写真（ID、商品ID、写真説明、パス）';



-- ----------------------------
-- Table structure for t_shop_good
-- 3. 取扱販売店（商品ID、販売店ID）
-- ----------------------------
DROP TABLE IF EXISTS `t_shop_good`;
CREATE TABLE `t_shop_good`
(
    `SHOP_ID`  BIGINT      NOT NULL DEFAULT 1 COMMENT '販売店唯一区分',
    `GOOD_ID`  BIGINT      NOT NULL DEFAULT 1 COMMENT '商品唯一区分',
    `ADD_USER` VARCHAR(50) NOT NULL DEFAULT 'shop_good' COMMENT 'ADD_USER',
    `ADD_DATE` TIMESTAMP   NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '作成タイムスタンプ',
    `UP_USER`  VARCHAR(50) NOT NULL DEFAULT 'shop_good' COMMENT 'ADD_USER',
    `UP_DATE`  TIMESTAMP   NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新タイムスタンプ',
    `DEL_KBN`  TINYINT(1)  NOT NULL DEFAULT '0' COMMENT '削除フラグ',
    PRIMARY KEY (`SHOP_ID`, `GOOD_ID`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8 COMMENT '3. 取扱販売店（商品ID、販売店ID）';


-- ----------------------------
-- Table structure for m_country
-- 4. 地域（国、地域）・・・国と地域を分けても良い　＊変更はほとんどないのでのでtableへの直接登録でOK
-- ----------------------------
DROP TABLE IF EXISTS `m_country`;
CREATE TABLE `m_country`
(
    `COUNTRY_ID`   BIGINT      NOT NULL AUTO_INCREMENT COMMENT '国家唯一区分',
    `COUNTRY_NAME` VARCHAR(50) NOT NULL DEFAULT '国家' COMMENT '国家名称',
    `ADD_USER`     VARCHAR(50) NOT NULL DEFAULT '国家' COMMENT 'ADD_USER',
    `ADD_DATE`     TIMESTAMP   NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '作成タイムスタンプ',
    `UP_USER`      VARCHAR(50) NOT NULL DEFAULT '国家' COMMENT 'ADD_USER',
    `UP_DATE`      TIMESTAMP   NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新タイムスタンプ',
    `DEL_KBN`      TINYINT(1)  NOT NULL DEFAULT 0 COMMENT '削除フラグ',
    PRIMARY KEY (`COUNTRY_ID`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 1
  DEFAULT CHARSET = utf8 COMMENT '4. 地域（国、地域）・・・国と地域を分けても良い　＊変更はほとんどないのでのでtableへの直接登録でOK';

-- ----------------------------
-- Table structure for m_origin
-- 5. 地域（国、地域）・・・国と地域を分けても良い　＊変更はほとんどないのでのでtableへの直接登録でOK
-- ----------------------------
DROP TABLE IF EXISTS `m_origin`;
CREATE TABLE `m_origin`
(
    `ORIGIN_ID`   BIGINT      NOT NULL AUTO_INCREMENT COMMENT '地域唯一区分',
    `COUNTRY_ID`  BIGINT      NOT NULL DEFAULT 1 COMMENT '国家唯一区分',
    `ORIGIN_NAME` VARCHAR(50) NOT NULL DEFAULT '地域' COMMENT '地域名称',
    `ADD_USER`    VARCHAR(50) NOT NULL DEFAULT '地域' COMMENT 'ADD_USER',
    `ADD_DATE`    TIMESTAMP   NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '作成タイムスタンプ',
    `UP_USER`     VARCHAR(50) NOT NULL DEFAULT '地域' COMMENT 'ADD_USER',
    `UP_DATE`     TIMESTAMP   NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新タイムスタンプ',
    `DEL_KBN`     TINYINT(1)  NOT NULL DEFAULT 0 COMMENT '削除フラグ',
    PRIMARY KEY (`ORIGIN_ID`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 1
  DEFAULT CHARSET = utf8 COMMENT '5. 地域（国、地域）・・・国と地域を分けても良い　＊変更はほとんどないのでのでtableへの直接登録でOK';

-- ----------------------------
-- Table structure for m_model
-- 6. 商品種別・・・入力補助マスタ　＊変更はほとんどないのでのでtableへの直接登録でOK
-- ----------------------------
DROP TABLE IF EXISTS `m_model`;
CREATE TABLE `m_model`
(
    `MODEL_ID`   BIGINT      NOT NULL AUTO_INCREMENT COMMENT '商品種別唯一区分',
    `MODEL_NAME` VARCHAR(50) NOT NULL DEFAULT '商品種別' COMMENT '商品種別名称',
    `ADD_USER`   VARCHAR(50) NOT NULL DEFAULT '商品種別' COMMENT 'ADD_USER',
    `ADD_DATE`   TIMESTAMP   NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '作成タイムスタンプ',
    `UP_USER`    VARCHAR(50) NOT NULL DEFAULT '商品種別' COMMENT 'ADD_USER',
    `UP_DATE`    TIMESTAMP   NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新タイムスタンプ',
    `DEL_KBN`    TINYINT(1)  NOT NULL DEFAULT 0 COMMENT '削除フラグ',
    PRIMARY KEY (`MODEL_ID`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 1
  DEFAULT CHARSET = utf8 COMMENT '6. 商品種別・・・入力補助マスタ　＊変更はほとんどないのでのでtableへの直接登録でOK';

-- ----------------------------
-- Table structure for m_reviewer
-- 7. 評価者（ID、氏名(愛称)、性別、年齢(年代)、他2つ程度）
-- ----------------------------
DROP TABLE IF EXISTS `m_reviewer`;
CREATE TABLE `m_reviewer`
(
    `REVIEWER_ID`   BIGINT      NOT NULL AUTO_INCREMENT COMMENT '評価者唯一区分',
    `REVIEWER_NAME` VARCHAR(50) NOT NULL DEFAULT '商品種別' COMMENT '評価者の愛称',
    `GENDER`        TINYINT(1)  NOT NULL DEFAULT 0 COMMENT '性別',
    `BIRTHDAY`      DATE        NOT NULL DEFAULT '2000/05/01' COMMENT '生年月日',
    `ADD_USER`      VARCHAR(50) NOT NULL DEFAULT '商品種別' COMMENT 'ADD_USER',
    `ADD_DATE`      TIMESTAMP   NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '作成タイムスタンプ',
    `UP_USER`       VARCHAR(50) NOT NULL DEFAULT '商品種別' COMMENT 'ADD_USER',
    `UP_DATE`       TIMESTAMP   NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新タイムスタンプ',
    `DEL_KBN`       TINYINT(1)  NOT NULL DEFAULT 0 COMMENT '削除フラグ',
    PRIMARY KEY (`REVIEWER_ID`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 1
  DEFAULT CHARSET = utf8 COMMENT '7. 評価者（ID、氏名(愛称)、性別、年齢(年代)、他2つ程度）';

-- ----------------------------
-- Table structure for t_reviews
-- 8. 評価（評価者ID、商品ID、評価項目1、評価項目2、評価項目3、評価項目4、評価項目5、コメント）
-- ----------------------------
DROP TABLE IF EXISTS `t_review`;
CREATE TABLE `t_review`
(
    `REVIEWER_ID`    BIGINT      NOT NULL DEFAULT 1 COMMENT '評価者唯一区分',
    `GOOD_ID`        BIGINT      NOT NULL DEFAULT 1 COMMENT '商品唯一区分',
    `REVIEW_SCORE_1` TINYINT(4)  NOT NULL DEFAULT 5 COMMENT '評価項目1',
    `REVIEW_SCORE_2` TINYINT(4)  NOT NULL DEFAULT 5 COMMENT '評価項目2',
    `REVIEW_SCORE_3` TINYINT(4)  NOT NULL DEFAULT 5 COMMENT '評価項目3',
    `REVIEW_SCORE_4` TINYINT(4)  NOT NULL DEFAULT 5 COMMENT '評価項目4',
    `REVIEW_SCORE_5` TINYINT(4)  NOT NULL DEFAULT 5 COMMENT '評価項目5',
    `COMMENT`        TEXT                 DEFAULT NULL COMMENT '評価コメント',
    `ADD_USER`       VARCHAR(50) NOT NULL DEFAULT '評価' COMMENT 'ADD_USER',
    `ADD_DATE`       TIMESTAMP   NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '作成タイムスタンプ',
    `UP_USER`        VARCHAR(50) NOT NULL DEFAULT '評価' COMMENT 'ADD_USER',
    `UP_DATE`        TIMESTAMP   NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新タイムスタンプ',
    `DEL_KBN`        TINYINT(1)  NOT NULL DEFAULT 0 COMMENT '削除フラグ',
    PRIMARY KEY (`REVIEWER_ID`, `GOOD_ID`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8 COMMENT '8. 評価（評価者ID、商品ID、評価項目1、評価項目2、評価項目3、評価項目4、評価項目5、コメント）';


