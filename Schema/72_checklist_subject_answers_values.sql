CREATE TABLE IF NOT EXISTS `checklist_subject_answers_values` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT,
  `checklist_subject_id` int(11) NOT NULL,
  `answer` text NOT NULL,
  `checklist_node_id` int(11) NOT NULL,
  `given_by` int(11) NOT NULL,
  `execution_id` int(11) NOT NULL,
  `approver_user` int(11) NOT NULL,
  `doer_user` int(11) NOT NULL,
  `status` int(11) NOT NULL COMMENT '1=not initiated,2-submitted,3-rejected,4-approved',
  `given_dt` date NOT NULL,
  `approved_by` int(11) NOT NULL,
  `approved_dt` date NOT NULL,
  `yes_no` int(1) NOT NULL DEFAULT '2',
  `ans` int(1) NOT NULL,
  `fav_adv` varchar(50) NOT NULL,
  `rule_status` int(11) NOT NULL DEFAULT '1',
  `short_checklist` text NOT NULL,
  `full_checklist` text NOT NULL,
  `source` int(1) NOT NULL DEFAULT '1' COMMENT '1=checklist_node,2=checklist_node_client_level',
  `desired_result` tinyint(1) NOT NULL,
  `na_as` tinyint(1) NOT NULL,
  `answer_type` int(4) NOT NULL COMMENT '0 - No validation 1 - Numeric(without decimal) 2 - Numeric(with decimal) 3 - Date 4 - selection 5 - phone 6 - email 7 - pan 8 - aadhar 9 - GST 10 - alpha numeric ',
  `answer_type_selection_id` int(11) NOT NULL COMMENT 'if answer type selection then selection_id is saved here ',
  PRIMARY KEY (`value_id`),
  KEY `execution_id` (`execution_id`,`approver_user`,`doer_user`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;