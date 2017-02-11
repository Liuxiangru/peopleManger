CREATE TABLE `people` (
  `pid` int(50) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `sex` char(255) NOT NULL,
  `age` int(11) DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

