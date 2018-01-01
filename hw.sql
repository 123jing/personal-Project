
#设置MySQL客户端连接服务器所用字符集为UTF8
SET NAMES UTF8;
#丢弃数据库(如果存在的话)hw
DROP DATABASE IF EXISTS hw;
#创建数据库hw，使用字符集为UTF8
CREATE DATABASE hw CHARSET=UTF8;
#进入数据库hw
USE hw;

/*创建“商品模块”相关的表*/
#创建手机型号表
CREATE TABLE hw_mobile_family(
  fid INT PRIMARY KEY AUTO_INCREMENT,
  fname VARCHAR(32)
);
INSERT INTO hw_mobile_family VALUES
(NULL,'荣耀系列'),
(NULL,'HUAWEI P系列'),
(NULL,'荣耀畅玩系列'),
(NULL,'HUAWEI Mate系列'),
(NULL,'HUAWEI nova系列'),
(NULL,'HUAWEI 麦芒系列'),
(NULL,'华为畅享系列'),
(NULL,'移动4G+专区');

#创建手机表
CREATE TABLE xz_mobile(
  lid INT PRIMARY KEY AUTO_INCREMENT,
  fid INT,              #所属型号家族编号
  title VARCHAR(128),         #主标题
  subtitle VARCHAR(128),      #副标题
  price DECIMAL(10,2),        #价格
  subpic VARCHAR(128),        #小图片
  code INT,                   #商品编码
  colors VARCHAR(64),         #规格/颜色
  type VARCHAR(64),           #制式：全网通配
  disk VARCHAR(32),           #硬盘容量及类型
  combo VARCHAR(64),          #套餐

  lname VARCHAR(32),          #商品名称
  shelf_time BIGINT,          #上架时间
  memory VARCHAR(32),         #内存容量
  resolution VARCHAR(32),     #分辨率  
  cpu VARCHAR(32),            #处理器
  video_memory VARCHAR(32),   #显存容量
  RAM VARCHAR(64),            #运行内存
  ROM VARCHAR(64),            #机身内存  
);
INSERT INTO xz_mobile VALUES
(1,1,'Apple MacBook Air 13.3英寸笔记本 银色(Core i5 处理器/8GB内存/128GB SSD闪存 MMGF2CH/A)','5月焕新季，领券买新机！神券满6000减600！一体成型金属机身，纤薄轻巧，长达12小时续航',6988,'*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货','双核i5/8GB内存/128GB闪存','AppleMacBook Air','MacOS','8G','1920*1080','集成显卡','Intel i5低功耗版','其它','轻薄本','128G固态','<div class="content_tpl"> <div class="formwork">   <div class="formwork_img"><br></div><div class="formwork_img">    <img alt="" class="" src="img/product/detail/57b15612N81dc489d.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_img">    <img alt="" class="" src="//img20.360buyimg.com/vc/jfs/t2683/60/4222930118/169462/233c7678/57b15616N1e285f09.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_text">    技术规格请前往 www.apple.com/cn/macbook-air/specs.html 查看完整内容。</div></div></div>',150123456789,2968,true),
(2,1,'Apple MacBook Air 13.3英寸笔记本 银色(Core i5 处理器/8GB内存/256GB SSD闪存 MMGG2CH/A)','5月焕新季，领券买新机！神券满8000减800！一体成型金属机身，纤薄轻巧，长达12小时续航',8268,'*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货','双核i5/8GB内存/256GB闪存','AppleMacBook Air','MacOS','8G','1920*1080','集成显卡','Intel i5低功耗版','其它','轻薄本','256G固态','<div class="content_tpl"> <div class="formwork">   <div class="formwork_img"><br></div><div class="formwork_img">    <img alt="" class="" src="img/product/detail/57b15612N81dc489d.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_img">    <img alt="" class="" src="//img20.360buyimg.com/vc/jfs/t2683/60/4222930118/169462/233c7678/57b15616N1e285f09.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_text">    技术规格请前往 www.apple.com/cn/macbook-air/specs.html 查看完整内容。</div></div></div>',150223456789,1922,false),
(3,1,'Apple MacBook Air 13.3英寸笔记本电脑 银色(Core i7 处理器/8GB内存/128GB SSD闪存 Z0TA0002L)','i7处理器在此！依旧纤薄轻盈，续航持久，能胜任更多高强度工作，办公利器！',7488,'*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货','定制款：双核i7/8G内存/128G闪存','AppleMacBook Air','MacOS','8G','1920*1080','集成显卡','Intel i7低功耗版','其它','轻薄本','128G固态','<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="//img20.360buyimg.com/vc/jfs/t3034/151/748569500/226790/d6cd86a2/57b15612N81dc489d.jpg"></div></div><div class="formwork"><div class="formwork_img"><img class="" src="//img20.360buyimg.com/vc/jfs/t2683/60/4222930118/169462/233c7678/57b15616N1e285f09.jpg"></div></div><div class="formwork"><div class="formwork_text">技术规格 请前往 www.apple.com/cn/macbook-air/specs.html 查看完整内容。</div></div></div>',150323456789,733,false),
(4,1,'Apple MacBook Air 13.3英寸笔记本电脑 银色(Core i7 处理器/8GB内存/256GB SSD闪存 Z0TA0002L)','i7处理器在此！依旧纤薄轻盈，续航持久，能胜任更多高强度工作，办公利器！',7888,'*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货','定制款：双核i7/8G内存/256G闪存','AppleMacBook Air','MacOS','8G','1920*1080','集成显卡','Intel i7低功耗版','其它','轻薄本','256G固态','<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="//img20.360buyimg.com/vc/jfs/t3034/151/748569500/226790/d6cd86a2/57b15612N81dc489d.jpg"></div></div><div class="formwork"><div class="formwork_img"><img class="" src="//img20.360buyimg.com/vc/jfs/t2683/60/4222930118/169462/233c7678/57b15616N1e285f09.jpg"></div></div><div class="formwork"><div class="formwork_text">技术规格 请前往 www.apple.com/cn/macbook-air/specs.html 查看完整内容。</div></div></div>',150323456789,105,false),



#创建笔记本图片表



/*创建“用户模块”相关的表*/
#创建用户表
CREATE TABLE hw_user(
  uid INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(32),
  upwd VARCHAR(32),
  email VARCHAR(64),
  phone VARCHAR(16),
  avatar VARCHAR(128),
  user_name VARCHAR(32),
  gender INT
);

INSERT INTO hw_user VALUES(1,'yangyang','123456','dang@163.com','13501234560','img/1.jpg','洋洋','1');
INSERT INTO hw_user VALUES(2,'dingding','123456','ding@163.com','13501234561','img/2.jpg','丁丁','1');
INSERT INTO hw_user VALUES(3,'doudou','123456','dou@163.com','13501234562','img/3.jpg','豆豆','1');
INSERT INTO hw_user VALUES(4,'yaya','123456','ya@163.com','13501234563','img/4.jpg','丫丫','0');

INSERT INTO hw_user VALUES(5,'tom','123456','tom@163.com','13501234564','img/5.jpg','汤姆','1');
INSERT INTO hw_user VALUES(6,'jery','123456','jery@163.com','13501234565','img/6.jpg','杰瑞','1');
INSERT INTO hw_user VALUES(7,'sunny','123456','sun@163.com','13501234566','img/7.jpg','桑桑','0');
INSERT INTO hw_user VALUES(8,'blues','123456','blues@163.com','13501234567','img/8.jpg','布鲁斯','1');

INSERT INTO hw_user VALUES(9,'mike','123456','mike@163.com','13501234568','img/9.jpg','麦克','1');
INSERT INTO hw_user VALUES(10,'rose','123456','rose@163.com','13501234569','img/10.jpg','肉丝','0');
INSERT INTO hw_user VALUES(11,'jack','123456','jack@163.com','13501234570','img/11.jpg','杰克','1');
INSERT INTO hw_user  VALUES(12,'alice','123456','alice@163.com','13501234571','img/12.jpg','爱丽丝','0');

#创建接收联系地址表



/*创建“购物车模块”相关的表*/
#创建购物车表
#创建订单表
#创建订单详情表



#创建首页轮播广告条目表
CREATE TABLE hw_banner_carousel(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(128),
  title VARCHAR(64),
  href VARCHAR(128)
);
INSERT INTO hw_banner_carousel VALUES
(NULL, 'img/banner/banner1.jpg','轮播广告商品1','#'),
(NULL, 'img/banner/banner2.jpg','轮播广告商品2','#'),
(NULL, 'img/banner/banner3.jpg','轮播广告商品3','#'),
(NULL, 'img/banner/banner4.jpg','轮播广告商品4','#'),
(NULL, 'img/banner/banner5.jpg','轮播广告商品5','#'),
(NULL, 'img/banner/banner6.jpg','轮播广告商品6','#'),
(NULL, 'img/banner/banner7.jpg','轮播广告商品7','#');
#创建首页中小轮播广告条目表
CREATE TABLE hw_carousel_a(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(128),
  title VARCHAR(64),
  href VARCHAR(128)
);
INSERT INTO hw_carousel_a VALUES
(NULL, 'img/carousel_a/carousel1.jpg','小轮播广告商品1','#'),
(NULL, 'img/carousel_a/carousel2.jpg','小轮播广告商品2','#'),
(NULL, 'img/carousel_a/carousel3.jpg','小轮播广告商品3','#'),
(NULL, 'img/carousel_a/carousel4.jpg','小轮播广告商品4','#'),
(NULL, 'img/carousel_a/carousel5.jpg','小轮播广告商品5','#');


#创建首页商品表
CREATE TABLE hw_index_product(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(64),
  details VARCHAR(128),
  pic VARCHAR(128),
  price DECIMAL(10,2),
  href VARCHAR(128),
  smallPic VARCHAR(128),
  pindex TINYINT
);
INSERT INTO hw_index_product VALUES
(NULL, 'HUWEI VR2', '赠AM115耳机', 'img/index_carProduct1/1.jpg', 1999, '#', 'img/shoufa.png',1),
(NULL, '荣耀畅玩手环 A2', '购买赢捉妖记2 IMAX电影票', 'img/index_carProduct1/2.jpg', 179, '#', 'img/baokuan.png',1),
(NULL, '荣耀手环3', '限时最高直降50元', 'img/index_carProduct1/3.jpg', 179, '#','img/zhijiang.png',1),
(NULL, '荣耀手环3', '限时最高直降50元', 'img/index_carProduct1/4.jpg', 179, '#','img/zhijiang.png',1),
(NULL, '华为智能体脂秤', '限时优惠30元', 'img/index_carProduct1/5.jpg', 169, '#','',1),
(NULL, '荣耀watcherPlay', '限时最高直降200元', 'img/index_carProduct1/6.jpg', 799, '#','img/tehui.png',1),
(NULL, '华为6700mAh 移动电源', '', 'img/index_carProduct1/7.jpg', 99, '#','img/shoufa.png',1),
(NULL, 'HUWEI VR2', '赠AM115耳机', 'img/index_carProduct1/8.jpg', 1999, '#', 'img/shoufa.png',1),
(NULL, '荣耀畅玩手环 A2', '购买赢捉妖记2 IMAX电影票', 'img/index_carProduct1/9.jpg', 179, '#', 'img/baokuan.png',1),
(NULL, '华为手环B3 青春版', '是手环 也是耳机', 'img/index_carProduct1/10.jpg', 479, '#', '',1),
(NULL, '荣耀手环3', '限时最高直降50元', 'img/index_carProduct1/11.jpg', 179, '#','img/zhijiang.png',1),
(NULL, '华为智能体脂秤', '限时优惠30元', 'img/index_carProduct1/12.jpg', 169, '#','',1),
(NULL, '荣耀watcherPlay', '限时最高直降200元', 'img/index_carProduct1/13.jpg', 799, '#','img/tehui.png',1),
(NULL, '华为6700mAh 移动电源', '', 'img/index_carProduct1/14.jpg', 99, '#','img/shoufa.png',1),
(NULL, 'HUWEI VR2', '赠AM115耳机', 'img/index_carProduct1/15.jpg', 1999, '#', 'img/shoufa.png',1),
(NULL, '华为手环B3 青春版', '是手环 也是耳机', 'img/index_carProduct1/16.jpg', 479, '#', '',1),
(NULL, '华为手环B3 青春版', '是手环 也是耳机', 'img/index_carProduct1/17.jpg', 479, '#', '',1),
(NULL, '荣耀手环3', '限时最高直降50元', 'img/index_carProduct1/18.jpg', 179, '#','img/zhijiang.png',1),
(NULL, '华为智能体脂秤', '限时优惠30元', 'img/index_carProduct1/19.png', 169, '#','',1),
(NULL, '荣耀watcherPlay', '限时最高直降200元', 'img/index_carProduct1/20.jpg', 799, '#','img/tehui.png',1),
(NULL, '华为6700mAh 移动电源', '', 'img/index_carProduct1/21.png', 99, '#','img/shoufa.png',1),
(NULL, 'HUWEI VR2', '赠AM115耳机', 'img/index_carProduct1/22.png', 1999, '#', 'img/shoufa.png',1),
(NULL, '荣耀畅玩手环 A2', '购买赢捉妖记2 IMAX电影票', 'img/index_carProduct1/23.jpg', 179, '#', 'img/baokuan.png',1),
(NULL, '华为手环B3 青春版', '是手环 也是耳机', 'img/index_carProduct1/24.jpg', 479, '#', '',1),
(NULL, '九阳破壁免滤豆浆机', '破壁无渣免滤', 'img/index_carProduct2/1.jpg', 1599, '#', 'img/shoufa.png',2),
(NULL, '荣耀畅玩手环 A2', '购买赢捉妖记2 IMAX电影票', 'img/index_carProduct2/2.jpg', 179, '#', 'img/baokuan.png',2),
(NULL, '荣耀手环3', '限时最高直降50元', 'img/index_carProduct2/3.jpg', 179, '#','img/zhijiang.png',2),
(NULL, '荣耀手环3', '限时最高直降50元', 'img/index_carProduct2/4.jpg', 179, '#','img/zhijiang.png',2),
(NULL, '华为智能体脂秤', '限时优惠30元', 'img/index_carProduct2/5.jpg', 169, '#','',2),
(NULL, '荣耀watcherPlay', '限时最高直降200元', 'img/index_carProduct2/6.jpg', 799, '#','img/tehui.png',2),
(NULL, '得邦 智能拍拍灯', '智能可控生活', 'img/index_carProduct2/7.jpg', 178, '#','img/shoufa.png',2),
(NULL, 'HUWEI VR2', '赠AM115耳机', 'img/index_carProduct2/8.jpg', 1999, '#', 'img/shoufa.png',2),
(NULL, '荣耀畅玩手环 A2', '购买赢捉妖记2 IMAX电影票', 'img/index_carProduct2/9.jpg', 179, '#', 'img/baokuan.png',2),
(NULL, '闪迪 SanDisk 高速TF卡', '快速传输文件', 'img/index_carProduct2/10.jpg', 479, '#', '',2),
(NULL, '九阳破壁免滤豆浆机', '破壁无渣免滤', 'img/index_carProduct2/1.jpg', 1599, '#', 'img/shoufa.png',3),
(NULL, '荣耀畅玩手环 A2', '购买赢捉妖记2 IMAX电影票', 'img/index_carProduct2/2.jpg', 179, '#', 'img/baokuan.png',3),
(NULL, '荣耀手环3', '限时最高直降50元', 'img/index_carProduct2/3.jpg', 179, '#','img/zhijiang.png',3),
(NULL, '荣耀手环3', '限时最高直降50元', 'img/index_carProduct2/4.jpg', 179, '#','img/zhijiang.png',3),
(NULL, '华为智能体脂秤', '限时优惠30元', 'img/index_carProduct2/5.jpg', 169, '#','',3),
(NULL, '荣耀watcherPlay', '限时最高直降200元', 'img/index_carProduct2/6.jpg', 799, '#','img/tehui.png',3),
(NULL, '得邦 智能拍拍灯', '智能可控生活', 'img/index_carProduct2/7.jpg', 178, '#','img/shoufa.png',3),
(NULL, 'HUWEI VR2', '赠AM115耳机', 'img/index_carProduct2/8.jpg', 1999, '#', 'img/shoufa.png',3),
(NULL, '荣耀畅玩手环 A2', '购买赢捉妖记2 IMAX电影票', 'img/index_carProduct2/9.jpg', 179, '#', 'img/baokuan.png',3),
(NULL, '闪迪 SanDisk 高速TF卡', '快速传输文件', 'img/index_carProduct2/10.jpg', 479, '#', '',3),
(NULL, '九阳破壁免滤豆浆机', '破壁无渣免滤', 'img/index_carProduct2/1.jpg', 1599, '#', 'img/shoufa.png',4),
(NULL, '荣耀畅玩手环 A2', '购买赢捉妖记2 IMAX电影票', 'img/index_carProduct2/2.jpg', 179, '#', 'img/baokuan.png',4),
(NULL, '荣耀手环3', '限时最高直降50元', 'img/index_carProduct2/3.jpg', 179, '#','img/zhijiang.png',4),
(NULL, '荣耀手环3', '限时最高直降50元', 'img/index_carProduct2/4.jpg', 179, '#','img/zhijiang.png',4),
(NULL, '华为智能体脂秤', '限时优惠30元', 'img/index_carProduct2/5.jpg', 169, '#','',4),
(NULL, '荣耀watcherPlay', '限时最高直降200元', 'img/index_carProduct2/6.jpg', 799, '#','img/tehui.png',4),
(NULL, '得邦 智能拍拍灯', '智能可控生活', 'img/index_carProduct2/7.jpg', 178, '#','img/shoufa.png',4),
(NULL, 'HUWEI VR2', '赠AM115耳机', 'img/index_carProduct2/8.jpg', 1999, '#', 'img/shoufa.png',4),
(NULL, '荣耀畅玩手环 A2', '购买赢捉妖记2 IMAX电影票', 'img/index_carProduct2/9.jpg', 179, '#', 'img/baokuan.png',4),
(NULL, '闪迪 SanDisk 高速TF卡', '快速传输文件', 'img/index_carProduct2/10.jpg', 479, '#', '',4);