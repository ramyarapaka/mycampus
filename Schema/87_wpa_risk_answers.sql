CREATE TABLE IF NOT EXISTS `wpa_risk_answers` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT,
  `page_type` int(11) NOT NULL COMMENT '1-process,2-workflow,3-Agreement',
  `page_type_id` int(11) NOT NULL COMMENT '1-process,2-workflow,3-Agreement (Node ids)',
  `answer` text NOT NULL,
  `probability_of_occurance` int(11) NOT NULL,
  `strength_of_control` int(11) NOT NULL,
  `got_invoked` int(11) NOT NULL DEFAULT '0' COMMENT '0,1',
  `got_controlled` int(11) NOT NULL DEFAULT '0' COMMENT '0,1',
  `execution_id` int(11) NOT NULL,
  `status` int(11) NOT NULL COMMENT '1=not initiated,2-submitted,3-rejected,4-approved ',
  `given_by` int(11) NOT NULL,
  `given_dt` date NOT NULL,
  `approver_user` int(11) NOT NULL,
  `doer_user` int(11) NOT NULL,
  `approved_by` int(11) NOT NULL,
  `activity_risk_id` int(11) NOT NULL,
  `approved_dt` date NOT NULL,
  `client_id` int(11) NOT NULL,
  `assignment_id` int(11) NOT NULL,
  `domain_id` int(11) NOT NULL,
  PRIMARY KEY (`value_id`)
) ENGINE=InnoDB AUTO_INCREMENT=518 DEFAULT CHARSET=latin1;
CREATE TABLE IF NOT EXISTS `wpa_risk_answers` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT,
  `page_type` int(11) NOT NULL COMMENT '1-process,2-workflow,3-Agreement',
  `page_type_id` int(11) NOT NULL COMMENT '1-process,2-workflow,3-Agreement (Node ids)',
  `answer` text NOT NULL,
  `probability_of_occurance` int(11) NOT NULL,
  `strength_of_control` int(11) NOT NULL,
  `got_invoked` int(11) NOT NULL DEFAULT '0' COMMENT '0,1',
  `got_controlled` int(11) NOT NULL DEFAULT '0' COMMENT '0,1',
  `execution_id` int(11) NOT NULL,
  `status` int(11) NOT NULL COMMENT '1=not initiated,2-submitted,3-rejected,4-approved ',
  `given_by` int(11) NOT NULL,
  `given_dt` date NOT NULL,
  `approver_user` int(11) NOT NULL,
  `doer_user` int(11) NOT NULL,
  `approved_by` int(11) NOT NULL,
  `activity_risk_id` int(11) NOT NULL,
  `approved_dt` date NOT NULL,
  `client_id` int(11) NOT NULL,
  `assignment_id` int(11) NOT NULL,
  `domain_id` int(11) NOT NULL,
  PRIMARY KEY (`value_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;