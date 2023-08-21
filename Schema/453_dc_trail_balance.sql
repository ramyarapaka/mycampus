CREATE TABLE IF NOT EXISTS `dc_trail_balance` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `gl_name` varchar(200) NOT NULL,
  `gl_id` int(5) DEFAULT NULL,
  `location_name` varchar(50) DEFAULT 'General',
  `location_id` int(5) DEFAULT NULL,
  `opening_amount` double(20,2) DEFAULT NULL,
  `debit_amount` double(20,2) DEFAULT NULL,
  `credit_amount` double(20,2) DEFAULT NULL,
  `net_amount` double(20,2) DEFAULT NULL,
  `db_opening_amount` double(20,2) DEFAULT NULL,
  `db_debit_amount` double(20,2) DEFAULT NULL,
  `db_credit_amount` double(20,2) DEFAULT NULL,
  `db_net_amount` double(20,2) DEFAULT NULL,
  `fss_list_id` int(5) DEFAULT NULL,
  `created_by` int(5) DEFAULT NULL,
  `created_on` datetime DEFAULT CURRENT_TIMESTAMP,
  `approved_by` int(5) DEFAULT NULL,
  `approved_on` datetime DEFAULT CURRENT_TIMESTAMP,
  `filter_L` int(5) DEFAULT NULL,
  `filter_M` int(5) DEFAULT NULL,
  `filter_N` int(5) DEFAULT NULL,
  `filter_O` int(5) DEFAULT NULL,
  `filter_P` int(5) DEFAULT NULL,
  `strata_A` int(5) DEFAULT NULL,
  `strata_B` int(5) DEFAULT NULL,
  `strata_C` int(5) DEFAULT NULL,
  `strata_D` int(5) DEFAULT NULL,
  `strata_E` int(5) DEFAULT NULL,
  `company_id` int(5) DEFAULT NULL,
  `assignment_id` int(5) DEFAULT NULL,
  `domain_id` int(5) DEFAULT NULL,
  `batch_no` int(5) DEFAULT NULL,
  `rectification_total` decimal(22,2) DEFAULT NULL,
  `reclassification_total` decimal(22,2) DEFAULT NULL,
  `batch_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `gl_uniq` (`gl_name`,`location_name`,`company_id`,`assignment_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;