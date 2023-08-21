CREATE TABLE IF NOT EXISTS `fss_relations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `fss_id` int(11) NOT NULL,
  `base_fss_id` int(11) NOT NULL,
  `benchmark` decimal(20,2) NOT NULL,
  `permissible_error` decimal(20,2) DEFAULT NULL,
  `polarity_error` enum('LESS THAN','GREATER THAN','BOTH') DEFAULT NULL,
  `monthly_accumulated` enum('PERIODICAL','ACCUMULATED') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
