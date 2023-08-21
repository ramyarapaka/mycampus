CREATE TABLE IF NOT EXISTS `calllog` (
  `logid` int(11) NOT NULL AUTO_INCREMENT,
  `appuserid` int(11) NOT NULL,
  `clientid` int(11) NOT NULL,
  `taskid` int(11) NOT NULL,
  `milestoneid` int(11) NOT NULL,
  `contactname` varchar(30) NOT NULL,
  `contactnumber` bigint(20) NOT NULL,
  `calldate` date NOT NULL,
  `calltime` time NOT NULL,
  `callcontent` text NOT NULL,
  `typeofcall` varchar(30) NOT NULL COMMENT 'outgoing,incoming',
  `taggedusers` varchar(15) NOT NULL COMMENT 'users list with commas',
  `todotask` text NOT NULL,
  `tododate` date NOT NULL,
  `todotime` time NOT NULL,
  `voiceattachment_path` varchar(255) NOT NULL,
  `entereddt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `referredby` int(11) NOT NULL,
  `sendsms` varchar(3) NOT NULL DEFAULT 'no' COMMENT 'yes,no',
  `status` varchar(30) NOT NULL DEFAULT 'active' COMMENT 'active,archive',
  `domain` int(11) NOT NULL,
  PRIMARY KEY (`logid`),
  KEY `uindex` (`appuserid`),
  KEY `clindexenti` (`clientid`),
  KEY `taskindex` (`taskid`),
  KEY `clientid` (`clientid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;