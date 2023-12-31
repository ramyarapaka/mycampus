


DROP TABLE IF EXISTS `elements`;

CREATE TABLE IF NOT EXISTS `elements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `element_name` varchar(50) NOT NULL,
  `element_table_name` varchar(50) NOT NULL,
  `id_column` varchar(50) NOT NULL,
  `valuecolumn` varchar(50) NOT NULL,
  `name_column` varchar(250) NOT NULL,
  `second_name_column` varchar(250) NOT NULL,
  `assignment_column` varchar(50) NOT NULL,
  `controllername` varchar(250) NOT NULL DEFAULT 'elements',
  `func_name` varchar(150) NOT NULL,
  `config_func_name` varchar(150) NOT NULL,
  `classify_func_name` varchar(150) NOT NULL,
  `dashboard_func` varchar(150) NOT NULL,
  `company_level_ds_name` varchar(250) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `values_model_name` varchar(250) NOT NULL,
  `values_func_name` varchar(250) NOT NULL,
  `add_method_controller` varchar(250) NOT NULL,
  `add_method_page` varchar(250) NOT NULL,
  `etype` int(11) NOT NULL COMMENT '1-cot, 2-ab (accountant balances, 3-pd (presentation and disclosures)',
  PRIMARY KEY (`id`),
  KEY `status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=latin1;


INSERT INTO `elements` (`id`, `element_name`, `element_table_name`, `id_column`, `valuecolumn`, `name_column`, `second_name_column`, `assignment_column`, `controllername`, `func_name`, `config_func_name`, `classify_func_name`, `dashboard_func`, `company_level_ds_name`, `status`, `values_model_name`, `values_func_name`, `add_method_controller`, `add_method_page`, `etype`) VALUES
(4, 'Transactions', 'assets', 'id', 'asset_location', 'name', '', 'proposal_id', 'Elements', 'assets', '', 'assetClassifyValues', '', 'company_assets', 1, 'Elements_model', 'getConfigAssetsWithValues', 'elements', 'addassets', 1),
(5, 'Chart of Accounts', 'gl_list', 'gl_id', '', 'gl_name', '', 'assignment_id', 'Elements', 'gl_list', '', '', '', '', 1, '', '', 'Reclassificationreports', 'add_gl', 2),
(6, 'Chits', 'dc_chit', 'id', '', 'name', '', 'assignment_id', 'Collections', 'chits', 'configbulk_chit', '', '', '', 1, 'Classifiers_model', 'getConfigElementsWithValues', 'Collections', 'addchits', 1),
(7, 'ITC & GST Adjustments', 'transactions', 'id', '', 'name', '', 'assignment_id', 'Elements', 'transactions', 'companyTransactions', '', '', '', 1, '', '', 'elements', 'addtransaction_dbg', 1),
(8, 'Locations', 'dc_locations', 'id', '', 'name', '', 'assignment_id', 'Collections', 'locations', '', '', '', '', 1, 'Classifiers_model', 'getConfigElementsWithValues', 'Collections', 'addlocations', 1),
(9, 'Purchase Orders', 'dc_purchase_orders', 'id', '', 'name', '', 'assignment_id', 'Collections', 'purchaseorders', 'orders', '', '', '', 1, 'Classifiers_model', 'getConfigElementsWithValues', 'Collections', 'addpurchaseorders', 1),
(10, 'Delivery Challans', 'dc_delivery_challans', 'id', '', 'name', '', 'assignment_id', 'Collections', 'deliverychallans', 'deliveries', '', '', '', 1, 'Classifiers_model', 'getConfigElementsWithValues', 'Collections', 'adddeliverychallans', 1),
(11, 'DT', 'dt', 'id', '', '', '', 'assignment_id', 'Elements', 'dt', '', '', '', '', 0, '', '', '', '', 1),
(13, 'Suppliers', 'dc_parties', 'id', '', 'name', '', 'assignment_id', 'Collections', 'suppliers', 'supplier', '', '', '', 1, 'Classifiers_model', 'getConfigElementsWithValues', 'Collections', 'addsuppliers', 1),
(14, 'Draftings', 'drafts_config', 'draft_id', '', '', '', 'assignment_id', 'Elements', 'drafts', '', '', '', '', 0, '', '', '', '', 0),
(15, 'Sale Orders', 'dc_sale_orders', 'id', '', 'name', '', 'assignment_id', 'Collections', 'saleorders', 'cost_project', '', '', '', 1, 'Classifiers_model', 'getConfigElementsWithValues', 'Collections', 'addsaleorders', 1),
(16, 'Legal Suits', 'dc_legal_suits', 'id', '', 'name', '', 'assignment_id', 'Collections', 'legalsuits', '', '', '', '', 1, 'Classifiers_model', 'getConfigElementsWithValues', 'Collections', 'addlegalsuits', 1),
(17, 'Bill Discount', 'dc_bill_discounted', 'id', '', 'name', '', 'assignment_id', 'Collections', 'billDiscounts', 'func_name', '', '', '', 1, 'Classifiers_model', 'getConfigElementsWithValues', 'Collections', 'addbillDiscounts', 1),
(18, 'EMD Register', 'dc_emd_register', 'id', '', 'name', '', 'assignment_id', 'Collections', 'emd_register', 'emd_register', '', '', '', 1, 'Classifiers_model', 'getConfigElementsWithValues', 'Collections', 'addemd_register', 1),
(19, 'SD Register', 'dc_security_deposit', 'id', '', 'name', '', 'assignment_id', 'Collections', 'sd_register', 'sd_register', '', '', '', 1, 'Classifiers_model', 'getConfigElementsWithValues', 'Collections', 'addsd_register', 1),
(20, 'Fixed Deposits', 'dc_fixed_deposit', 'id', '', 'name', '', 'assignment_id', 'Collections', 'fixed_deposit', 'fixed_deposit', '', '', '', 1, 'Classifiers_model', 'getConfigElementsWithValues', 'Collections', 'addfixed_deposit', 1),
(21, 'LC Register', 'dc_lc_register', 'id', '', 'name', '', 'assignment_id', 'Collections', 'lc_register', 'lc_register', '', '', '', 1, 'Classifiers_model', 'getConfigElementsWithValues', 'Collections', 'addlc_register', 1),
(22, 'Derivatives Register', 'dc_der_register', 'id', '', 'name', '', 'assignment_id', 'Collections', 'derived_register', 'derived_register', '', '', '', 1, 'Classifiers_model', 'getConfigElementsWithValues', 'Collections', 'addderived_register', 1),
(23, 'Diesel', 'diesel', '', '', '', '', '', 'Elements', 'diesel', 'diesel', '', '', '', 0, '', '', '', '', 0),
(24, 'Wages', 'wages', '', '', '', '', '', 'Elements', 'wages', 'wages', '', '', '', 0, '', '', '', '', 0),
(25, 'Salaries', 'salaries', '', '', '', '', '', 'Elements', 'salaries', 'salaries', '', '', '', 0, '', '', '', '', 0),
(26, 'Water', 'water', '', '', '', '', '', 'Elements', 'water', 'water', '', '', '', 0, '', '', '', '', 0),
(27, 'Steam', 'steam', '', '', '', '', '', 'Elements', 'steam', 'steam', '', '', '', 0, '', '', '', '', 0),
(28, 'Repair and Maintenace schedule', 'repair_maintenaceschedule', '', '', '', '', '', 'Elements', 'repair_maintenaceschedule', 'repair_maintenaceschedule', '', '', '', 0, '', '', '', '', 0),
(29, 'PreOperative', 'preoperativeandpreliminaryexpenses', '', '', '', '', '', 'Elements', 'preoperativeandpreliminaryexpenses', 'preoperativeandpreliminaryexpenses', '', '', '', 0, '', '', '', '', 0),
(30, 'Margin', 'marginmoneyforworkingcapital', '', '', '', '', '', 'Elements', 'marginmoneyforworkingcapital', 'marginmoneyforworkingcapital', '', '', '', 0, '', '', '', '', 0),
(31, 'Misc. Assets', 'miscfixedassetsandvechicles', '', '', '', '', '', 'Elements', 'miscfixedassetsandvechiles', 'miscfixedassetsandvechicles', '', '', '', 0, '', '', '', '', 0),
(32, 'Strengths', 'strengths', '', '', '', '', '', 'Elements', 'strengths', 'strengths', '', '', '', 0, '', '', '', '', 0),
(33, 'Weaknesses', 'weaknesses', '', '', '', '', '', 'Elements', 'weaknesses', 'weaknesses', '', '', '', 0, '', '', '', '', 0),
(34, 'Cash Book', 'dc_cash_book', 'id', '', 'name', '', 'assignment_id', 'Collections', 'cash_book', 'cash_book', '', '', '', 1, 'Classifiers_model', 'getConfigElementsWithValues', 'Collections', 'addcash_book', 1),
(35, 'Bank Statement', 'dc_bank_stmt', 'id', '', 'name_of_bank	', '', 'assignment_id', 'Collections', 'bankstatements', 'threats', '', '', '', 1, 'Classifiers_model', 'getConfigElementsWithValues', 'Collections', 'addbankstatements', 1),
(36, 'Bank accounts', 'dc_bank_accounts', 'id', '', 'name', '', 'assignment_id', 'Collections', 'bankaccounts', '', '', '', '', 1, 'Classifiers_model', 'getConfigElementsWithValues', 'Collections', 'addbankaccounts', 1),
(37, 'Old Trial Balance', 'gl_trial_balance', 'id', 'amount', 'gl_code', '', 'assignment_id', 'Reclassificationreports', 'gl_trail_list', '', 'gl_trail_list', '', '', 1, 'Reclassificationreports_model', 'getConfigGLTrailsWithValues', 'Reclassificationreports', 'edit_gl_trial', 2),
(38, 'Fixed Asset Register', 'dc_fixed_asset_register', 'id', '', 'name', '', 'assignment_id', 'Collections', 'fixedAssetRegister', '', '', '', '', 1, 'Classifiers_model', 'getConfigElementsWithValues', 'Collections', 'addfixedAssetRegister', 1),
(39, 'Advances', 'dc_advances', 'id', '', 'account_no', '', 'assignment_id', 'Collections', 'advances', '', '', '', '', 1, 'Classifiers_model', 'getConfigElementsWithValues', 'Collections', 'addadvances', 1),
(40, 'Deposits', 'dc_deposits', 'id', '', 'name_deposited', '', 'assignment_id', 'Collections', 'deposits', '', '', '', '', 1, 'Classifiers_model', 'getConfigElementsWithValues', 'Collections', 'adddeposits', 1),
(41, 'Presentation And Disclosures', 'dc_presentation_and_disclosures', 'id', '', 'name', '', 'assignment_id', 'Elements', '', '', '', '', '', 1, '', '', '', '', 3),
(42, 'Fss list Custom', 'fss_list_custom', 'id', '', 'short_fss', '', 'assignment_id', '', '', '', '', '', '', 1, 'Classifiers_model', 'getConfigElementsWithValues', '', '', 0),
(43, 'Day Book', 'dc_daybook', 'id', '', 'name', '', 'assignment_id', 'Elements', '', '', '', '', '', 1, 'Classifiers_model', 'getConfigElementsWithValues', 'Collections', 'adddaybook', 0),
(44, 'GSTR2A', 'gstr2a', 'id', '', 'invoice_no', '', 'assignment_id', 'Collections', 'bankaccounts', '', '', '', '', 1, 'Classifiers_model', 'getConfigElementsWithValues', 'Collections', 'addbankaccounts', 1),
(45, 'Charge Creation', 'dc_chargecreation', 'ccid', '', 'name', '', 'assignment_id', 'AuditProcedures', '', '', '', '', '', 1, '', '', '', '', 0),
(46, 'Account Status', 'dc_account_status', 'id', '', 'name', '', 'assignment_id', '', '', '', '', '', '', 1, '', '', '', '', 0),
(47, 'Account Statements', 'dc_account_statement', 'id', '', 'name', '', 'assignment_id', '', '', '', '', '', '', 1, '', '', '', '', 0),
(48, 'Over Dues', 'dc_overdues', 'id', '', 'name', '', 'assignment_id', '', '', '', '', '', '', 1, '', '', '', '', 0),
(49, 'Chart of Accounts', 'dc_chartofaccounts', 'id', '', 'gl_code', '', 'assignment_id', '', '', '', '', '', '', 1, 'Classifiers_model', 'getConfigElementsWithValues', '', '', 1),
(50, 'Trial Balance', 'dc_trail_balance', 'id', '', 'gl_name', '', 'assignment_id', '', '', '', '', '', '', 1, '', '', '', '', 0),
(51, 'GL Grouping', 'gl_grouping', 'id', '', 'gl_name', '', 'assignment_id', '', '', '', '', '', '', 1, '', '', '', '', 0),
(52, 'Invoice Grouping', 'invoice', 'id', '', 'gl_name', '', 'assignment_id', '', '', '', '', '', '', 1, '', '', '', '', 0),
(53, 'Day Book 2', 'dc_daybook', 'id', '', 'name', '', 'assignment_id', 'Elements', '', '', '', '', '', 1, 'Classifiers_model', 'getConfigElementsWithValues', 'Collections', 'adddaybook', 0),
(54, 'Clients', 'sms_clients', 'client_id', '', 'name', '', 'assignment_id', 'Elements', '', '', '', '', '', 1, 'Classifiers_model', 'getConfigElementsWithValues', 'Collections', 'adddaybook', 0),
(55, 'Purchase Register', 'dc_purchase_register', 'id', '', 'name', '', 'assignment_id', 'Collections', 'purchaseorders', 'orders', '', '', '', 1, 'Classifiers_model', 'getConfigElementsWithValues', 'Collections', 'addpurchaseorders', 1),
(56, 'Sales Register', 'dc_sales_register', 'id', '', 'name', '', 'assignment_id', 'Collections', 'purchaseorders', 'orders', '', '', '', 1, 'Classifiers_model', 'getConfigElementsWithValues', 'Collections', 'addpurchaseorders', 1);
COMMIT;
