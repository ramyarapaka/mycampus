CREATE TABLE IF NOT EXISTS `elt_risk_parameters` (
  `erpid` int(11) NOT NULL AUTO_INCREMENT,
  `elt_id` int(11) NOT NULL,
  `subj_id` int(11) NOT NULL,
  `assignment_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `val` double(10,2) NOT NULL,
  `risk_para_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `creation_dt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updation_dt` date NOT NULL,
  `approved_by` int(11) NOT NULL,
  `approved_dt` date NOT NULL,
  `audit_response_id` int(11) NOT NULL,
  `ass_seq_id` int(11) NOT NULL,
  `ass_seq_txt` varchar(15) NOT NULL,
  PRIMARY KEY (`erpid`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
