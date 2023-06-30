/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80030 (8.0.30)
 Source Host           : localhost:3306
 Source Schema         : yii2advanced

 Target Server Type    : MySQL
 Target Server Version : 80030 (8.0.30)
 File Encoding         : 65001

 Date: 30/06/2023 21:48:15
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for customers
-- ----------------------------
DROP TABLE IF EXISTS `customers`;
CREATE TABLE `customers`  (
  `customer_id` int NOT NULL,
  `customer_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`customer_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of customers
-- ----------------------------
INSERT INTO `customers` VALUES (1484217300, 'มหาวิทยาลัยราชภัฏสุราษฏร์ธานี');

-- ----------------------------
-- Table structure for egp_rss
-- ----------------------------
DROP TABLE IF EXISTS `egp_rss`;
CREATE TABLE `egp_rss`  (
  `egp_rss_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `pubdate` date NOT NULL,
  `pubtype` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `customer_id` int NOT NULL,
  PRIMARY KEY (`egp_rss_id`) USING BTREE,
  INDEX `customer_id`(`customer_id` ASC) USING BTREE,
  CONSTRAINT `egp_rss_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of egp_rss
-- ----------------------------
INSERT INTO `egp_rss` VALUES (1, 'จ้างจัดทำป้ายไวนิลเพื่อประชาสัมพันธ์งานจราจรและการรักษาความปลอดภัย จำนวน ๓ รายการ โดยวิธีเฉพาะเจาะจง', 'http://process3.gprocurement.go.th/egp2procmainWeb/jsp/procsearch.sch?servlet=gojsp&proc_id=ShowHTMLFile&processFlows=Procure&projectId=66037480710&templateType=W2&temp_Announ=A&temp_itemNo=0&seqNo=1', '2023-03-24', '1', 1484217300);
INSERT INTO `egp_rss` VALUES (2, 'ซื้อวัสดุภัณฑ์ทางเคมีประจำสระว่ายน้ำ โดยวิธีเฉพาะเจาะจง', 'http://process3.gprocurement.go.th/egp2procmainWeb/jsp/procsearch.sch?servlet=gojsp&proc_id=ShowHTMLFile&processFlows=Procure&projectId=66037502604&templateType=W2&temp_Announ=A&temp_itemNo=0&seqNo=1', '2023-03-24', '1', 1484217300);
INSERT INTO `egp_rss` VALUES (3, 'จ้างซ่อมแซมสุขภัณฑ์ห้องน้ำคณะมนุษยศาสตร์และสังคมศาสตร์ โดยวิธีเฉพาะเจาะจง', 'http://process3.gprocurement.go.th/egp2procmainWeb/jsp/procsearch.sch?servlet=gojsp&proc_id=ShowHTMLFile&processFlows=Procure&projectId=66037118339&templateType=W2&temp_Announ=A&temp_itemNo=0&seqNo=3', '2023-03-24', '1', 1484217300);
INSERT INTO `egp_rss` VALUES (4, 'จ้างซ่อมแซมเครื่องปรับอากาศโครงการจัดตั้งกองบริการวิชาการพัฒนาท้องถิ่น จำนวน ๑ งาน โดยวิธีเฉพาะเจาะจง', 'http://process3.gprocurement.go.th/egp2procmainWeb/jsp/procsearch.sch?servlet=gojsp&proc_id=ShowHTMLFile&processFlows=Procure&projectId=66037457397&templateType=W2&temp_Announ=A&temp_itemNo=0&seqNo=1', '2023-03-23', '1', 1484217300);
INSERT INTO `egp_rss` VALUES (5, 'จ้างเหมาบันทึกวิดีโอและถ่ายทอดสดในพิธีรับมอบใบรับรองคุณวุฒิสำหรับผู้สำเร็จการศึกษาหลักสูตรพยาบาลศาสตรบัณฑิต รุ่นที่ 12 จำนวน 1 งาน โดยวิธีเฉพาะเจาะจง', 'http://process3.gprocurement.go.th/egp2procmainWeb/jsp/procsearch.sch?servlet=gojsp&proc_id=ShowHTMLFile&processFlows=Procure&projectId=66037480011&templateType=W2&temp_Announ=A&temp_itemNo=0&seqNo=1', '2023-03-23', '1', 1484217300);
INSERT INTO `egp_rss` VALUES (6, 'ซื้อกล่องกระดาษสำหรับบรรจุน้ำดื่มแบบแก้ว ๒๒๐ มิลลิลิตร จำนวน ๑ รายการ โดยวิธีเฉพาะเจาะจง', 'http://process3.gprocurement.go.th/egp2procmainWeb/jsp/procsearch.sch?servlet=gojsp&proc_id=ShowHTMLFile&processFlows=Procure&projectId=66037463240&templateType=W2&temp_Announ=A&temp_itemNo=0&seqNo=1', '2023-03-23', '1', 1484217300);
INSERT INTO `egp_rss` VALUES (7, 'ซื้อวัสดุสำหรับใช้งานประกอบการดำเนินงานทำความสะอาดของมหาวิทยาลัย (สำนักจัดการทรัพย์สิน) จำนวน ๓ รายการ โดยวิธีเฉพาะเจาะจง', 'http://process3.gprocurement.go.th/egp2procmainWeb/jsp/procsearch.sch?servlet=gojsp&proc_id=ShowHTMLFile&processFlows=Procure&projectId=66037476276&templateType=W2&temp_Announ=A&temp_itemNo=0&seqNo=1', '2023-03-23', '1', 1484217300);
INSERT INTO `egp_rss` VALUES (8, 'ซื้อวัสดุสำหรับสนับสนุนการเรียนการสอนคณะมนุษยศาสตร์และสังคมศาสตร์ โดยวิธีเฉพาะเจาะจง', 'http://process3.gprocurement.go.th/egp2procmainWeb/jsp/procsearch.sch?servlet=gojsp&proc_id=ShowHTMLFile&processFlows=Procure&projectId=66037472540&templateType=W2&temp_Announ=A&temp_itemNo=0&seqNo=1', '2023-03-23', '1', 1484217300);
INSERT INTO `egp_rss` VALUES (9, 'ซื้อวัสดุอุปกรณ์ชุดกรองน้ำหมึกพิมพ์วันที่ จำนวน ๑ รายการ โดยวิธีเฉพาะเจาะจง', 'http://process3.gprocurement.go.th/egp2procmainWeb/jsp/procsearch.sch?servlet=gojsp&proc_id=ShowHTMLFile&processFlows=Procure&projectId=66037471481&templateType=W2&temp_Announ=A&temp_itemNo=0&seqNo=1', '2023-03-23', '1', 1484217300);
INSERT INTO `egp_rss` VALUES (10, 'ซื้อหนังสือสำหรับการจัดการเรียนการสอนนักศึกษานิติศาสตร์ ภาคบัณฑิต รุ่นที่ ๑๑,๑๓-๑๔ จำนวน ๑ รายการ โดยวิธีเฉพาะเจาะจง', 'http://process3.gprocurement.go.th/egp2procmainWeb/jsp/procsearch.sch?servlet=gojsp&proc_id=ShowHTMLFile&processFlows=Procure&projectId=66037453326&templateType=W2&temp_Announ=A&temp_itemNo=0&seqNo=1', '2023-03-23', '1', 1484217300);
INSERT INTO `egp_rss` VALUES (11, 'ซื้อหมึกพิมพ์คณะนิติศาสตร์ จำนวน ๑ รายการ โดยวิธีเฉพาะเจาะจง', 'http://process3.gprocurement.go.th/egp2procmainWeb/jsp/procsearch.sch?servlet=gojsp&proc_id=ShowHTMLFile&processFlows=Procure&projectId=66037461817&templateType=W2&temp_Announ=A&temp_itemNo=0&seqNo=1', '2023-03-23', '1', 1484217300);
INSERT INTO `egp_rss` VALUES (12, 'จ้างจ้างเหมาบริการรถยนต์(ตู้)ปรับอากาศพร้อมคนขับน้ำมันเชื้อเพลิงโครงการนิเทศนักศึกษาฝึกประสบการณ์วิชาชีพ ปี2565จำนวน 5 วัน โดยวิธีเฉพาะเจาะจง', 'http://process3.gprocurement.go.th/egp2procmainWeb/jsp/procsearch.sch?servlet=gojsp&proc_id=ShowHTMLFile&processFlows=Procure&projectId=66037422522&templateType=W2&temp_Announ=A&temp_itemNo=0&seqNo=1', '2023-03-22', '1', 1484217300);
INSERT INTO `egp_rss` VALUES (13, 'จ้างแต่งหน้านักแสดง โดยวิธีเฉพาะเจาะจง', 'http://process3.gprocurement.go.th/egp2procmainWeb/jsp/procsearch.sch?servlet=gojsp&proc_id=ShowHTMLFile&processFlows=Procure&projectId=66037199132&templateType=W2&temp_Announ=A&temp_itemNo=0&seqNo=1', '2023-03-22', '1', 1484217300);
INSERT INTO `egp_rss` VALUES (14, 'จ้างปรับปรุงพื้นรั่วซึมบริเวณดาดฟ้า จำนวน ๑ งาน โดยวิธีเฉพาะเจาะจง', 'http://process3.gprocurement.go.th/egp2procmainWeb/jsp/procsearch.sch?servlet=gojsp&proc_id=ShowHTMLFile&processFlows=Procure&projectId=66037417846&templateType=W2&temp_Announ=A&temp_itemNo=0&seqNo=1', '2023-03-22', '1', 1484217300);
INSERT INTO `egp_rss` VALUES (15, 'จ้างไวนิลประชาสัมพันธ์รับสมัครนักศึกษาระดับบัณฑิตศึกษา ปีการศึกษา 2566 โดยวิธีเฉพาะเจาะจง', 'http://process3.gprocurement.go.th/egp2procmainWeb/jsp/procsearch.sch?servlet=gojsp&proc_id=ShowHTMLFile&processFlows=Procure&projectId=66037421067&templateType=W2&temp_Announ=A&temp_itemNo=0&seqNo=1', '2023-03-22', '1', 1484217300);
INSERT INTO `egp_rss` VALUES (16, 'เช่าเครื่องแต่งกายสำหรับการแสดง โดยวิธีเฉพาะเจาะจง', 'http://process3.gprocurement.go.th/egp2procmainWeb/jsp/procsearch.sch?servlet=gojsp&proc_id=ShowHTMLFile&processFlows=Procure&projectId=66037199035&templateType=W2&temp_Announ=A&temp_itemNo=0&seqNo=1', '2023-03-22', '1', 1484217300);
INSERT INTO `egp_rss` VALUES (17, 'ซื้อถังน้ำดื่มพร้อมฝาถังพร้อมสกรีนSRUประจำวิทยาลัยนานาชาติการท่องเที่ยวอำเภอเกาะสมุย โดยวิธีเฉพาะเจาะจง', 'http://process3.gprocurement.go.th/egp2procmainWeb/jsp/procsearch.sch?servlet=gojsp&proc_id=ShowHTMLFile&processFlows=Procure&projectId=66037439407&templateType=W2&temp_Announ=A&temp_itemNo=0&seqNo=1', '2023-03-22', '1', 1484217300);
INSERT INTO `egp_rss` VALUES (18, 'ซื้อยางรถบัสพร้อมตั้งศูนย์ถ่วงล้อ หมายเลขทะเบียน 40-0156 สุราษฎร์ธานี จำนวน 2 เส้น โดยวิธีเฉพาะเจาะจง', 'http://process3.gprocurement.go.th/egp2procmainWeb/jsp/procsearch.sch?servlet=gojsp&proc_id=ShowHTMLFile&processFlows=Procure&projectId=66037435978&templateType=W2&temp_Announ=A&temp_itemNo=0&seqNo=1', '2023-03-22', '1', 1484217300);
INSERT INTO `egp_rss` VALUES (19, 'ซื้อวัสดุคอมพิวเตอร์ กิจกรรมปรับปรุงหลักสูตรครุศาสตรบัณฑิตฉบับปรับปรุง พ.ศ. ๒๕๖๗ (ระยะที่ ๑) จำนวน ๑ งาน โดยวิธีเฉพาะเจาะจง', 'http://process3.gprocurement.go.th/egp2procmainWeb/jsp/procsearch.sch?servlet=gojsp&proc_id=ShowHTMLFile&processFlows=Procure&projectId=66037422258&templateType=W2&temp_Announ=A&temp_itemNo=0&seqNo=1', '2023-03-22', '1', 1484217300);
INSERT INTO `egp_rss` VALUES (20, 'ซื้อวัสดุสนับสนุนการศึกษาสาขาวิชาคณิตศาสตร์ จำนวน ๑ งาน โดยวิธีเฉพาะเจาะจง', 'http://process3.gprocurement.go.th/egp2procmainWeb/jsp/procsearch.sch?servlet=gojsp&proc_id=ShowHTMLFile&processFlows=Procure&projectId=66037441132&templateType=W2&temp_Announ=A&temp_itemNo=0&seqNo=1', '2023-03-22', '1', 1484217300);
INSERT INTO `egp_rss` VALUES (21, 'ประกวดราคาซื้อครุภัณฑ์การฝึกปฏิบัติการเรียนรู้การช่วยชีวิต การดูแลภาวะฉุกเฉิน และสาธารณภัยคุกคามของชีวิต ตำบลขุนทะเล อำเภอเมืองสุราษฎร์ธานี จังหวัดสุราษฎร์ธานี ๑ ชุด ด้วยวิธีประกวดราคาอิเล็กทรอนิกส์ (e-bidding)', 'http://process3.gprocurement.go.th/egp2procmainWeb/FPRO9951BServlet?projectId=66037293062&itemNo=0&fileName=66037293062_25660320150902_2.zip', '2023-03-20', '9', 1484217300);
INSERT INTO `egp_rss` VALUES (22, 'ประกวดราคาซื้อเครื่องกระตุ้นหัวใจด้วยไฟฟ้าแบบอัตโนมัติ ตำบลขุนทะเล อำเภอเมืองสุราษฎร์ธานี จังหวัดสุราษฎร์ธานี ๓๐ ชุด ด้วยวิธีประกวดราคาอิเล็กทรอนิกส์ (e-bidding)', 'http://process3.gprocurement.go.th/egp2procmainWeb/FPRO9951BServlet?projectId=66037288811&itemNo=0&fileName=66037288811_25660320150749_2.zip', '2023-03-20', '9', 1484217300);
INSERT INTO `egp_rss` VALUES (23, 'ประกวดราคาจ้างก่อสร้างปรับปรุงโรงเรียนสาธิตแห่งมหาวิทยาลัยราชภัฏสุราษฎร์ธานี 1 รายการ ด้วยวิธีประกวดราคาอิเล็กทรอนิกส์ (e-bidding)', 'http://process3.gprocurement.go.th/egp2procmainWeb/jsp/procsearch.sch?servlet=gojsp&proc_id=ShowHTMLFile&processFlows=Procure&projectId=66037154911&templateType=D2&temp_Announ=A&temp_itemNo=0&seqNo=0', '2023-03-23', '5', 1484217300);
INSERT INTO `egp_rss` VALUES (24, 'ประกวดราคาซื้อชุดปฏิบัติการศูนย์การเรียนรู้และพัฒนาทักษะสะเต็มศึกษาด้านเทคโนโลยีหุ่นยนต์ขั้นพื้นฐาน ตำบลขุนทะเล อำเภอเมืองสุราษฎร์ธานี จังหวัดสุราษฎร์ธานี ๑ ชุด ด้วยวิธีประกวดราคาอิเล็กทรอนิกส์ (e-bidding)', 'http://process3.gprocurement.go.th/egp2procmainWeb/jsp/procsearch.sch?servlet=gojsp&proc_id=ShowHTMLFile&processFlows=Procure&projectId=66027466562&templateType=D2&temp_Announ=A&temp_itemNo=0&seqNo=0', '2023-03-22', '5', 1484217300);
INSERT INTO `egp_rss` VALUES (25, 'ครุภัณฑ์การศึกษา จำนวน ๒ รายการ', 'http://process3.gprocurement.go.th/egp2procmainWeb/jsp/procsearch.sch?servlet=gojsp&proc_id=ShowHTMLFile&processFlows=Procure&projectId=M66030016395&templateType=P0&temp_Announ=P&temp_itemNo=&seqNo=', '2023-03-22', '3', 1484217300);
INSERT INTO `egp_rss` VALUES (26, 'จ้างซ่อมแซมสุขภัณฑ์ห้องน้ำคณะมนุษยศาสตร์และสังคมศาสตร์ โดยวิธีเฉพาะเจาะจง', 'http://process3.gprocurement.go.th/egp2procmainWeb/jsp/procsearch.sch?servlet=gojsp&proc_id=ShowHTMLFile&processFlows=Procure&projectId=66037118339&templateType=W2&temp_Announ=D&temp_itemNo=1&seqNo=2', '2023-03-24', '6', 1484217300);
INSERT INTO `egp_rss` VALUES (27, 'ประกวดราคาจ้างก่อสร้างปรับปรุงโรงเรียนสาธิตแห่งมหาวิทยาลัยราชภัฏสุราษฎร์ธานี 1 รายการ ด้วยวิธีประกวดราคาอิเล็กทรอนิกส์ (e-bidding)', 'http://process3.gprocurement.go.th/egp2procmainWeb/FPRO9965AttachServ?projectId=66037154911&fileName=pricebuild_2015900000_66037154911.zip', '2023-03-23', '4', 1484217300);
INSERT INTO `egp_rss` VALUES (28, 'ประกวดราคาซื้อชุดปฏิบัติการศูนย์การเรียนรู้และพัฒนาทักษะสะเต็มศึกษาด้านเทคโนโลยีหุ่นยนต์ขั้นพื้นฐาน ตำบลขุนทะเล อำเภอเมืองสุราษฎร์ธานี จังหวัดสุราษฎร์ธานี ๑ ชุด ด้วยวิธีประกวดราคาอิเล็กทรอนิกส์ (e-bidding)', 'http://process3.gprocurement.go.th/egp2procmainWeb/FPRO9965AttachServ?projectId=66027466562&fileName=pricebuild_2015900000_66027466562.zip', '2023-03-22', '4', 1484217300);
INSERT INTO `egp_rss` VALUES (29, 'จ้างเหมาบริการรถตู้ปรับอากาศใช้ในกิจกรรม 1107400025 ในวันที่ 28-29 มีนาคม 2566 จำนวน 1 คัน โดยวิธีเฉพาะเจาะจง', 'http://process3.gprocurement.go.th/egp2procmainWeb/jsp/procsearch.sch?servlet=gojsp&proc_id=ShowHTMLFile&processFlows=Procure&projectId=66037411569&templateType=W2&temp_Announ=A&temp_itemNo=0&seqNo=1', '2023-03-23', '1', 1484217300);
INSERT INTO `egp_rss` VALUES (30, 'จ้างเหมาบริการรถตู้ปรับอากาศใช้ในกิจกรรม  1107400045 ในวันที่ 24-26 เมษายน 66 จำนวน 1 คัน โดยวิธีเฉพาะเจาะจง', 'http://process3.gprocurement.go.th/egp2procmainWeb/jsp/procsearch.sch?servlet=gojsp&proc_id=ShowHTMLFile&processFlows=Procure&projectId=66037470387&templateType=W2&temp_Announ=A&temp_itemNo=0&seqNo=1', '2023-03-23', '1', 1484217300);
INSERT INTO `egp_rss` VALUES (31, 'จ้างเหมาบริการรถตู้ปรับอากาศใช้ในกิจกรรม  1107400081 (1.1.6) ในวันที่ 3-5 เม.ย.66 จำนวน 1 คัน โดยวิธีเฉพาะเจาะจง', 'http://process3.gprocurement.go.th/egp2procmainWeb/jsp/procsearch.sch?servlet=gojsp&proc_id=ShowHTMLFile&processFlows=Procure&projectId=66037506883&templateType=W2&temp_Announ=A&temp_itemNo=0&seqNo=1', '2023-03-23', '1', 1484217300);

-- ----------------------------
-- Table structure for migration
-- ----------------------------
DROP TABLE IF EXISTS `migration`;
CREATE TABLE `migration`  (
  `version` varchar(180) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `apply_time` int NULL DEFAULT NULL,
  PRIMARY KEY (`version`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migration
-- ----------------------------
INSERT INTO `migration` VALUES ('m000000_000000_base', 1688008314);
INSERT INTO `migration` VALUES ('m130524_201442_init', 1688008317);
INSERT INTO `migration` VALUES ('m190124_110200_add_verification_token_column_to_user_table', 1688008317);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `auth_key` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `password_hash` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `status` smallint NOT NULL DEFAULT 10,
  `created_at` int NOT NULL,
  `updated_at` int NOT NULL,
  `verification_token` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL,
  `role` smallint NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username` ASC) USING BTREE,
  UNIQUE INDEX `email`(`email` ASC) USING BTREE,
  UNIQUE INDEX `password_reset_token`(`password_reset_token` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'admin', 'IjpiLuCm06J84KBrgDm95cU6pjjs5cb3', '$2y$13$DwP8.umg2E69n70T6iHE9OrNb83ZENYEu40O1bF7PNQreY1ZpczHO', NULL, 'admin@local.net', 10, 1688008383, 1688008383, 'aExvtkbotCxXmEff8VLhF8wOB5PsghAu_1688008383', 1);

SET FOREIGN_KEY_CHECKS = 1;
