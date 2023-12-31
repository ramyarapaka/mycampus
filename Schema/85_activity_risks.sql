CREATE TABLE IF NOT EXISTS `activity_risks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `risk_id` int(11) NOT NULL,
  `activity_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `creationdt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `weight` double(10,2) NOT NULL,
  `probability_of_occurance` double(5,2) NOT NULL COMMENT 'percentage',
  `scale_of_impact` double(5,2) NOT NULL COMMENT 'percentage',
  `short_name` varchar(250) NOT NULL,
  `risk_rating` double(5,2) DEFAULT '0.00',
  `page_type` int(11) NOT NULL COMMENT '1=process,2=workflow,3=agreement',
  `ctrl_score` double(10,2) DEFAULT NULL,
  `open_risk_score` double(10,2) DEFAULT NULL,
  `assignment_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `domain_id` int(11) NOT NULL,
  `anc_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `risk_id` (`risk_id`),
  KEY `activity_id` (`activity_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
