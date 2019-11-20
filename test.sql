/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : taki

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2019-02-27 16:40:58
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `antidupe`
-- ----------------------------
DROP TABLE IF EXISTS `antidupe`;
CREATE TABLE `antidupe` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `Type` varchar(30) DEFAULT NULL,
  `Item` varchar(50) DEFAULT NULL,
  `Amount` int(100) DEFAULT NULL,
  `Sender` varchar(30) DEFAULT NULL,
  `SenderPID` varchar(17) DEFAULT NULL,
  `Receiver` varchar(30) DEFAULT NULL,
  `ReceiverPID` varchar(17) DEFAULT NULL,
  `position` varchar(30) DEFAULT NULL,
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of antidupe
-- ----------------------------

-- ----------------------------
-- Table structure for `arrest_log`
-- ----------------------------
DROP TABLE IF EXISTS `arrest_log`;
CREATE TABLE `arrest_log` (
  `arrest_id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL DEFAULT '0',
  `arrest_timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` enum('Arrested','Released') DEFAULT NULL,
  `pid` varchar(64) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`arrest_id`),
  KEY `arrest_timestamp` (`arrest_timestamp`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=1800 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of arrest_log
-- ----------------------------

-- ----------------------------
-- Table structure for `cash_log`
-- ----------------------------
DROP TABLE IF EXISTS `cash_log`;
CREATE TABLE `cash_log` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `bank_difference` int(11) DEFAULT NULL,
  `onhand_difference` int(11) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `pid` varchar(64) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`log_id`),
  KEY `timestamp` (`timestamp`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of cash_log
-- ----------------------------
INSERT INTO `cash_log` VALUES ('1', '-17000', '17000', '5', '2019-02-26 19:08:30', '', '');
INSERT INTO `cash_log` VALUES ('2', '0', '-9500', '5', '2019-02-26 19:08:59', '', '');
INSERT INTO `cash_log` VALUES ('3', '0', '5', '5', '2019-02-26 19:15:01', '', '');
INSERT INTO `cash_log` VALUES ('4', '-999', '1389', '5', '2019-02-26 19:16:08', '', '');
INSERT INTO `cash_log` VALUES ('5', '0', '-5677', '5', '2019-02-26 19:16:20', '', '');
INSERT INTO `cash_log` VALUES ('6', '400', '0', '5', '2019-02-26 19:19:23', '', '');
INSERT INTO `cash_log` VALUES ('7', '0', '120', '5', '2019-02-26 19:19:38', '', '');
INSERT INTO `cash_log` VALUES ('8', '0', '-1000', '5', '2019-02-26 19:26:35', '', '');
INSERT INTO `cash_log` VALUES ('9', '0', '5', '5', '2019-02-26 19:27:46', '', '');
INSERT INTO `cash_log` VALUES ('10', '0', '10', '5', '2019-02-26 19:29:54', '', '');
INSERT INTO `cash_log` VALUES ('11', '400', '0', '5', '2019-02-26 19:30:30', '', '');
INSERT INTO `cash_log` VALUES ('12', '0', '120', '5', '2019-02-26 19:31:49', '', '');
INSERT INTO `cash_log` VALUES ('13', '11501', '0', '6', '2019-02-27 00:08:20', '', '');
INSERT INTO `cash_log` VALUES ('14', '20500', '0', '6', '2019-02-27 11:31:00', '', '');
INSERT INTO `cash_log` VALUES ('15', '0', '2999', '8', '2019-02-27 15:57:22', '', '');
INSERT INTO `cash_log` VALUES ('16', '0', '-2999', '8', '2019-02-27 16:03:23', '', '');
INSERT INTO `cash_log` VALUES ('17', '-1500', '0', '8', '2019-02-27 16:05:26', '', '');
INSERT INTO `cash_log` VALUES ('18', '0', '2999', '8', '2019-02-27 16:05:55', '', '');
INSERT INTO `cash_log` VALUES ('19', '0', '-2999', '8', '2019-02-27 16:06:35', '', '');
INSERT INTO `cash_log` VALUES ('20', '12990400', '10000', '8', '2019-02-27 16:15:24', '', '');
INSERT INTO `cash_log` VALUES ('21', '-520000', '520000', '8', '2019-02-27 16:15:36', '', '');
INSERT INTO `cash_log` VALUES ('22', '0', '285000', '8', '2019-02-27 16:15:52', '', '');
INSERT INTO `cash_log` VALUES ('23', '-650000', '0', '8', '2019-02-27 16:16:36', '', '');
INSERT INTO `cash_log` VALUES ('24', '0', '-4050', '8', '2019-02-27 16:16:43', '', '');
INSERT INTO `cash_log` VALUES ('25', '0', '-45999', '8', '2019-02-27 16:17:03', '', '');
INSERT INTO `cash_log` VALUES ('26', '400', '0', '8', '2019-02-27 16:17:45', '', '');
INSERT INTO `cash_log` VALUES ('27', '0', '-6400', '8', '2019-02-27 16:19:27', '', '');
INSERT INTO `cash_log` VALUES ('28', '0', '-755552', '8', '2019-02-27 16:24:34', '', '');
INSERT INTO `cash_log` VALUES ('29', '0', '-1250', '8', '2019-02-27 16:26:29', '', '');

-- ----------------------------
-- Table structure for `containers`
-- ----------------------------
DROP TABLE IF EXISTS `containers`;
CREATE TABLE `containers` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `pid` varchar(17) NOT NULL,
  `classname` varchar(32) NOT NULL,
  `pos` varchar(64) DEFAULT NULL,
  `inventory` text NOT NULL,
  `gear` text NOT NULL,
  `dir` varchar(128) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `owned` tinyint(1) DEFAULT '0',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Name` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`,`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of containers
-- ----------------------------
INSERT INTO `containers` VALUES ('1', '76561197979553832', 'usg_vault', '[6255.19,11125.3,1.026]', '\"[[],0]\"', '\"[[[],[]],[[],[]],[[],[]],[[`B_TacticalPack_blk`],[1]]]\"', '[[0.373137,-0.927776,0],[0,0,1]]', '0', '1', '2019-02-27 16:17:55', null);

-- ----------------------------
-- Table structure for `evidencelocker`
-- ----------------------------
DROP TABLE IF EXISTS `evidencelocker`;
CREATE TABLE `evidencelocker` (
  `id` int(1) NOT NULL AUTO_INCREMENT,
  `inventory` mediumtext NOT NULL,
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of evidencelocker
-- ----------------------------
INSERT INTO `evidencelocker` VALUES ('1', '[[[],[]],[[],[]],[[],[]],[[],[]]]', '2018-07-27 14:02:33');

-- ----------------------------
-- Table structure for `deathlog`
-- ----------------------------
DROP TABLE IF EXISTS `deathlog`;
CREATE TABLE `deathlog` (
  `id` int(1) NOT NULL AUTO_INCREMENT,
  `message` mediumtext NOT NULL,
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for `gangbasehp`
-- ----------------------------
DROP TABLE IF EXISTS `gangbasehp`;
CREATE TABLE `gangbasehp` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `baseID` varchar(50) DEFAULT NULL,
  `baseHP` int(3) DEFAULT '8',
  `baseInventoryVirtual` mediumtext NOT NULL,
  `baseInventory` mediumtext NOT NULL,
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gangbasehp
-- ----------------------------
INSERT INTO `gangbasehp` VALUES ('53', '1', '-200', '[]', '[[[],[]],[[],[]],[[],[]],[[],[]]]', '2018-07-27 14:02:33');
INSERT INTO `gangbasehp` VALUES ('54', '2', '-200', '[]', '[[[],[]],[[],[]],[[],[]],[[],[]]]', '2018-07-27 14:02:40');
INSERT INTO `gangbasehp` VALUES ('55', '3', '-200', '[]', '[[[],[]],[[],[]],[[],[]],[[],[]]]', '2018-07-27 14:02:42');
INSERT INTO `gangbasehp` VALUES ('56', '4', '-200', '[]', '[[[],[]],[[],[]],[[],[]],[[],[]]]', '2018-07-27 14:02:45');
INSERT INTO `gangbasehp` VALUES ('57', '5', '-200', '[]', '[[[],[]],[[],[]],[[],[]],[[],[]]]', '2018-07-27 14:02:48');
INSERT INTO `gangbasehp` VALUES ('58', '6', '-200', '[]', '[[[],[]],[[],[]],[[],[]],[[],[]]]', '2018-07-27 14:02:52');
INSERT INTO `gangbasehp` VALUES ('59', '7', '-200', '[]', '[[[],[]],[[],[]],[[],[]],[[],[]]]', '2018-07-27 14:02:55');
INSERT INTO `gangbasehp` VALUES ('60', '8', '-200', '[]', '[[[],[]],[[],[]],[[],[]],[[],[]]]', '2018-07-27 14:03:02');
INSERT INTO `gangbasehp` VALUES ('61', '9', '-200', '[]', '[[[],[]],[[],[]],[[],[]],[[],[]]]', '2018-07-27 14:03:05');
INSERT INTO `gangbasehp` VALUES ('62', '10', '-200', '[]', '[[[],[]],[[],[]],[[],[]],[[],[]]]', '2018-07-27 14:03:08');

-- ----------------------------
-- Table structure for `gangs`
-- ----------------------------
DROP TABLE IF EXISTS `gangs`;
CREATE TABLE `gangs` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `owner` varchar(32) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `Base` varchar(50) DEFAULT NULL,
  `members` text,
  `rank1` text,
  `rank2` text,
  `rank3` text,
  `maxmembers` int(3) DEFAULT '8',
  `bank` int(100) DEFAULT '0',
  `active` tinyint(1) DEFAULT '1',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gangs
-- ----------------------------

-- ----------------------------
-- Table structure for `houses`
-- ----------------------------
DROP TABLE IF EXISTS `houses`;
CREATE TABLE `houses` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `pid` varchar(17) NOT NULL,
  `pos` varchar(64) DEFAULT NULL,
  `owned` tinyint(1) DEFAULT '0',
  `garage` tinyint(1) NOT NULL DEFAULT '0',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `name` text,
  PRIMARY KEY (`id`,`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of houses
-- ----------------------------

-- ----------------------------
-- Table structure for `jaillogs`
-- ----------------------------
DROP TABLE IF EXISTS `jaillogs`;
CREATE TABLE `jaillogs` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `OfficerName` varchar(17) NOT NULL,
  `OfficerPID` varchar(17) NOT NULL,
  `jailedName` varchar(17) NOT NULL,
  `TimeInJail` int(20) NOT NULL,
  `note` varchar(200) DEFAULT NULL,
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jaillogs
-- ----------------------------

-- ----------------------------
-- Table structure for `jailmoney`
-- ----------------------------
DROP TABLE IF EXISTS `jailmoney`;
CREATE TABLE `jailmoney` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `jailMoneyAmount` int(9) NOT NULL,
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jailmoney
-- ----------------------------
INSERT INTO `jailmoney` VALUES ('1', '106923', '2018-08-01 23:12:19');

-- ----------------------------
-- Table structure for `jailmoneylogs`
-- ----------------------------
DROP TABLE IF EXISTS `jailmoneylogs`;
CREATE TABLE `jailmoneylogs` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `pid` varchar(17) NOT NULL,
  `amountWithdrawed` int(9) NOT NULL,
  `note` varchar(255) DEFAULT NULL,
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jailmoneylogs
-- ----------------------------

-- ----------------------------
-- Table structure for `license_log`
-- ----------------------------
DROP TABLE IF EXISTS `license_log`;
CREATE TABLE `license_log` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `license_old` text,
  `license_new` text,
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `pid` varchar(64) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`log_id`),
  KEY `timestamp` (`timestamp`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of license_log
-- ----------------------------
INSERT INTO `license_log` VALUES ('1', '5', '\"[]\"', '\"[[`license_civ_driver`,0],[`license_civ_boat`,0],[`license_civ_pilot`,0],[`license_civ_trucking`,0],[`license_civ_gun`,0],[`license_civ_dive`,0],[`license_civ_home`,0]]\"', '2019-02-26 19:08:15', null, null);
INSERT INTO `license_log` VALUES ('2', '5', '\"[[`license_civ_driver`,0],[`license_civ_boat`,0],[`license_civ_pilot`,0],[`license_civ_trucking`,0],[`license_civ_gun`,0],[`license_civ_dive`,0],[`license_civ_home`,0]]\"', '\"[[`license_civ_driver`,0],[`license_civ_boat`,0],[`license_civ_pilot`,0],[`license_civ_trucking`,0],[`license_civ_gun`,1],[`license_civ_dive`,0],[`license_civ_home`,0]]\"', '2019-02-26 19:26:35', null, null);
INSERT INTO `license_log` VALUES ('3', '8', '\"[]\"', '\"[[`license_civ_driver`,0],[`license_civ_boat`,0],[`license_civ_pilot`,0],[`license_civ_trucking`,0],[`license_civ_gun`,0],[`license_civ_dive`,0],[`license_civ_home`,0]]\"', '2019-02-27 15:55:15', null, null);
INSERT INTO `license_log` VALUES ('4', '8', '\"[[`license_civ_driver`,0],[`license_civ_boat`,0],[`license_civ_pilot`,0],[`license_civ_trucking`,0],[`license_civ_gun`,0],[`license_civ_dive`,0],[`license_civ_home`,0]]\"', '\"[[`license_civ_driver`,0],[`license_civ_boat`,0],[`license_civ_pilot`,0],[`license_civ_trucking`,0],[`license_civ_gun`,0],[`license_civ_dive`,0],[`license_civ_home`,1]]\"', '2019-02-27 16:15:52', null, null);
INSERT INTO `license_log` VALUES ('5', '8', '\"[[`license_civ_driver`,0],[`license_civ_boat`,0],[`license_civ_pilot`,0],[`license_civ_trucking`,0],[`license_civ_gun`,0],[`license_civ_dive`,0],[`license_civ_home`,1]]\"', '\"[[`license_civ_driver`,1],[`license_civ_boat`,0],[`license_civ_pilot`,1],[`license_civ_trucking`,1],[`license_civ_gun`,0],[`license_civ_dive`,0],[`license_civ_home`,1]]\"', '2019-02-27 16:16:43', null, null);

-- ----------------------------
-- Table structure for `nlrlogs`
-- ----------------------------
DROP TABLE IF EXISTS `nlrlogs`;
CREATE TABLE `nlrlogs` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `playerId` varchar(19) NOT NULL,
  `playerName` varchar(19) NOT NULL,
  `position` varchar(30) NOT NULL,
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of nlrlogs
-- ----------------------------

-- ----------------------------
-- Table structure for `players`
-- ----------------------------
DROP TABLE IF EXISTS `players`;
CREATE TABLE `players` (
  `uid` int(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `aliases` text NOT NULL,
  `pid` varchar(17) NOT NULL,
  `HWID` varchar(100) DEFAULT NULL,
  `cash` int(100) NOT NULL DEFAULT '0',
  `bankacc` int(100) NOT NULL DEFAULT '0',
  `westcash` int(100) NOT NULL DEFAULT '0',
  `westbankacc` int(100) NOT NULL DEFAULT '0',
  `coplevel` enum('0','1','2','3','4','5','6','7','8','9','10','11') NOT NULL DEFAULT '0',
  `mediclevel` enum('0','1','2','3','4') NOT NULL DEFAULT '0',
  `civ_licenses` text NOT NULL,
  `cop_licenses` text NOT NULL,
  `med_licenses` text NOT NULL,
  `civ_gear` text NOT NULL,
  `cop_gear` text NOT NULL,
  `med_gear` text NOT NULL,
  `civ_stats` varchar(32) NOT NULL DEFAULT '"[100,100,0]"',
  `cop_stats` varchar(32) NOT NULL DEFAULT '"[100,100,0]"',
  `med_stats` varchar(32) NOT NULL DEFAULT '"[100,100,0]"',
  `arrested` tinyint(1) NOT NULL DEFAULT '0',
  `adminlevel` enum('0','1','2','3','4','5') NOT NULL DEFAULT '0',
  `donorlevel` enum('0','1','2','3','4','5') NOT NULL DEFAULT '0',
  `blacklist` tinyint(1) NOT NULL DEFAULT '0',
  `civ_alive` tinyint(1) NOT NULL DEFAULT '0',
  `civ_position` varchar(64) NOT NULL DEFAULT '"[]"',
  `playtime` varchar(32) NOT NULL DEFAULT '"[0,0,0]"',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_seen` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `exp_level_rebel` int(11) NOT NULL DEFAULT '0',
  `exp_level_cop` int(11) NOT NULL DEFAULT '0',
  `exp_level_terrorist` int(11) NOT NULL DEFAULT '0',
  `exp_level_civilian` int(11) NOT NULL DEFAULT '0',
  `exp_total_rebel` int(11) NOT NULL DEFAULT '0',
  `exp_total_cop` int(11) NOT NULL DEFAULT '0',
  `exp_total_terrorist` int(11) NOT NULL DEFAULT '0',
  `exp_total_civilian` int(11) NOT NULL DEFAULT '0',
  `exp_perkPoints_civilian` int(11) NOT NULL DEFAULT '0',
  `exp_perkPoints_cop` int(11) NOT NULL DEFAULT '0',
  `exp_perkPoints_terrorist` int(11) NOT NULL DEFAULT '0',
  `exp_perkPoints_rebel` int(11) NOT NULL DEFAULT '0',
  `exp_perks` text,
  `madminlevel` enum('') DEFAULT NULL,
  `jComp` int(11) DEFAULT NULL,
  `jCop` int(11) DEFAULT NULL,
  `jMedic` int(11) DEFAULT NULL,
  `PrestigePoints` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `pid` (`pid`),
  KEY `name` (`name`),
  KEY `blacklist` (`blacklist`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of players
-- ----------------------------

-- ----------------------------
-- Table structure for `sellogs`
-- ----------------------------
DROP TABLE IF EXISTS `sellogs`;
CREATE TABLE `sellogs` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `PlayerName` varchar(30) DEFAULT NULL,
  `PID` varchar(17) DEFAULT NULL,
  `Item` varchar(50) DEFAULT NULL,
  `Price` varchar(30) DEFAULT NULL,
  `Amount` int(100) DEFAULT NULL,
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sellogs
-- ----------------------------

-- ----------------------------
-- Table structure for `usgah_bannedhwid`
-- ----------------------------
DROP TABLE IF EXISTS `usgah_bannedhwid`;
CREATE TABLE `usgah_bannedhwid` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `HWID` varchar(100) NOT NULL,
  `PID` varchar(32) NOT NULL,
  `BanInfo` varchar(32) NOT NULL,
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of usgah_bannedhwid
-- ----------------------------

-- ----------------------------
-- Table structure for `usgah_itemtransfer`
-- ----------------------------
DROP TABLE IF EXISTS `usgah_itemtransfer`;
CREATE TABLE `usgah_itemtransfer` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `fromUID` varchar(32) NOT NULL,
  `fromName` varchar(32) NOT NULL,
  `toUID` varchar(32) NOT NULL,
  `toName` varchar(32) NOT NULL,
  `Amount` varchar(32) NOT NULL,
  `Item` varchar(32) NOT NULL,
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of usgah_itemtransfer
-- ----------------------------

-- ----------------------------
-- Table structure for `usgah_item_logs`
-- ----------------------------
DROP TABLE IF EXISTS `usgah_item_logs`;
CREATE TABLE `usgah_item_logs` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `Type` varchar(20) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `PID` varchar(50) NOT NULL,
  `Item` varchar(100) NOT NULL,
  `Container` varchar(100) NOT NULL,
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of usgah_item_logs
-- ----------------------------
INSERT INTO `usgah_item_logs` VALUES ('1', 'put', '76561198115523495', 'Robin Wiithes', 'hlc_rifle_honeybadger', '1a55dfe0100# 440404: dummyweapon.p3d', '2019-02-26 19:09:02');
INSERT INTO `usgah_item_logs` VALUES ('2', 'take', '76561198115523495', 'Robin Wiithes', 'hlc_rifle_honeybadger', '1a55dfe0100# 440404: dummyweapon.p3d', '2019-02-26 19:09:13');

-- ----------------------------
-- Table structure for `usgah_mav_xp`
-- ----------------------------
DROP TABLE IF EXISTS `usgah_mav_xp`;
CREATE TABLE `usgah_mav_xp` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) NOT NULL,
  `PID` varchar(32) NOT NULL,
  `GainedXP` varchar(100) NOT NULL,
  `Level` varchar(10) NOT NULL,
  `Action` varchar(100) NOT NULL,
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of usgah_mav_xp
-- ----------------------------

-- ----------------------------
-- Table structure for `usgah_moneymake_logs`
-- ----------------------------
DROP TABLE IF EXISTS `usgah_moneymake_logs`;
CREATE TABLE `usgah_moneymake_logs` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `PID` varchar(100) NOT NULL,
  `Name` varchar(32) NOT NULL,
  `Type` varchar(32) NOT NULL,
  `Amount` varchar(32) NOT NULL,
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of usgah_moneymake_logs
-- ----------------------------

-- ----------------------------
-- Table structure for `usgah_moneytransfer`
-- ----------------------------
DROP TABLE IF EXISTS `usgah_moneytransfer`;
CREATE TABLE `usgah_moneytransfer` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `fromUID` varchar(32) NOT NULL,
  `fromName` varchar(32) NOT NULL,
  `toUID` varchar(32) NOT NULL,
  `toName` varchar(32) NOT NULL,
  `Amount` varchar(32) NOT NULL,
  `Type` varchar(32) NOT NULL,
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of usgah_moneytransfer
-- ----------------------------

-- ----------------------------
-- Table structure for `usgah_pickup_item`
-- ----------------------------
DROP TABLE IF EXISTS `usgah_pickup_item`;
CREATE TABLE `usgah_pickup_item` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `Name` varchar(32) NOT NULL,
  `UID` varchar(32) NOT NULL,
  `Item` varchar(32) NOT NULL,
  `Amount` varchar(32) NOT NULL,
  `Droppedby` varchar(32) NOT NULL,
  `Position` varchar(32) NOT NULL,
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of usgah_pickup_item
-- ----------------------------
INSERT INTO `usgah_pickup_item` VALUES ('1', 'Sven Cylinder', '76561197979553832', 'Cash', '2999', 'Sven Cylinder', '[5084.98,6875.9,0.00143433]', '2019-02-27 16:05:55');

-- ----------------------------
-- Table structure for `usgah_virt_shop`
-- ----------------------------
DROP TABLE IF EXISTS `usgah_virt_shop`;
CREATE TABLE `usgah_virt_shop` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `BuyOrSell` varchar(32) NOT NULL,
  `Name` varchar(32) NOT NULL,
  `UID` varchar(32) NOT NULL,
  `ShopType` varchar(32) NOT NULL,
  `Price` varchar(32) NOT NULL,
  `Item` varchar(32) NOT NULL,
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of usgah_virt_shop
-- ----------------------------
INSERT INTO `usgah_virt_shop` VALUES ('1', 'sell', 'Robin Wiithes', '76561198115523495', 'market', '5', 'apple', '2019-02-26 19:15:01');
INSERT INTO `usgah_virt_shop` VALUES ('2', 'buy', 'Robin Wiithes', '76561198115523495', 'market', '10', 'shovel', '2019-02-26 19:15:03');
INSERT INTO `usgah_virt_shop` VALUES ('3', 'sell', 'Robin Wiithes', '76561198115523495', 'mineralShop', '120', 'gold_refined', '2019-02-26 19:19:38');
INSERT INTO `usgah_virt_shop` VALUES ('4', 'sell', 'Robin Wiithes', '76561198115523495', 'market', '5', 'apple', '2019-02-26 19:27:46');
INSERT INTO `usgah_virt_shop` VALUES ('5', 'sell', 'Robin Wiithes', '76561198115523495', 'market', '5', 'apple', '2019-02-26 19:27:48');
INSERT INTO `usgah_virt_shop` VALUES ('6', 'sell', 'Robin Wiithes', '76561198115523495', 'market', '5', 'apple', '2019-02-26 19:27:48');
INSERT INTO `usgah_virt_shop` VALUES ('7', 'sell', 'Robin Wiithes', '76561198115523495', 'mineralShop', '120', 'gold_refined', '2019-02-26 19:31:49');
INSERT INTO `usgah_virt_shop` VALUES ('8', 'buy', 'Sven Cylinder', '76561197979553832', 'market', '45999', 'storagebig', '2019-02-27 16:17:03');

-- ----------------------------
-- Table structure for `usgah_vitemstore_logs`
-- ----------------------------
DROP TABLE IF EXISTS `usgah_vitemstore_logs`;
CREATE TABLE `usgah_vitemstore_logs` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `PID` varchar(100) NOT NULL,
  `Name` varchar(32) NOT NULL,
  `Type` varchar(32) NOT NULL,
  `Amount` varchar(32) NOT NULL,
  `Action` varchar(32) NOT NULL,
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of usgah_vitemstore_logs
-- ----------------------------
INSERT INTO `usgah_vitemstore_logs` VALUES ('1', '76561198115523495', 'Robin Wiithes', 'apple', '1', 'Store', '2019-02-26 19:17:12');
INSERT INTO `usgah_vitemstore_logs` VALUES ('2', '76561198115523495', 'Robin Wiithes', 'apple', '1', 'Take', '2019-02-26 19:17:26');

-- ----------------------------
-- Table structure for `usgah_warnings`
-- ----------------------------
DROP TABLE IF EXISTS `usgah_warnings`;
CREATE TABLE `usgah_warnings` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `Description` varchar(32) NOT NULL,
  `PID` varchar(32) NOT NULL,
  `HWID` varchar(32) NOT NULL,
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of usgah_warnings
-- ----------------------------

-- ----------------------------
-- Table structure for `vehicles`
-- ----------------------------
DROP TABLE IF EXISTS `vehicles`;
CREATE TABLE `vehicles` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `side` varchar(16) NOT NULL,
  `classname` varchar(64) NOT NULL,
  `type` varchar(16) NOT NULL,
  `pid` varchar(17) NOT NULL,
  `alive` tinyint(1) NOT NULL DEFAULT '1',
  `blacklist` tinyint(1) NOT NULL DEFAULT '0',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `plate` int(20) NOT NULL,
  `color` int(20) NOT NULL,
  `inventory` text NOT NULL,
  `gear` text NOT NULL,
  `fuel` double NOT NULL DEFAULT '1',
  `damage` varchar(256) NOT NULL,
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `name` text,
  PRIMARY KEY (`id`),
  KEY `side` (`side`),
  KEY `pid` (`pid`),
  KEY `type` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vehicles
-- ----------------------------

-- ----------------------------
-- Table structure for `wanted`
-- ----------------------------
DROP TABLE IF EXISTS `wanted`;
CREATE TABLE `wanted` (
  `wantedID` varchar(64) NOT NULL,
  `wantedName` varchar(32) NOT NULL,
  `wantedCrimes` text NOT NULL,
  `wantedBounty` int(100) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`wantedID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wanted
-- ----------------------------

-- ----------------------------
-- Table structure for `xphonemessages`
-- ----------------------------
DROP TABLE IF EXISTS `xphonemessages`;
CREATE TABLE `xphonemessages` (
  `sender` varchar(50) DEFAULT NULL,
  `receiver` varchar(50) DEFAULT NULL,
  `message` text,
  `timesent` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of xphonemessages
-- ----------------------------

-- ----------------------------
-- Table structure for `xphonenumbers`
-- ----------------------------
DROP TABLE IF EXISTS `xphonenumbers`;
CREATE TABLE `xphonenumbers` (
  `number` varchar(50) DEFAULT NULL,
  `uid` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of xphonenumbers
-- ----------------------------

-- ----------------------------
-- Procedure structure for `deleteDeadVehicles`
-- ----------------------------
DROP PROCEDURE IF EXISTS `deleteDeadVehicles`;
DELIMITER ;;
CREATE DEFINER=`arma3`@`localhost` PROCEDURE `deleteDeadVehicles`()
BEGIN
  DELETE FROM `vehicles` WHERE `alive` = 0;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `deleteOldContainers`
-- ----------------------------
DROP PROCEDURE IF EXISTS `deleteOldContainers`;
DELIMITER ;;
CREATE DEFINER=`arma3`@`localhost` PROCEDURE `deleteOldContainers`()
BEGIN
  DELETE FROM `containers` WHERE `owned` = 0;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `deleteOldGangs`
-- ----------------------------
DROP PROCEDURE IF EXISTS `deleteOldGangs`;
DELIMITER ;;
CREATE DEFINER=`arma3`@`localhost` PROCEDURE `deleteOldGangs`()
BEGIN
  DELETE FROM `gangs` WHERE `active` = 0;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `deleteOldHouses`
-- ----------------------------
DROP PROCEDURE IF EXISTS `deleteOldHouses`;
DELIMITER ;;
CREATE DEFINER=`arma3`@`localhost` PROCEDURE `deleteOldHouses`()
BEGIN
  DELETE FROM `houses` WHERE `owned` = 0;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `deleteOldWanted`
-- ----------------------------
DROP PROCEDURE IF EXISTS `deleteOldWanted`;
DELIMITER ;;
CREATE DEFINER=`arma3`@`localhost` PROCEDURE `deleteOldWanted`()
BEGIN
  DELETE FROM `wanted` WHERE `active` = 0;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `resetLifeVehicles`
-- ----------------------------
DROP PROCEDURE IF EXISTS `resetLifeVehicles`;
DELIMITER ;;
CREATE DEFINER=`arma3`@`localhost` PROCEDURE `resetLifeVehicles`()
BEGIN
  UPDATE `vehicles` SET `active`= 0;
END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `players_after_update`;
DELIMITER ;;
CREATE TRIGGER `players_after_update` AFTER UPDATE ON `players` FOR EACH ROW BEGIN
  	IF(NEW.cash != OLD.cash || NEW.bankacc != OLD.bankacc) THEN
    	INSERT INTO cash_log (uid, bank_difference, onhand_difference) VALUES (NEW.uid, NEW.bankacc - OLD.bankacc,NEW.cash - OLD.cash);
  	END IF;
  
  	IF(NEW.civ_licenses != OLD.civ_licenses) THEN
    	INSERT INTO license_log (uid, license_old, license_new) VALUES (NEW.uid,OLD.civ_licenses,NEW.civ_licenses);
  	END IF;
  
	IF(NEW.arrested != OLD.arrested) THEN
    	IF(NEW.arrested = 0) THEN
    		INSERT INTO arrest_log (uid, status) VALUES (NEW.uid, "Released"); 		
    	END IF;
    	IF(NEW.arrested = 1) THEN
    		INSERT INTO arrest_log (uid, status) VALUES (NEW.uid, "Arrested"); 		
    	END IF;
  	END IF;
END
;;
DELIMITER ;
