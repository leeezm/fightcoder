/*
Navicat MySQL Data Transfer
Source Server         : local
Source Server Version : 40122
Source Host           : localhost:3306
Source Database       : oj
Target Server Type    : MYSQL
Target Server Version : 40122
File Encoding         : 65001
Date: 2017-07-19 21:20:00
*/

DROP DATABASE IF EXISTS `ojtest`; 
CREATE DATABASE `ojtest`;
USE `ojtest`;

DROP TABLE IF EXISTS `inst_solo_contest`;
CREATE TABLE `inst_solo_contest` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `fromUserId` int(10) DEFAULT NULL COMMENT '挑战ID',
  `toUserId` int(10) DEFAULT NULL COMMENT '守擂ID',
  `startTime` varchar(50) DEFAULT NULL COMMENT '开始时间(年月日时分)',
  `endTime` varchar(50) DEFAULT NULL COMMENT '结束时间',
  `problemNum` int(10) DEFAULT NULL COMMENT '试题的总数',
  `result` int(10) DEFAULT NULL COMMENT '0:挑战方获胜,1:守擂方获胜,2:平局',
  `detail` varchar(50) DEFAULT NULL COMMENT '比赛结果详情(各自AC的题目个数)',
  PRIMARY KEY (`id`) 
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='solo竞赛实例表';

DROP TABLE IF EXISTS `dict_rank_result`;
CREATE TABLE `dict_rank_result` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `contestId` int(10) DEFAULT NULL COMMENT 'rank比赛ID',
  `userId` int(10) DEFAULT NULL COMMENT '用户id,帮派id',
  `account` int(10) DEFAULT NULL COMMENT '总得分',
  `detail` varchar(200) DEFAULT NULL COMMENT '每道题得分',
  PRIMARY KEY (`id`) 
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='rank比赛排行榜';

DROP TABLE IF EXISTS `inst_rank_contest`;
CREATE TABLE `inst_rank_contest` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `contestName` varchar(100) DEFAULT NULL COMMENT '大赛名称',
  `description` varchar(255) DEFAULT NULL COMMENT '比赛描述',
  `startTime` varchar(50) DEFAULT NULL COMMENT '开始时间(年月日时分)',
  `endTime` varchar(50) DEFAULT NULL COMMENT '结束时间',
  `problemNum` int(10) DEFAULT NULL COMMENT '试题的总数',
  PRIMARY KEY (`id`) 
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='竞赛实例表';

DROP TABLE IF EXISTS `inst_blog_main`;
CREATE TABLE `inst_blog_main` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `instUserId` int(11) default NULL COMMENT '用户ID',
  `title` varchar(50) default NULL COMMENT '标题',
  `content` text default NULL COMMENT '内容',
  `createdate` varchar(50) default NULL COMMENT '发布时间',
  PRIMARY KEY  (`id`),
  KEY `instUserId` (`instUserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='主博客表';

DROP TABLE IF EXISTS `inst_blog_leave`;
CREATE TABLE `inst_blog_leave` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `leaveId` int(11) default NULL COMMENT '留言用户ID',
  `receiveId` int(11) default NULL COMMENT '被留言用户ID',
  `mainId` int(11) default NULL COMMENT '动态ID',
  `leaveContent` text default NULL COMMENT '留言内容',
  `createdate` varchar(50) default NULL COMMENT '发布时间',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='博客留言表';

DROP TABLE IF EXISTS `inst_message`;
CREATE TABLE `inst_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `sendId` int(10) DEFAULT NULL COMMENT '发送者ID',
  `recieveId` int(10) DEFAULT NULL COMMENT '接收者ID',
  `content` text COMMENT '消息内容',
  `sendTime` varchar(50) DEFAULT NULL COMMENT '发送时间',
  PRIMARY KEY (`id`),
  KEY `idx_message` (`recieveId`,`sendId`) 
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='消息实例表';

DROP TABLE IF EXISTS `inst_inform`;
CREATE TABLE `inst_inform` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `recieveId` int(10) DEFAULT NULL COMMENT '接收者ID',
  `content` text COMMENT '消息内容',
  `sendTime` varchar(50) DEFAULT NULL COMMENT '发送时间',
  `flag` int(10) DEFAULT NULL COMMENT '阅读状态:1已读',
  PRIMARY KEY (`id`),
  KEY `recieveId` (`recieveId`) 
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统通知表';

DROP TABLE IF EXISTS `inst_user`;
CREATE TABLE `inst_user` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `instCoderId` int(10) DEFAULT NULL COMMENT 'coder实例id',
  `creationDate` varchar(50) DEFAULT NULL COMMENT '注册日期',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `password` varchar(50) DEFAULT NULL COMMENT '密码',
  PRIMARY KEY (`id`),
  KEY `instCoderId` (`instCoderId`),
  KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户实例表';


DROP TABLE IF EXISTS `inst_coder`;
CREATE TABLE `inst_coder` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `picture` varchar(40) NOT NULL DEFAULT '1.jpg' COMMENT '用户头像',
  `nickname` varchar(50) DEFAULT NULL COMMENT '昵称',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `age` int(10) DEFAULT NULL COMMENT '年龄',
  `sex` int(10) DEFAULT NULL COMMENT '性别',
  `fame` int(10) DEFAULT NULL COMMENT '江湖声望值',
  `following` text COMMENT '我的关注(用户ID以;分隔)',
  `followers` text COMMENT '我的粉丝(用户ID以;分隔)',
  `instFactionId` int(10) DEFAULT NULL COMMENT '加入的帮派',
  `school` varchar(50) DEFAULT NULL COMMENT '学校',
  PRIMARY KEY (`id`),
  KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='coder实例表';

DROP TABLE IF EXISTS `inst_faction`;
CREATE TABLE `inst_faction` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `creatorId` int(10) DEFAULT NULL COMMENT '帮派创建者ID',
  `rank` int(10) DEFAULT NULL COMMENT '帮派等级',
  `name` varchar(50) DEFAULT NULL COMMENT '帮派名',
  `description` varchar(200) DEFAULT NULL COMMENT '帮派宣言',
  `creationDate` varchar(50) DEFAULT NULL COMMENT '创建日期',
  `deputyLeader` varchar(50) DEFAULT NULL COMMENT '副帮主(为用户ID,用;分隔)',
  `elite` varchar(200) DEFAULT NULL COMMENT '精英(为用户ID,用;分隔)',
  `member` text COMMENT '所有成员(为用户ID,用;分隔)', 
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='帮派实例表';

DROP TABLE IF EXISTS `dict_problem_difficulty`;
CREATE TABLE `dict_problem_difficulty` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `type` varchar(50) DEFAULT NULL COMMENT '(喽罗,精英,头目):对应题目的不同难度',
  PRIMARY KEY (`id`) 
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='难度字典表';

DROP TABLE IF EXISTS `dict_problem_algorithm`;
CREATE TABLE `dict_problem_algorithm` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `type` varchar(50) DEFAULT NULL COMMENT '算法的类型',
  PRIMARY KEY (`id`) 
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='算法字典表';

DROP TABLE IF EXISTS `dict_problem_structure`;
CREATE TABLE `dict_problem_structure` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `type` varchar(50) DEFAULT NULL COMMENT '数据结构的类型',
  PRIMARY KEY (`id`) 
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='数据结构字典表';

DROP TABLE IF EXISTS `dict_submit_result`;
CREATE TABLE `dict_submit_result` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `result` varchar(50) DEFAULT NULL COMMENT '结果(pending,judging,Accept,ComplieError,RuntimeError)',
  PRIMARY KEY (`id`) 
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='运行结果字典表';

DROP TABLE IF EXISTS `dict_problem_status`;
CREATE TABLE `dict_problem_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `status` varchar(50) DEFAULT NULL COMMENT '状态(待审和,已采纳,未采纳)',
  PRIMARY KEY (`id`) 
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='上传状态字典表';

DROP TABLE IF EXISTS `inst_push_problem`;
CREATE TABLE `inst_push_problem` (
  `id` int(10) NOT NULL auto_increment COMMENT 'ID',
  `instUserId` int(10) DEFAULT NULL COMMENT '题目上传者ID',
  `problemId` int(10) DEFAULT NULL COMMENT '题目实例表ID',
  `problemStatusId` int(10) DEFAULT NULL COMMENT '上传状态字典表ID',
  `addTime` varchar(50) DEFAULT NULL COMMENT '上传日期',
  PRIMARY KEY  (`id`),
  KEY `instUserId` (`instUserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='题目上传实例表';

DROP TABLE IF EXISTS `dict_problem`;
CREATE TABLE `dict_problem` (
  `id` int(10) NOT NULL auto_increment COMMENT 'ID',
  `problemType` int(10) DEFAULT 0 COMMENT '题目类型(默认0:普通题,否则为contest_id:默认不显示竞赛题目)',
  `problemAlgorithmId` int(11) DEFAULT NULL COMMENT '算法字典表ID',
  `problemStructureId` int(11) DEFAULT NULL COMMENT '数据结构字典表ID',
  `problemDifficultyId` int(11) DEFAULT NULL COMMENT '难度字典表ID',
  `title` varchar(200) DEFAULT NULL COMMENT '标题',
  `description` text COMMENT '题目描述',
  `inputDescription` text COMMENT '输入描述',
  `outputDescription` text COMMENT '输出描述',
  `rangeHints` text COMMENT '数据范围及提示',
  `inputTest` text COMMENT '样例输入',
  `outputTest` text COMMENT '样例输出',
  `timeLimit` int(10) DEFAULT 0 COMMENT '限时(ms)',
  `memoryLimit` int(10) DEFAULT 0 COMMENT '空间限制',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT = 1001 DEFAULT CHARSET=utf8 COMMENT='题目字典表';

INSERT INTO `dict_problem` VALUES (NULL, NULL, NULL, NULL, NULL, 'A+B问题', '输入两个整数A和B，输出他们的和。', '输入为一行，包含两个整数A，B。', '输出A与B的和','数据保证A与B都在2^31-1的范围内,数据保证A与B的和在2^31-1的范围内', '1 3', '4', '1000', '128000');
INSERT INTO `dict_problem` VALUES (NULL, NULL, NULL, NULL, NULL, 'Bat数', 'Bat从小喜欢奇特的东西，而且天生对数字特别敏感，一次偶然的机会，他发现了一个有趣的四位数2992，这个数，它的十进制数表示，其各位数字之和为2+9+9+2=22，它的十六进制数BB0，其各位数字之和也为22，同时它的十二进制数表示1894，其各位数字之和也为22，啊哈，真是巧啊。Bat非常喜欢这种四位数，由于他的发现，所以这里我们命名其为Bat数。但是要判断这样的数还是有点麻烦啊，那么现在请你帮忙来判断任何一个十进制的四位数，是不是Bat数吧。', '输入一个四位十进制数 n', '若n为Bat数，输出”YES”,否则输出”NO”', '对于2992 ：   \\n十进制数为：  2992  其各位数字之和为2+9+9+2  =22\\n十六进制数为：BB0   其各位数字之和为B+B+0     =22\\n十二进制数为：1894  其各位数字之和为1+8+9+4 =22', '2992', 'YES','1000', '128000');
INSERT INTO `dict_problem` VALUES (NULL, NULL, NULL, NULL, NULL, '叔叔的农场', 'Bat的叔叔最近新开了一个农场，准备用来养牛。已知农场第一年有一头母牛，它每年年初生一头小母牛。每头小母牛从第四个年头开始，每年年初也生一头小母牛。请帮Bat计算出第n年的时候，共有多少头母牛？', '输入一个数字n', '输出一个数代表第n年母牛的个数', '(n<=50)\\n前五年母牛个数如下：  \\n第一年母牛的个数：  1\\n第二年母牛的个数：  2\\n第三年母牛的个数：  3  \\n第四年母牛的个数：  4    \\n第五年母牛的个数：  6', '5', '6', '1000', '128000');
INSERT INTO `dict_problem` VALUES (NULL, NULL, NULL, NULL, NULL, '热爱汉字', 'Bat是一个美籍华人，他对汉字特别感兴趣。他从叔叔那里得到了一段字符串，出于对汉字的热爱，他想给每个汉字后面加一个标记。对于输入的字符串，查找其中的汉字，在该汉字后面插入字符串“(love)”。', '输入一个字符串，只包含汉字和英文字符', '输出插入“(love)”后的字符串', '（不包含空格，字符串的长度<1000）\\n该环境下为utf-8编码，该编码下 ， 一个汉字=3个字节 ， 且这三个字节ASCLL码值都为负值。如 :\\n\"腾\" 存储在s[0]、s[1]、s[2]三个字节中。\\n满足条件：s[0]<0&&s[1]<0&&s[2]<0', '阿里bat百度腾讯', '阿(love)里(love)bat百(love)度(love)腾(love)讯(love)', '1000', '128000');
INSERT INTO `dict_problem` VALUES (NULL, NULL, NULL, NULL, NULL, '最大素数因子', '今天Bat突发奇想，要找出整数N的最大素数因子 ，但他不知道该怎么做，于是向你求助。', '输入一个数字N', '输出N的最大素数因子',  '(2<=N<=10^3)\\n10的因子有1、2、5、10，其最大的素数因子为5', '10', '5', '1000', '128000');
INSERT INTO `dict_problem` VALUES (NULL, NULL, NULL, NULL, NULL, '字符串统计', 'Bat是一个淘气的小朋友，有一天他得到了一个字符串，他想统计一下字符串中的小写字母(‘a’-’z’)的个数，快来帮帮他吧。', '输入一个字符串', '输出一个整数，代表小写字母的个数。','字符串中不包含空格、字符串长度<10000',  'AabcBB', '3',  '1000', '128000');
INSERT INTO `dict_problem` VALUES (NULL, NULL, NULL, NULL, NULL, '彩色丝带', 'Bat有一个彩色的丝带，它可以表示为一个只包含小写字母字符串，每个字母代表一个颜色。现在他想把丝带分成几部分，保证每个部分没有重复的颜色。请你告诉他划分彩带一共有多少种不同的方式。', '输入一个字符串，表示彩色的丝带。(字符串只包含小写字母，字符串长度<10^5)', '输出一个数字n，表示对答案取模后的数字。', '由于数字会非常大，输出的答案对 1000000007 取余.', 'abbc', '4',  '1', '2');

DROP TABLE IF EXISTS `inst_submit`;
CREATE TABLE `inst_submit` (
  `id` int(10) NOT NULL auto_increment COMMENT 'ID',
  `problemId` int(10) DEFAULT NULL COMMENT '题目表ID',
  `type` int(10) DEFAULT 0 COMMENT '提交类型(默认0:普通题,否则为contest_id)',
  `instUserId` int(10) DEFAULT NULL COMMENT '提交用户ID',
  `language` int(10) DEFAULT NULL COMMENT '提交语言',
  `submitTime` varchar(50) DEFAULT NULL COMMENT '提交时间',
  `runningTime` int(10) DEFAULT NULL COMMENT '耗时(ms)',
  `runningMemory` int(10) DEFAULT NULL COMMENT '所占空间',
  `submitResultId` int(11) DEFAULT NULL COMMENT '运行结果字典表ID',
  `resultDescription` text COMMENT '结果描述(AC,ComplieError:错误信息,RuntimeError:通过的比率)',
  `code` text DEFAULT NULL COMMENT '提交代码',
  PRIMARY KEY  (`id`),
  KEY `instUserId` (`instUserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='提交记录实例表';

