CREATE TABLE IF NOT EXISTS `fss_daybook_summary` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `client_id` int(5) DEFAULT NULL COMMENT 'FK:sms_clients',
  `assignment_id` int(5) DEFAULT NULL COMMENT 'FK:sms_works',
  `domain_id` int(5) DEFAULT NULL,
  `gl_name` varchar(200) NOT NULL,
  `gl_id` int(5) DEFAULT NULL COMMENT 'FK:fss_chartofaccoumts',
  `location_name` varchar(50) DEFAULT 'General',
  `location_id` int(5) DEFAULT NULL COMMENT 'FK:loc_master',
  `opening_amount` double(20,2) DEFAULT NULL,
  `debit_amount` double(20,2) DEFAULT NULL,
  `credit_amount` double(20,2) DEFAULT NULL,
  `net_amount` double(20,2) DEFAULT NULL,
  `remarks` text,
  `created_by` int(5) DEFAULT NULL,
  `created_on` datetime DEFAULT CURRENT_TIMESTAMP,
  `batch_id` int(11) DEFAULT NULL,
  `trial_balance_batches_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `client_id` (`client_id`),
  KEY `assignment_id` (`assignment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
