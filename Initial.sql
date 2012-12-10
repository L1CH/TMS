/*
MySQL Backup
Source Server Version: 5.5.28
Source Database: tms
Date: 2012/12/10 12:51:28
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
--  Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `enable` varchar(255) NOT NULL,
  `login_name` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `login_name` (`login_name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `comment_temple`
-- ----------------------------
DROP TABLE IF EXISTS `comment_temple`;
CREATE TABLE `comment_temple` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `dbpingyu` varchar(255) NOT NULL,
  `grade` varchar(255) NOT NULL,
  `pypingyu` varchar(255) NOT NULL,
  `zdpingyu` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `dabian_record`
-- ----------------------------
DROP TABLE IF EXISTS `dabian_record`;
CREATE TABLE `dabian_record` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `student_id` bigint(20) NOT NULL,
  `teacher_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `news`
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `message` varchar(255) NOT NULL,
  `receiver` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `paper`
-- ----------------------------
DROP TABLE IF EXISTS `paper`;
CREATE TABLE `paper` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `filename` (`filename`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `pingyue_record`
-- ----------------------------
DROP TABLE IF EXISTS `pingyue_record`;
CREATE TABLE `pingyue_record` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `student_id` bigint(20) NOT NULL,
  `teacher_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `preview`
-- ----------------------------
DROP TABLE IF EXISTS `preview`;
CREATE TABLE `preview` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `student_id` bigint(20) NOT NULL,
  `subject_order` int(11) NOT NULL,
  `thesis_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `thesis_id` (`thesis_id`,`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `student`
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `answer1` varchar(255) NOT NULL,
  `answer2` varchar(255) NOT NULL,
  `answer3` varchar(255) NOT NULL,
  `attitude` varchar(255) NOT NULL,
  `credit` double NOT NULL,
  `db1grade` int(11) NOT NULL,
  `db2grade` int(11) NOT NULL,
  `dbpingyu` varchar(255) NOT NULL,
  `duty` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `grade` int(11) NOT NULL,
  `ktup` varchar(255) NOT NULL,
  `login_name` varchar(255) NOT NULL,
  `major` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `progress` varchar(255) NOT NULL,
  `proj_desc` varchar(255) NOT NULL,
  `py1grade` int(11) NOT NULL,
  `py2grade` int(11) NOT NULL,
  `pypingyu` varchar(255) NOT NULL,
  `quality` varchar(255) NOT NULL,
  `question1` varchar(255) NOT NULL,
  `question2` varchar(255) NOT NULL,
  `question3` varchar(255) NOT NULL,
  `remark` varchar(255) NOT NULL,
  `rwsup` varchar(255) NOT NULL,
  `stu_class` varchar(255) NOT NULL,
  `thes_desc` varchar(255) NOT NULL,
  `thesis_id` bigint(20) NOT NULL,
  `thesisup` varchar(255) NOT NULL,
  `transup` varchar(255) NOT NULL,
  `warn` varchar(255) NOT NULL,
  `zd1grade` int(11) NOT NULL,
  `zd2grade` int(11) NOT NULL,
  `zd3grade` int(11) NOT NULL,
  `zd4grade` int(11) NOT NULL,
  `zdpingyu` varchar(255) NOT NULL,
  `questionanswer` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `login_name` (`login_name`)
) ENGINE=InnoDB AUTO_INCREMENT=309 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `student2`
-- ----------------------------
DROP TABLE IF EXISTS `student2`;
CREATE TABLE `student2` (
  `loginName` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `student_class`
-- ----------------------------
DROP TABLE IF EXISTS `student_class`;
CREATE TABLE `student_class` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `student_major`
-- ----------------------------
DROP TABLE IF EXISTS `student_major`;
CREATE TABLE `student_major` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `student_query`
-- ----------------------------
DROP TABLE IF EXISTS `student_query`;
CREATE TABLE `student_query` (
  `id` varchar(255) DEFAULT NULL,
  `thesis_id` varchar(255) DEFAULT NULL,
  `thesis_id_2` varchar(255) DEFAULT NULL,
  `answer1` varchar(255) DEFAULT NULL,
  `answer2` varchar(255) DEFAULT NULL,
  `answer3` varchar(255) DEFAULT NULL,
  `attitude` varchar(255) DEFAULT NULL,
  `credit` varchar(255) DEFAULT NULL,
  `db1grade` varchar(255) DEFAULT NULL,
  `db2grade` varchar(255) DEFAULT NULL,
  `dbpingyu` varchar(255) DEFAULT NULL,
  `duty` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `grade` varchar(255) DEFAULT NULL,
  `ktup` varchar(255) DEFAULT NULL,
  `login_name` varchar(255) DEFAULT NULL,
  `major` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `progress` varchar(255) DEFAULT NULL,
  `proj_desc` varchar(255) DEFAULT NULL,
  `py1grade` varchar(255) DEFAULT NULL,
  `py2grade` varchar(255) DEFAULT NULL,
  `pypingyu` varchar(255) DEFAULT NULL,
  `quality` varchar(255) DEFAULT NULL,
  `question1` varchar(255) DEFAULT NULL,
  `question2` varchar(255) DEFAULT NULL,
  `question3` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `rwsup` varchar(255) DEFAULT NULL,
  `stu_class` varchar(255) DEFAULT NULL,
  `thes_desc` varchar(255) DEFAULT NULL,
  `thesisup` varchar(255) DEFAULT NULL,
  `transup` varchar(255) DEFAULT NULL,
  `warn` varchar(255) DEFAULT NULL,
  `zd1grade` varchar(255) DEFAULT NULL,
  `zd2grade` varchar(255) DEFAULT NULL,
  `zd3grade` varchar(255) DEFAULT NULL,
  `zd4grade` varchar(255) DEFAULT NULL,
  `zdpingyu` varchar(255) DEFAULT NULL,
  `questionanswer` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `sys_permission`
-- ----------------------------
DROP TABLE IF EXISTS `sys_permission`;
CREATE TABLE `sys_permission` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) NOT NULL,
  `prop_key` varchar(255) NOT NULL,
  `prop_val` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `prop_key` (`prop_key`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `sys_property`
-- ----------------------------
DROP TABLE IF EXISTS `sys_property`;
CREATE TABLE `sys_property` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) NOT NULL,
  `prop_key` varchar(255) NOT NULL,
  `prop_val` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `prop_key` (`prop_key`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `teacher`
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `dept` varchar(255) NOT NULL,
  `login_name` varchar(255) NOT NULL,
  `mail` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `subnum` int(11) NOT NULL,
  `tel` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `login_name` (`login_name`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `teacher_dept`
-- ----------------------------
DROP TABLE IF EXISTS `teacher_dept`;
CREATE TABLE `teacher_dept` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `thesis`
-- ----------------------------
DROP TABLE IF EXISTS `thesis`;
CREATE TABLE `thesis` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `assign` varchar(255) NOT NULL,
  `major_restrict` varchar(255) NOT NULL,
  `mode` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `property` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `teacher_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKCBDB5ACC126BC343` (`teacher_id`),
  CONSTRAINT `FKCBDB5ACC126BC343` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=640 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records 
-- ----------------------------
INSERT INTO `admin` VALUES ('1','true','a','ADMIN','a'), ('2','true','admin','ADMIN','admin');
INSERT INTO `news` VALUES ('7','test message from teacher','teacher','teacher'), ('8','test message from admin','admin','admin'), ('9','test message to all','all','All'), ('11','student test message','student','student');
INSERT INTO `paper` VALUES ('1','Paper1','Paper1.pdf'), ('2','Paper2','Paper2.pdf'), ('3','Paper3','Paper3.pdf'), ('4','Paper4','Paper4.pdf');
INSERT INTO `student` VALUES ('307','','','','','0','0','0','','','xxx@xxx','男','0','','s1','Net','S1','s1','xxx','','','0','0','','','','','','','','0801','','0','','','','0','0','0','0','',''), ('308','','','','','0','0','0','','','xxx@xxx','男','0','','s2','SE','S2','s2','xxx','','','0','0','','','','','','','','0801','','0','','','','0','0','0','0','','');
INSERT INTO `student2` VALUES ('080400710','1989.0425','muxiarefu@126.com','15121034230'), ('080400720','reeseed108891','dhc-rephoenix@hotmail.com','15618017980'), ('080400819','dusheng1990DS','ds125055632@126.com','13585642178'), ('080401118','zhoujinfeng','dafeng_123@126.com','18221015632'), ('080401001','080401001','yinfangshary@sina.com','13585773817'), ('080400315','dangaobread520','080400315@mail.dhu.edu.cn','13916845563'), ('080401111','080401111','songkaili2005@163.com','13917020895'), ('080400708','874627566254','hxdelj@foxmail.com','13761225564'), ('080400316','8457910','yuruiqiong@yahoo.cn','15201869650'), ('080401107','linjiani','linjiani@dhu.edu.com','15001825559'), ('080401013','87541542','candywang306@sina.com','13761221290'), ('080401010','20081989','pby1025@gmail.com','13611715893'), ('080401305','07332280003','jianghui_niuniu@126.com','15021711304'), ('080400613','ai19760607','answer03@hotmail.com','13901765555'), ('080400114','716829','wendolphin@126.com','15801909865'), ('080400421','261030','hzhq0524@163.com','15121032985'), ('080400518','zls8224678','sarasfo@sina.com','15921530950'), ('080400810','mblwgq722615','myygrace@163.com','13585640885'), ('080401311','sj19891109','sunjing_119@163.com','18802100813'), ('080400508','liuhuiting','cheapandchic@yeah.net','13918049858'), ('080400603','happyxia2008','dhdx2008@126.com','15618730081'), ('080401209','tomokochan','sugarnuo@126.com','13671918966'), ('080401202','945dingqian@163','945dingqian@163.com','15021065917'), ('080400822','harry1949','shadylujie@gmail.com','15801927792'), ('080400723','10116','louyujun_1225@126.com','15021711251'), ('080400722','78963','tghensuo@126.com','13524828230'), ('080400920','a3141592653589','857271148@qq.com','15000578738'), ('080401201','991676chenchen','happyeverydaych@sina.com','15021768753'), ('080401306','8990961220','261387492@qq.com','18646789262'), ('080400501','BDM001215','bdm778899@126.com','15021296890'), ('080400602','xixi2008xx','chenxx23@gmail.com','15800608462'), ('080400112','sunxin071288','hester.88@hotmail.com','13916142940'), ('080401103','0803060401','myG_2008@163.com','13585853703'), ('080400121','30393346','GILZ_1989@126.COM','15021817271'), ('080401019','G19900112lf','123050448@qq.com','15021659586'), ('080400325','bbuusstteerr','jaffarbuster@163.com','13651665954'), ('080400203','198905837','madyi@126.com','15121032981'), ('080401222','13414882048','dongning.ou@hotmail.com','15821378829'), ('080400812','19900208:)','mikichen9028@gmail.com','13761407163'), ('080400314','yuyoushui','wbhliute0518@163.com','15121018807'), ('080400320','342664141','964645136@qq.com','15121032989'), ('080400504','friend','beiyangdebing@163.com','15800861372'), ('080400907','32326675','dolphinlulu2008@sina.com','13918345201'), ('080401114','19900719','xurunjing@mail.dhu.edu.cn','13817733152'), ('080400902','172737','cyx_8888@126.com','13817277715'), ('080401108','891118','xml_56@126.com','15121018760'), ('080400108','85526127','520guoguow@sina.com','13916087507'), ('080400814','5211314','13816427127@139.com','13816427127'), ('080400120','891125','csymoon@163.com','13916912670'), ('080400416','cynthiayu1012','yym191012@126.com','15021832370'), ('080400312','520','66tale@163.com','15021058795'), ('080400305','198809','sahara_2017@163.com','13585637774'), ('080400821','58036743','liyuanjunbs@163.com','13585859951'), ('080401007','lff900518','linfeifei1990@163.com','13764992610'), ('080400701','080400701','melody_0407@live.cn','13661777720'), ('080400521','wakawaka','sunrise0211@gmail.com','13564154055'), ('080400905','8271158','huangsai271@126.com','15121032770'), ('080400213','396131033','981620964@qq.com','15000578898'), ('080401304','985824','hlxo991@163.com','15601735629'), ('080400806','784523','534590462@qq.com','15021675272'), ('080401017','646489','viola_yiyuzhang@hotmail.com','134821535247'), ('080400509','wy3223106','495077988@qq.com','13917021853'), ('080400401','AIXUANBAI1','baizhen121245@sina.com','15121094163'), ('080400313','8287738','wangqiannan5@126.com','13564788168'), ('080400214','13917630396wlx','ashilydoudou@126.com','13917630396'), ('080400813','xxdsjyxx19900727','jiaweiziquan@vip.qq.com','15121018202'), ('080401119','85234576gh','guhao632561754@163.com','15021831586'), ('080400619','112233','mermaidzyl@163.com','18850601540'), ('080400218','900211zh','zhewww@126.com','15921908686'), ('080400210','1986712mty','mayuanyep@yahoo.cn','13585640825'), ('080400409','wendy5188158','wendylouqianqian@163.com','13816545094'), ('080400403','1121231234','ejiang_1016@126.com','15021255830'), ('080400526','sainnbx','sainnbx@gmail.com','15800896096'), ('080400402','1123581321','chensongczz@gmail.com','15021659497'), ('080400323','889985','liuyasai@126.com','13795494635'), ('080400324','080400324','575917404@qq.com','15121032982'), ('080400523','3038357','148274995@qq.com','13764767386'), ('080400311','59791062','rd1207@163.com','13774428265'), ('080401206','850825680','wokeyiba@sina.com','15121032761'), ('080401207','1988zhuzhu1030','elaine_relack@163.com','15121032978'), ('080400726','ll515999','yangyanglele8888@163.com','13818467470'), ('080400808','5597258','liuning597258@163.com','15021841338'), ('080400301','fxkaziki','909782106@qq.com','13564032668'), ('080400514','wojiaowuyunmei','080400514@mail.dhu.edu.cn','13917973109'), ('080401307','890718555','lb313551812@126.com','15021709403'), ('080401022','2783582','luorui2010@sina.com','15121032976'), ('080401104','19891201','heqingdan123@163.com','13585855107'), ('080400621','911000','hurui__@126.com','15000578910'), ('080400625','1235813','sid1235813@gmail.com','13801787624'), ('080401221','626733','LCLULULULU@126.com ','13917314754 '), ('080400916','720820','zhanghh1@126.com','15026902268'), ('080400604','cdma123','libby_han@126.com','15021612167'), ('080401004','hqhlzl','hqhlzlwww@163.com','13585859640'), ('080401122','900827','408598119@qq.com','13764061932'), ('080401106','115842','fangzhi_li@mail.dhu.edu.cn','15121018748'), ('080401124','a4321b','wuerlong09@163.com','15121032750'), ('080400713','890709','sevenwxt@gmail.com','13061777990'), ('080401313','1989319424','apple319424@126.com','13916741040'), ('080401215','58908020','Yolanda.yaolq@yahoo.cn','13817512451'), ('080400404','198822','080400404@163.com','15121034007');
INSERT INTO `student2` VALUES ('080401314','19891017','xuweiyu1017@hotmail.com','13651887580'), ('080400705','08040705','holia119@hotmail.com','15201972208'), ('080400414','08208911','feiying082@126.com','15121018130'), ('080401025','652289172','yaomeng1000@163.com','15021671658'), ('080401223','8912010407','sunchangle891201sj@yahoo.cn','13816405992'), ('080400614','1988010166','applexiaosmile@163.com','13818824295'), ('080400517','7023kl','zsq7023@163.com','15121034012'), ('080401015','gaoyuan','yyj12345678@126.com','15201971815'), ('080400411','637827530','rongjq884@163.com','13816973530'), ('080400727','0303hustle','0303hustle,gogaine@126.com','15121032753'), ('080401316','291629','zero_zj2009@yahoo.cn','15921469585'), ('080400406','135242343','ar0super@126.com ','15121032991 '), ('080401310','081351010qs','qskitty@126.com','15021819536'), ('080401105','111111','clarisaying@yahoo.com.cn','15000847853'), ('080400827','zmx11235811','zhumingxiao88@126.com','15026866774'), ('080400901','080400901','yanhancaolu@163.com','15021610845'), ('080400413','833488','uknowmicky0518@126.com','13651782912'), ('080401011','1990','sunny_19@126.com','15601735625'), ('080400412','1991429611311','tycgla@126.com','15921831597'), ('080400506','19980204','lily08li@163.com','15021819035'), ('080400212','123456','kasun_mu@yahoo.cn','13611927417'), ('080401301','022917ccll','539942195@qq.com','15121032752'), ('080401309','900214','oulumantian@126.com','15102112076'), ('080401302','7320580712','qilyy_lun@126.com','15021832486'), ('080400205','080400205','zhiiiz@yeah.net','13661834369'), ('080400712','wobuzhidao','cloris_tian@163.com','13472679518'), ('080401317','Hero&Micky','hericky@yahoo.cn','13764767764'), ('080400516','081305209','yujiaying_ivy@126.com','13621640991'), ('080400319','mm19891186','jojolychee@hotmail.com','13564640506'), ('080401117','13847609815','457954896@qq.com','15021062960'), ('080400318','shuichiyuki','368740992@qq.com','13818677423'), ('080400119','zo49682290','zws_xh@yahoo.com.cn','13482602879'), ('080401320','6490942518','leichixiaonei@126.com','13585855494'), ('080400804','199000','hantingting420@126.com','13661684762'), ('080401323','456272','tianemail@126.com','15021707620'), ('080401321','mygerrard','ldy8907@163.com','13764721581'), ('080401312','900914','yqhappyjourney@tom.com','15021711619'), ('080401211','367428','13671889007@126.com','13671889007'), ('080401224','wuhao555','1002687835@qq.com','15121032751'), ('080401213','13831591841','974400460@qq.com','13917002810'), ('080401326','0804013','zjpevo@126.com','13701687460'), ('080401121','13737477161','15121032009@126.com','15121032009'), ('080401116','13310092193','kweeny@126.com','13795361011'), ('080401325','19890906','yhl3837@163.com','13917353432'), ('080400802','sqxy0617','sqxychen0617@126.com','13585799041'), ('080400711','0222sc','cjhasc@sina.com','15121032763'), ('080401220','775866i','244773842@qq.com','15021058249'), ('080400113','195923','365521641@qq.com','15800891817'), ('080400801','601cao','cosa1990@163.com','15800970523'), ('080400803','GYJ629xyz','xyz_gao@163.com','18917223192'), ('080401113','13818076509','wy_0927@126.com','13701998602'), ('080401219','000426','kaitoday@qq.com','15000578788'), ('080400926','590907','magic_eclipse@126.com','15001737201'), ('080400823','196348','414717580@qq.com','13918374944'), ('080401212','080401212','comeonjf@gmail.com','15921279390'), ('080400714','50344920','jingyan90713@sina.com','15002178696'), ('080401208','080401208','303391215@qq.com','15121020012'), ('080400906','123456','980290898@qq.com','15121032769'), ('080400211','080400211','jannieqiu@126.com','15000608377'), ('080400924','292929292','wangzhixin8888@126.com','15121032766'), ('080400622','199061','lixingrun61@163.com','15121034006'), ('080401315','123456','yao_li_wen@hotmail.com','13661412113'), ('080400207','8248643abc','egoday@163.com','15021078779'), ('080400620','123456','chenyu1989119@126.com','13788995369'), ('080401226','198912203816','zhh006@yahoo.com','13816796926'), ('080400317','6351183','zhangnian6351183@163.com','13916261572'), ('080400626','123456','510263120@qq.com','13472503671'), ('080400624','669977','lixingrun61@163.com','13764722505'), ('080400125','aihuan01','qwondhu08@126.com','15121032996'), ('080400913','1989102','cinderella_7@msn.cn','15121034228'), ('080400715','199002','yangmiao1500350@Yeah.net','15021610350'), ('080400824','19880929','379296450@qq.com','15021236586'), ('080400718','ttkx19901009','ttkx19901009@126.com','15000578752'), ('080400309','19891025','liuqinxin.student@sina.com','15021712034'), ('080400826','monkey250','wing616@126.com','15001825515'), ('080400307','11031990','228237173@qq.com','15021882996'), ('080400910','113828118','nickey15@hotmail.com','15121034234'), ('080400425','wangxing520110','wangxing520110@163.com','15121032977'), ('080400611','19891031','xiangxiangsisi@yeah.net','13585862714'), ('080400820','650519','437543041@qq.com','13816908072'), ('080401322','5961546','pan5961546@yeah.net','13816406892'), ('080401016','czjw250646','zjwendh@126.com','13641601292'), ('080401123','2819561','songshuoyang3@126.com','15921307097'), ('080400322','903188','lihx@mail.dhu.edu.cn','13917975382'), ('080401023','shi1989hao46','shihaobuaini@126.com','13917368208'), ('080400507','19900425a','liying00507@163.com','13482205468'), ('080400227','7288','yuanjie1988@sina.com','15121032984'), ('080400426','900321','xtxxp90@126.com','15900596471'), ('080401318','080401318','yuya22@126.com','18801919250'), ('080400209','527989','0livialiuyx@126.com','13761803548'), ('080401020','080401020','461268524@qq.com','13764930740'), ('080400615','5270106','yanglili19891114@163.com','13651646705'), ('080401009','justinthesky303','luobo0406@126.com','13858162525'), ('080400707','080400707','wizzlovediana@qq.com','15121032760'), ('080400608','080400608','994805252@qq.com','13818824508'), ('080400513','051850wwq','cambridge23@126.com','13916686957'), ('080401102','080401102','ceaso@126.com','13585852032'), ('080400226','okwhiz','xiakai_cn@hotmail.com','13564927089'), ('080401120','890806','jackey6058@126.com','13671669065'), ('080400127','88888888','xingy90@126.com','13918486098');
INSERT INTO `student2` VALUES ('080400524','080400524','670601001','13661987710'), ('080400201','2311765','bayin_hua@126.com','13621811042'), ('080400410','miyoko1024','melinda0506@126.com','15000186826'), ('080400123','1990545352','ljfmc2@163.com','13918141754'), ('080400222','12081229','lchj1229@163.com','15001825510'), ('080400208','LIUer','myboxhere@163.com','15121032994'), ('080400216','yuzhan1314happy@','anxinbaoer.happy@163.com','15021658694'), ('080400927','638491','362206140.@qq.com','15921634851'), ('080400510','8284488zaizhong','blary@yahoo.cn','13564772475'), ('080400221','ybbihc','weboguo@126.com','15121032998'), ('080401217','5210125','janebula@163.com','13917915175'), ('080400126','7696258','why163sha@163.com','15121032988'), ('080400327','900625','haifeng0625@126.com','15121032992'), ('080400115','19901221','xxj31415926@yahoo.cn','13611989958'), ('080400527','zhanghaogauss','gausszhang@gmail.com','13917917551'), ('080400220','315701','holycl2008@126.com','15001700116'), ('080401003','379279','gongyixin89@126.com','13585504169'), ('080400206','1078581874','jinghuitextile@163.com','15121032995'), ('080400914','BECKY_1990','becky_1990@126.com','15001703947'), ('080400917','02341460751','zhangmyshow@yahoo.com.cn','15021611137'), ('080400104','021788267','xiaoning_guan@163.com','15000608389'), ('080400908','199002232326','yenoml@163.com','13817679671'), ('080400911','037103700','shenyan20082008@126.com','15021832583'), ('080400923','13957908135','sjwyiwu@163.com','15021078775'), ('080400102','708351012','meggie19911117@gmail.com','13524172075'), ('080400816','3413926','billier10@sina.cn','13482218519'), ('080400520','9413918877358','ddk2811@hotmail.com','13918877358'), ('080400111','tydhan','totoqiu@sina.com','15000608386'), ('080401018','585909','zhoubingjie_1990@126.com','13402135516'), ('080400106','aileen1990','aileen90@126.com','15021832704'), ('080400605','080400605','evilchun@sina.com','13918603098'), ('080400418','88409258','ukhero@163.com','15021817762'), ('080400117','6841530','080400117@mail.dhu.edu.cn','15121034014'), ('080400408','fighting','Liuhaoli90513@hotmail.com','13472436111'), ('080400124','002202','benq1@live.cn','13817257028'), ('080200108','037103700','ggyf1991@yahoo.cn','15121026595'), ('080400303','080410303','dujiao12345@163.com','13916582954'), ('080401125','1125','yaonantianxia@163.com','15000578751'), ('080400223','230142','wjliuok@163.com','13585890424'), ('080401216','codegeass9049','Yuuuuuuuuuki@163.com','15921681710'), ('080400511','63028153','cindy_rong@mail.dhu.cn','13774482748'), ('080400101','anxiaoxiao','anxiaoxiao@mail.dhu.edu.cn','15000578735'), ('080400922','07383521921','icebottleboy@163.com','15121032755'), ('080401303','138015','caelyn0601@163.com','13917915087'), ('080400525','080400525','greatwyb@163.com','13817024122'), ('080400721','hzy1990090458','huzhengyu1990@sina.com','13585802524'), ('080401026','164255129','zhengyao_164255129@163.com','13761526898'), ('080400818','19640202','zihan0805520@126.com','15000250437'), ('080400627','123456','wuyangz123@163.com','15000578885'), ('080400811','64787642','Shenwusang@yahoo.com.cn','13818449825'), ('080400519','15121032993','zouweiqinying@163.com','15121032993'), ('080400407','xkpp20080123','eva_lee_p@sina.com','18666605404'), ('080400110','900131','leslie_m@126.com','13917522031'), ('080400724','900627','shachanghong2008@yahoo.cn','15121031990'), ('080401024','3561133','weixiangcan@126.com','15121032765'), ('080400422','woshixueshen22','feihuaxiazi@163.com','18221093775'), ('080400225','900303','873369408@qq.com','13816238082'), ('080400921','shuanghun1','delgrade@163.com','15000127074'), ('080401324','19891219','674770018@qq.com','150002300320'), ('080400725','1988W06Zh26l','owenjay0725@126.com','15121034288'), ('080400405','8182210','xiangyuan.dwh@gmail.com','15121034005'), ('080401203','5860198992','gujingwei89@yahoo.cn','15216783914'), ('080400219','345016458','zxqiwell@yahoo.cn','15026912602'), ('080400415','8202996','380304102@qq.com','15000608369'), ('080401225','123','howeidt@126.com','15121032979'), ('080400617','080400617','714226029@qq.com','15121034010'), ('070400702','154887','784297665@qq.com','15821204774'), ('080120225','2886193','506847811@qq.com','0085268563655'), ('080400202','9006110022','tiantian.christine@163.com','13641958924'), ('070400107','qq168168','may1989@yahoo.cn','13795242537'), ('080400522','20100306kotw','547806590@qq.com','13661415374'), ('080401110','080401110','candypengpd@163.com','15121032746'), ('080400427','846969984','oushinia@163.com','15121034011'), ('080400310','638299','mayuehan1990@163.com','15000252477'), ('080400805','baobao20081221','qinqin_huang@126.com','13585910862'), ('070400406','956956956','jinpingfighting@163.com','13817957795'), ('080400109','zslx19900526','1002090147@qq.com','13621972943'), ('080400308','19900604','1037553658@qq.com','15121034008'), ('080401218','zhoulumin1989715','zhoulmlstk@163.com','15021299432'), ('080401112','080401112','494567176@qq.com','13671717649'), ('080401210','080401210','pengyao-2008@163.com','15021667239'), ('080400618','sy350131919','zy_346291520@126.com','15002131503'), ('080400321','hytwbattlenet','Soap0123@163.com','15121032990'), ('070400404','08517513021gbz','gbz.good@163.com','13817957765'), ('070400403','janeavril','aajane@126.com','13916788539'), ('2100129','angel168','liguanzhi168@163.com','18801623467'), ('080400304','13873284062','guoxing_dhu@163.com','15021659137'), ('080400607','lina91011','lina2005708@yahoo.com.cn','15121034232'), ('080140114','080140114jz','jiangzhu1798@163.com','15021707671'), ('080401006','520416','mingmingde00@163.com','13764721786'), ('080400423','0301152280','liuyang_20081989@163.com','13651782716'), ('08001004','zzy19880921','584244542@qq.com','15026902633'), ('080400419','579635105487','tracyzhuang5487@yahoo.com.cn','13482815807'), ('080400610','2005121567','stella9067@163.com','13816957167'), ('080400107','666666','lwq606@qq.com','13501913124'), ('080400302','748264302','cs203@126.com','15021612432'), ('080400215','x080400215','xuzhandjie@163.com','15021668027'), ('080401014','080401014','candywang306@sina.com','13585800427'), ('080400609','58679767','sherryluyan@163.com','15002117037'), ('080400817','6893wcxy','zhangxiaoy26@163.com','15121032747');
INSERT INTO `student2` VALUES ('070401201','070401201','chenshuang_0605@yahoo.com.cn','13788915403'), ('080400512','13775904571','tangjh137@sina.com','13564796426'), ('080400326','080400326','xiaopeng8933@hotmail.com','15201979596');
INSERT INTO `student_class` VALUES ('1','0801'), ('2','0802');
INSERT INTO `student_major` VALUES ('1','SE'), ('2','Net'), ('3','OS');
INSERT INTO `sys_permission` VALUES ('1','Allow student info','student:info:show','1'), ('2','Allow student mod info','student:info:mod','1');
INSERT INTO `sys_property` VALUES ('4','max pre-assign(%)','pct_max_assign','30','string');
INSERT INTO `teacher` VALUES ('75','CS','t1','xxx@xxx','T1','t1','8','xxx'), ('76','SE','t2','xxx@xxx','T2','t2','8','xxx');
INSERT INTO `teacher_dept` VALUES ('1','CS'), ('2','SE');
INSERT INTO `thesis` VALUES ('636','','SE,Net,OS','mode1','T11','property1','type1','75'), ('637','','SE,Net,OS','mode1','T12','property1','type1','75'), ('638','','SE,Net,OS','mode1','T21','property1','type1','76'), ('639','','SE,Net,OS','mode1','T22','property1','type1','76');
