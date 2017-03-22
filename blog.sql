/*
Navicat MySQL Data Transfer

Source Server         : copydm
Source Server Version : 50148
Source Host           : qdm165376574.my3w.com:3306
Source Database       : qdm165376574_db

Target Server Type    : MYSQL
Target Server Version : 50148
File Encoding         : 65001

Date: 2017-02-13 14:36:46
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for blog_play
-- ----------------------------
DROP TABLE IF EXISTS `blog_play`;
CREATE TABLE `blog_play` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID号',
  `store` int(11) NOT NULL COMMENT '分数',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '玩家昵称',
  `addtime` varchar(12) NOT NULL DEFAULT '0' COMMENT '评论时间',    				     小游戏
  `ip` varchar(20) DEFAULT NULL COMMENT '评论者IP',
  `browser` varchar(200) DEFAULT NULL COMMENT '评论者的浏览器信息',
  `screen` varchar(30) DEFAULT NULL COMMENT '评论者分辨率',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for blog_reply
-- ----------------------------
DROP TABLE IF EXISTS `blog_reply`;
CREATE TABLE `blog_reply` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID号',  
  `rid` int(11) NOT NULL COMMENT '帖子ID',                             				   
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '评论者昵称',                回复
  `content` text NOT NULL COMMENT '评论内容',
  `addtime` varchar(12) NOT NULL DEFAULT '0' COMMENT '评论时间',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1:显示 2:不显示',
  `ip` varchar(20) DEFAULT NULL COMMENT '评论者IP',
  `browser` varchar(200) DEFAULT NULL COMMENT '评论者的浏览器信息',
  `screen` varchar(30) DEFAULT NULL COMMENT '评论者分辨率',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for blog_review
-- ----------------------------
DROP TABLE IF EXISTS `blog_review`;
CREATE TABLE `blog_review` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID号',
  `pid` int(11) NOT NULL COMMENT '帖子ID',					评论
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '评论者昵称',                          			   
  `content` text NOT NULL COMMENT '评论内容',
  `addtime` varchar(12) NOT NULL DEFAULT '0' COMMENT '评论时间',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1:显示 2:不显示',
  `ip` varchar(20) DEFAULT NULL COMMENT '评论者IP',
  `browser` varchar(200) DEFAULT NULL COMMENT '评论者的浏览器信息',
  `screen` varchar(30) DEFAULT NULL COMMENT '评论者分辨率',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
