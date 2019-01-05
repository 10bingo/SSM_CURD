/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : ssm_crud

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2018-12-27 17:03:31
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tbl_dept
-- ----------------------------
DROP TABLE IF EXISTS `tbl_dept`;
CREATE TABLE `tbl_dept` (
  `dept_id` int(11) NOT NULL AUTO_INCREMENT,
  `dept_name` varchar(255) NOT NULL,
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_dept
-- ----------------------------
INSERT INTO `tbl_dept` VALUES ('1', '开发部');
INSERT INTO `tbl_dept` VALUES ('2', '测试部');

-- ----------------------------
-- Table structure for tbl_emp
-- ----------------------------
DROP TABLE IF EXISTS `tbl_emp`;
CREATE TABLE `tbl_emp` (
  `emp_id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_name` varchar(255) NOT NULL,
  `gender` char(1) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `d_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`emp_id`),
  KEY `fk_emp_dept` (`d_id`),
  KEY `emp_empname_index` (`emp_name`),
  CONSTRAINT `fk_emp_dept` FOREIGN KEY (`d_id`) REFERENCES `tbl_dept` (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4063 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_emp
-- ----------------------------
INSERT INTO `tbl_emp` VALUES ('4', 'e3d2d3', 'F', 'e3d2d3@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('5', '264384', 'M', '264384@bingo.com', '2');
INSERT INTO `tbl_emp` VALUES ('6', '096b85', 'F', '096b85@bingo.com', '2');
INSERT INTO `tbl_emp` VALUES ('7', '970746', 'M', '970746@bingo.com', '2');
INSERT INTO `tbl_emp` VALUES ('8', 'c7b0b7', 'M', 'c7b0b7@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('9', '65c238', 'M', '65c238@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('10', 'cb1b39', 'M', 'cb1b39@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('11', 'd7f2410', 'M', 'd7f2410@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('12', 'efcea11', 'M', 'efcea11@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('13', '799c612', 'M', '799c612@bingo.com', '2');
INSERT INTO `tbl_emp` VALUES ('14', '4d86013', 'M', '4d86013@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('15', '32d1f14', 'M', '32d1f14@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('16', '508f515', 'M', '508f515@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('17', '742a616', 'M', '742a616@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('18', 'ba53817', 'M', 'ba53817@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('19', 'd69fe18', 'M', 'd69fe18@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('20', 'eb22a19', 'M', 'eb22a19@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('21', '4db0120', 'M', '4db0120@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('22', '64dad21', 'M', '64dad21@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('23', '7535822', 'M', '7535822@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('24', 'edcd923', 'M', 'edcd923@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('25', 'c992724', 'M', 'c992724@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('26', '328f225', 'M', '328f225@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('27', 'f524426', 'M', 'f524426@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('28', '60b5e27', 'M', '60b5e27@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('29', '0087028', 'M', '0087028@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('30', 'f4bb229', 'M', 'f4bb229@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('31', '138c330', 'M', '138c330@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('32', '1bfca31', 'M', '1bfca31@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('33', '09c5f32', 'M', '09c5f32@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('34', 'c064333', 'M', 'c064333@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('35', 'bdc7334', 'M', 'bdc7334@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('36', 'a6b4a35', 'M', 'a6b4a35@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('37', '4a15f36', 'M', '4a15f36@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('38', 'df4fb37', 'M', 'df4fb37@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('39', '92e6238', 'M', '92e6238@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('40', 'c0cb639', 'M', 'c0cb639@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('41', '0a93840', 'M', '0a93840@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('42', '3b39f41', 'M', '3b39f41@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('43', '3afc142', 'M', '3afc142@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('44', 'a229a43', 'M', 'a229a43@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('45', 'e82da44', 'M', 'e82da44@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('46', 'ac8b445', 'M', 'ac8b445@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('47', 'e613346', 'M', 'e613346@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('48', 'c9d5b47', 'M', 'c9d5b47@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('49', '1f5d148', 'M', '1f5d148@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('50', '4a18e49', 'M', '4a18e49@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('51', '62d9950', 'M', '62d9950@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('52', '88a6c51', 'M', '88a6c51@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('53', '7510152', 'M', '7510152@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('54', '5524253', 'M', '5524253@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('55', '4c81254', 'M', '4c81254@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('56', 'bfed955', 'M', 'bfed955@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('57', '8153c56', 'M', '8153c56@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('58', '07b6657', 'M', '07b6657@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('59', '664c258', 'M', '664c258@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('60', '87afb59', 'M', '87afb59@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('61', '31e9360', 'M', '31e9360@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('62', '02b0d61', 'M', '02b0d61@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('63', '62cfe62', 'M', '62cfe62@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('64', '2563b63', 'M', '2563b63@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('65', '2b37a64', 'M', '2b37a64@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('66', '46ecd65', 'M', '46ecd65@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('67', '98c5766', 'M', '98c5766@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('68', '0986267', 'M', '0986267@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('69', '3d53c68', 'M', '3d53c68@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('70', 'b6c5d69', 'M', 'b6c5d69@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('71', '3e55470', 'M', '3e55470@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('72', '2d30f71', 'M', '2d30f71@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('73', 'bfc4272', 'M', 'bfc4272@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('74', 'f828273', 'M', 'f828273@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('75', '769f774', 'M', '769f774@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('76', 'dbcc575', 'M', 'dbcc575@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('77', '311b076', 'M', '311b076@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('78', '727bc77', 'M', '727bc77@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('79', '06b8278', 'M', '06b8278@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('80', '294da79', 'M', '294da79@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('81', '8649980', 'M', '8649980@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('82', '546a381', 'M', '546a381@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('83', '9140182', 'M', '9140182@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('84', '20fe583', 'M', '20fe583@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('85', '15bf484', 'M', '15bf484@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('86', '2c38685', 'M', '2c38685@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('87', 'bf46c86', 'M', 'bf46c86@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('88', '8246287', 'M', '8246287@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('89', 'f840388', 'M', 'f840388@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('90', 'dcb4789', 'M', 'dcb4789@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('91', '33dac90', 'M', '33dac90@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('92', '4b2c891', 'M', '4b2c891@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('93', '3dcd792', 'M', '3dcd792@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('94', '1ea9093', 'M', '1ea9093@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('95', '1267994', 'M', '1267994@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('96', '709ec95', 'M', '709ec95@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('97', 'a022296', 'M', 'a022296@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('98', '6e19097', 'M', '6e19097@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('99', '7b92998', 'M', '7b92998@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('100', '1305199', 'M', '1305199@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('3967', '264384', 'M', '264384@bingo.com', '2');
INSERT INTO `tbl_emp` VALUES ('3968', '096b85', 'F', '096b85@bingo.com', '2');
INSERT INTO `tbl_emp` VALUES ('3969', '970746', 'M', '970746@bingo.com', '2');
INSERT INTO `tbl_emp` VALUES ('3970', 'c7b0b7', 'M', 'c7b0b7@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('3971', '65c238', 'M', '65c238@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('3972', 'cb1b39', 'M', 'cb1b39@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('3973', 'd7f2410', 'M', 'd7f2410@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('3974', 'efcea11', 'M', 'efcea11@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('3975', '799c612', 'M', '799c612@bingo.com', '2');
INSERT INTO `tbl_emp` VALUES ('3976', '4d86013', 'M', '4d86013@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('3977', '32d1f14', 'M', '32d1f14@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('3978', '508f515', 'M', '508f515@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('3979', '742a616', 'M', '742a616@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('3980', 'ba53817', 'M', 'ba53817@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('3981', 'd69fe18', 'M', 'd69fe18@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('3982', 'eb22a19', 'M', 'eb22a19@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('3983', '4db0120', 'M', '4db0120@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('3984', '64dad21', 'M', '64dad21@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('3985', '7535822', 'M', '7535822@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('3986', 'edcd923', 'M', 'edcd923@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('3987', 'c992724', 'M', 'c992724@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('3988', '328f225', 'M', '328f225@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('3989', 'f524426', 'M', 'f524426@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('3990', '60b5e27', 'M', '60b5e27@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('3991', '0087028', 'M', '0087028@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('3992', 'f4bb229', 'M', 'f4bb229@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('3993', '138c330', 'M', '138c330@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('3994', '1bfca31', 'M', '1bfca31@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('3995', '09c5f32', 'M', '09c5f32@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('3996', 'c064333', 'M', 'c064333@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('3997', 'bdc7334', 'M', 'bdc7334@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('3998', 'a6b4a35', 'M', 'a6b4a35@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('3999', '4a15f36', 'M', '4a15f36@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('4000', 'df4fb37', 'M', 'df4fb37@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('4001', '92e6238', 'M', '92e6238@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('4002', 'c0cb639', 'M', 'c0cb639@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('4003', '0a93840', 'M', '0a93840@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('4004', '3b39f41', 'M', '3b39f41@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('4005', '3afc142', 'M', '3afc142@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('4006', 'a229a43', 'M', 'a229a43@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('4007', 'e82da44', 'M', 'e82da44@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('4008', 'ac8b445', 'M', 'ac8b445@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('4009', 'e613346', 'M', 'e613346@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('4010', 'c9d5b47', 'M', 'c9d5b47@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('4011', '1f5d148', 'M', '1f5d148@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('4012', '4a18e49', 'M', '4a18e49@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('4013', '62d9950', 'M', '62d9950@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('4014', '88a6c51', 'M', '88a6c51@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('4015', '7510152', 'M', '7510152@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('4016', '5524253', 'M', '5524253@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('4017', '4c81254', 'M', '4c81254@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('4018', 'bfed955', 'M', 'bfed955@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('4019', '8153c56', 'M', '8153c56@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('4020', '07b6657', 'M', '07b6657@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('4021', '664c258', 'M', '664c258@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('4022', '87afb59', 'M', '87afb59@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('4023', '31e9360', 'M', '31e9360@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('4024', '02b0d61', 'M', '02b0d61@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('4025', '62cfe62', 'M', '62cfe62@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('4026', '2563b63', 'M', '2563b63@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('4027', '2b37a64', 'M', '2b37a64@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('4028', '46ecd65', 'M', '46ecd65@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('4029', '98c5766', 'M', '98c5766@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('4030', '0986267', 'M', '0986267@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('4031', '3d53c68', 'M', '3d53c68@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('4032', 'b6c5d69', 'M', 'b6c5d69@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('4033', '3e55470', 'M', '3e55470@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('4034', '2d30f71', 'M', '2d30f71@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('4035', 'bfc4272', 'M', 'bfc4272@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('4036', 'f828273', 'M', 'f828273@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('4037', '769f774', 'M', '769f774@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('4038', 'dbcc575', 'M', 'dbcc575@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('4039', '311b076', 'M', '311b076@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('4040', '727bc77', 'M', '727bc77@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('4041', '06b8278', 'M', '06b8278@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('4042', '294da79', 'M', '294da79@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('4043', '8649980', 'M', '8649980@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('4044', '546a381', 'M', '546a381@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('4045', '9140182', 'M', '9140182@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('4046', '20fe583', 'M', '20fe583@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('4047', '15bf484', 'M', '15bf484@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('4048', '2c38685', 'M', '2c38685@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('4049', 'bf46c86', 'M', 'bf46c86@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('4050', '8246287', 'M', '8246287@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('4051', 'f840388', 'M', 'f840388@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('4052', 'dcb4789', 'M', 'dcb4789@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('4053', '33dac90', 'M', '33dac90@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('4054', '4b2c891', 'M', '4b2c891@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('4055', '3dcd792', 'M', '3dcd792@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('4056', '1ea9093', 'M', '1ea9093@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('4057', '1267994', 'M', '1267994@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('4058', '709ec95', 'M', '709ec95@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('4059', 'a022296', 'M', 'a022296@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('4060', '6e19097', 'M', '6e19097@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('4061', '7b92998', 'M', '7b92998@bingo.com', '1');
INSERT INTO `tbl_emp` VALUES ('4062', '1305199', 'M', '1305199@bingo.com', '1');
