CREATE TABLE IF NOT EXISTS `analytics_filter_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `assignment_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `analytics_file_save_id` int(11) DEFAULT NULL,
  `temp_code` varchar(255) DEFAULT NULL,
  `filter_count` int(11) NOT NULL,
  `bucket_name` varchar(255) DEFAULT NULL,
  `s3_object` varchar(255) DEFAULT NULL,
  `file_id` int(11) DEFAULT NULL,
  `dc_id` int(11) DEFAULT NULL,
  `column_name` varchar(255) DEFAULT NULL,
  `fieldtype` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `operation` varchar(255) DEFAULT NULL,
  `value1` varchar(255) DEFAULT NULL,
  `valuetype` varchar(55) DEFAULT NULL,
  `page_number` int(11) DEFAULT NULL,
  `cat` varchar(55) DEFAULT NULL,
  `records_per_page` int(11) DEFAULT NULL,
  `created_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int(11) DEFAULT NULL,
  `operator` varchar(255) DEFAULT NULL,
  `searchcondition` text,
  `search_category` enum('General','Strata','RandomSampling','srs') DEFAULT NULL,
  `randomsampling` text,
  `value_type` varchar(255) DEFAULT NULL,
  `samples` decimal(15,2) DEFAULT NULL,
  `display_message` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
