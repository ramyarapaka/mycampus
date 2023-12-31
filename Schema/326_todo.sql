CREATE TABLE IF NOT EXISTS `todo` (
  `todo_id` int(11) NOT NULL AUTO_INCREMENT,
  `plan_date` date NOT NULL,
  `original_plandate` date NOT NULL,
  `plan_start_time` varchar(30) NOT NULL,
  `plan_end_time` varchar(30) NOT NULL,
  `actual_start_time` varchar(30) NOT NULL,
  `actual_end_time` varchar(30) NOT NULL,
  `remarks` text NOT NULL,
  `category` int(11) NOT NULL,
  `urgency` varchar(250) NOT NULL,
  `due_date` date NOT NULL,
  `client` int(11) NOT NULL,
  `assignment` int(11) NOT NULL,
  `planid` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` date NOT NULL,
  `status` int(11) NOT NULL COMMENT '0=pending,1=postpone,2=closed',
  `postpone_on` date NOT NULL,
  `domain` int(11) NOT NULL,
  PRIMARY KEY (`todo_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
