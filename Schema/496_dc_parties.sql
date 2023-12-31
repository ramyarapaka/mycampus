CREATE TABLE IF NOT EXISTS `dc_parties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `vendor_code` varchar(250) DEFAULT NULL,
  `vendor_address` text,
  `vendor_phone` varchar(250) DEFAULT NULL,
  `vendor_pan` varchar(250) DEFAULT NULL,
  `vendor_email` varchar(250) DEFAULT NULL,
  `nature_of_party` text,
  `types_of_agreements` varchar(250) DEFAULT NULL,
  `remarks` text,
  `strata_A` int(11) DEFAULT NULL,
  `strata_B` int(11) DEFAULT NULL,
  `strata_C` int(11) DEFAULT NULL,
  `strata_D` int(11) DEFAULT NULL,
  `strata_E` int(11) DEFAULT NULL,
  `filter_l` int(11) DEFAULT NULL,
  `filter_m` int(11) DEFAULT NULL,
  `filter_n` int(11) DEFAULT NULL,
  `filter_o` int(11) DEFAULT NULL,
  `filter_p` int(11) DEFAULT NULL,
  `materiality` int(11) DEFAULT NULL,
  `batchno` int(11) DEFAULT NULL,
  `temp_code` varchar(250) DEFAULT NULL,
  `assignment_id` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `domain_id` int(11) DEFAULT NULL,
  `status_of_approval` int(11) DEFAULT NULL,
  `status_active` int(11) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `creation_dt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `approved_by` int(11) DEFAULT NULL,
  `approved_on` datetime DEFAULT NULL,
  `other1` varchar(250) DEFAULT NULL,
  `other2` text,
  `other3` date DEFAULT NULL,
  `ass_seq_id` int(11) DEFAULT NULL,
  `ass_seq_txt` varchar(15) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `assignment_id` (`assignment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
