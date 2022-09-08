DELETE FROM etl.ETLGenPrimaryKeyColumns WHERE DataLayer = 'clt_alkami';

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'account_number', 'vendor_party_id', 1
UNION
SELECT 'clt_alkami', 'account_number', 'base_number', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'acctg_trans', 'acctg_trans_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'acctg_trans_entry', 'acctg_trans_id', 1
UNION
SELECT 'clt_alkami', 'acctg_trans_entry', 'acctg_trans_entry_seq_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'agreement', 'agreement_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'agreement_addendum', 'agreement_addendum_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'agreement_assoc', 'agreement_assoc_id', 1
UNION
SELECT 'clt_alkami', 'agreement_assoc', 'agreement_id', 2
UNION
SELECT 'clt_alkami', 'agreement_assoc', 'to_agreement_id', 3;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'agreement_content', 'agreement_content_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'agreement_item', 'agreement_id', 1
UNION
SELECT 'clt_alkami', 'agreement_item', 'agreement_item_seq_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'agreement_item_employment', 'agreement_id', 1
UNION
SELECT 'clt_alkami', 'agreement_item_employment', 'agreement_item_seq_id', 2
UNION
SELECT 'clt_alkami', 'agreement_item_employment', 'party_relationship_id', 3;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'agreement_item_geo', 'agreement_id', 1
UNION
SELECT 'clt_alkami', 'agreement_item_geo', 'agreement_item_seq_id', 2
UNION
SELECT 'clt_alkami', 'agreement_item_geo', 'geo_id', 3;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'agreement_item_party', 'agreement_id', 1
UNION
SELECT 'clt_alkami', 'agreement_item_party', 'agreement_item_seq_id', 2
UNION
SELECT 'clt_alkami', 'agreement_item_party', 'party_id', 3
UNION
SELECT 'clt_alkami', 'agreement_item_party', 'role_type_id', 4;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'agreement_item_work_effort', 'agreement_id', 1
UNION
SELECT 'clt_alkami', 'agreement_item_work_effort', 'agreement_item_seq_id', 2
UNION
SELECT 'clt_alkami', 'agreement_item_work_effort', 'work_effort_id', 3;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'agreement_party', 'agreement_id', 1
UNION
SELECT 'clt_alkami', 'agreement_party', 'party_id', 2
UNION
SELECT 'clt_alkami', 'agreement_party', 'role_type_id', 3;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'agreement_role_type', 'agreement_id', 1
UNION
SELECT 'clt_alkami', 'agreement_role_type', 'role_type_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'agreement_signature', 'agreement_id', 1
UNION
SELECT 'clt_alkami', 'agreement_signature', 'party_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'agreement_term', 'agreement_term_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'app_instance', 'app_instance_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'app_instance_env', 'app_instance_id', 1
UNION
SELECT 'clt_alkami', 'app_instance_env', 'env_name', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'app_instance_host_config', 'app_instance_id', 1
UNION
SELECT 'clt_alkami', 'app_instance_host_config', 'host_config_name', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'app_instance_link', 'app_instance_id', 1
UNION
SELECT 'clt_alkami', 'app_instance_link', 'instance_name', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'app_instance_volume', 'app_instance_id', 1
UNION
SELECT 'clt_alkami', 'app_instance_volume', 'mount_point', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'artifact_authz', 'artifact_authz_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'artifact_authz_failure', 'failure_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'artifact_authz_filter', 'artifact_authz_id', 1
UNION
SELECT 'clt_alkami', 'artifact_authz_filter', 'entity_filter_set_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'artifact_group', 'artifact_group_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'artifact_group_member', 'artifact_group_id', 1
UNION
SELECT 'clt_alkami', 'artifact_group_member', 'artifact_name', 2
UNION
SELECT 'clt_alkami', 'artifact_group_member', 'artifact_type_enum_id', 3;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'artifact_hit', 'hit_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'artifact_hit_bin', 'hit_bin_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'artifact_tarpit', 'user_group_id', 1
UNION
SELECT 'clt_alkami', 'artifact_tarpit', 'artifact_group_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'artifact_tarpit_lock', 'artifact_tarpit_lock_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'asset', 'asset_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'asset_depreciation', 'asset_id', 1
UNION
SELECT 'clt_alkami', 'asset_depreciation', 'time_period_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'asset_detail', 'asset_detail_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'asset_gl_appl', 'asset_id', 1
UNION
SELECT 'clt_alkami', 'asset_gl_appl', 'gl_account_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'asset_identification', 'asset_id', 1
UNION
SELECT 'clt_alkami', 'asset_identification', 'identification_type_enum_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'asset_issuance', 'asset_issuance_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'asset_issuance_party', 'asset_issuance_id', 1
UNION
SELECT 'clt_alkami', 'asset_issuance_party', 'party_id', 2
UNION
SELECT 'clt_alkami', 'asset_issuance_party', 'role_type_id', 3;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'asset_maintenance', 'asset_maintenance_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'asset_maintenance_content', 'asset_maintenance_id', 1
UNION
SELECT 'clt_alkami', 'asset_maintenance_content', 'content_date', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'asset_maintenance_order_item', 'asset_maintenance_id', 1
UNION
SELECT 'clt_alkami', 'asset_maintenance_order_item', 'order_id', 2
UNION
SELECT 'clt_alkami', 'asset_maintenance_order_item', 'order_item_seq_id', 3;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'asset_meter', 'asset_id', 1
UNION
SELECT 'clt_alkami', 'asset_meter', 'reading_date', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'asset_party_assignment', 'asset_id', 1
UNION
SELECT 'clt_alkami', 'asset_party_assignment', 'party_id', 2
UNION
SELECT 'clt_alkami', 'asset_party_assignment', 'role_type_id', 3
UNION
SELECT 'clt_alkami', 'asset_party_assignment', 'from_date', 4;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'asset_payment_method', 'asset_id', 1
UNION
SELECT 'clt_alkami', 'asset_payment_method', 'payment_method_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'asset_pool', 'asset_pool_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'asset_pool_party', 'asset_pool_id', 1
UNION
SELECT 'clt_alkami', 'asset_pool_party', 'party_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'asset_pool_store', 'asset_pool_id', 1
UNION
SELECT 'clt_alkami', 'asset_pool_store', 'product_store_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'asset_receipt', 'asset_receipt_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'asset_registration', 'asset_id', 1
UNION
SELECT 'clt_alkami', 'asset_registration', 'asset_reg_seq_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'asset_reservation', 'asset_reservation_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'asset_standard_cost', 'asset_id', 1
UNION
SELECT 'clt_alkami', 'asset_standard_cost', 'asset_standard_cost_type_enum_id', 2
UNION
SELECT 'clt_alkami', 'asset_standard_cost', 'from_date', 3;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'asset_type_gl_account', 'asset_type_gl_account_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'authentication_client', 'client_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'bank_account', 'payment_method_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'bank_account_check', 'payment_method_id', 1
UNION
SELECT 'clt_alkami', 'bank_account_check', 'check_number', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) SELECT 'clt_alkami', 'bar', 'bar_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'benefit_type', 'benefit_type_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'billing_account', 'billing_account_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'billing_account_party', 'billing_account_id', 1
UNION
SELECT 'clt_alkami', 'billing_account_party', 'party_id', 2
UNION
SELECT 'clt_alkami', 'billing_account_party', 'role_type_id', 3
UNION
SELECT 'clt_alkami', 'billing_account_party', 'from_date', 4;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'billing_account_term', 'billing_account_term_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'bitcoin_wallet', 'payment_method_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'budget', 'budget_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'budget_item', 'budget_id', 1
UNION
SELECT 'clt_alkami', 'budget_item', 'budget_item_seq_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'budget_item_detail', 'budget_item_detail_id', 1
UNION
SELECT 'clt_alkami', 'budget_item_detail', 'budget_id', 2
UNION
SELECT 'clt_alkami', 'budget_item_detail', 'budget_item_seq_id', 3;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'budget_party', 'budget_id', 1
UNION
SELECT 'clt_alkami', 'budget_party', 'party_id', 2
UNION
SELECT 'clt_alkami', 'budget_party', 'role_type_id', 3;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'budget_review', 'budget_review_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'budget_revision', 'budget_id', 1
UNION
SELECT 'clt_alkami', 'budget_revision', 'revision_seq_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'budget_revision_impact', 'budget_id', 1
UNION
SELECT 'clt_alkami', 'budget_revision_impact', 'budget_item_seq_id', 2
UNION
SELECT 'clt_alkami', 'budget_revision_impact', 'revision_seq_id', 3;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'budget_scenario', 'budget_scenario_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'budget_scenario_application', 'budget_scenario_applic_id', 1
UNION
SELECT 'clt_alkami', 'budget_scenario_application', 'budget_scenario_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'budget_scenario_rule', 'budget_scenario_id', 1
UNION
SELECT 'clt_alkami', 'budget_scenario_rule', 'budget_item_type_enum_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'carrier_shipment_box_type', 'carrier_party_id', 1
UNION
SELECT 'clt_alkami', 'carrier_shipment_box_type', 'shipment_box_type_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'carrier_shipment_method', 'carrier_party_id', 1
UNION
SELECT 'clt_alkami', 'carrier_shipment_method', 'shipment_method_enum_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'communication_event', 'communication_event_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'communication_event_content', 'communication_event_content_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'communication_event_party', 'communication_event_id', 1
UNION
SELECT 'clt_alkami', 'communication_event_party', 'party_id', 2
UNION
SELECT 'clt_alkami', 'communication_event_party', 'role_type_id', 3;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'communication_event_product', 'product_id', 1
UNION
SELECT 'clt_alkami', 'communication_event_product', 'communication_event_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'communication_event_purpose', 'communication_event_id', 1
UNION
SELECT 'clt_alkami', 'communication_event_purpose', 'purpose_enum_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'communication_event_type', 'communication_event_type_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'condition_rule_v2', 'condition_set_id', 1
UNION
SELECT 'clt_alkami', 'condition_rule_v2', 'rule_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'condition_set', 'condition_set_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'contact_list', 'contact_list_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'contact_list_comm_status', 'contact_list_id', 1
UNION
SELECT 'clt_alkami', 'contact_list_comm_status', 'communication_event_id', 2
UNION
SELECT 'clt_alkami', 'contact_list_comm_status', 'contact_mech_id', 3;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'contact_list_email', 'contact_list_id', 1
UNION
SELECT 'clt_alkami', 'contact_list_email', 'email_type_enum_id', 2
UNION
SELECT 'clt_alkami', 'contact_list_email', 'from_date', 3;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'contact_list_party', 'contact_list_id', 1
UNION
SELECT 'clt_alkami', 'contact_list_party', 'party_id', 2
UNION
SELECT 'clt_alkami', 'contact_list_party', 'from_date', 3;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'contact_mech', 'contact_mech_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'contact_mech_purpose', 'contact_mech_purpose_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'container', 'container_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'credit_bureau_decline_reason', 'credit_bureau_enum_id', 1
UNION
SELECT 'clt_alkami', 'credit_bureau_decline_reason', 'score_factor_code', 2
UNION
SELECT 'clt_alkami', 'credit_bureau_decline_reason', 'universal_score_model', 3
UNION
SELECT 'clt_alkami', 'credit_bureau_decline_reason', 'decline_reason_enum_id', 4;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'credit_card', 'payment_method_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'credit_card_type_gl_account', 'credit_card_type_enum_id', 1
UNION
SELECT 'clt_alkami', 'credit_card_type_gl_account', 'organization_party_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'credit_info', 'credit_profile_id', 1
UNION
SELECT 'clt_alkami', 'credit_info', 'credit_info_type_enum_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'credit_profile', 'credit_profile_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'credit_profile_attribute', 'attribute_code', 1
UNION
SELECT 'clt_alkami', 'credit_profile_attribute', 'credit_bureau_enum_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'credit_profile_attribute_default', 'attribute_code', 1
UNION
SELECT 'clt_alkami', 'credit_profile_attribute_default', 'credit_bureau_enum_id', 2
UNION
SELECT 'clt_alkami', 'credit_profile_attribute_default', 'default_value', 3;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'currency_dimension', 'dimension_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'data_document', 'data_document_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'data_document_condition', 'data_document_id', 1
UNION
SELECT 'clt_alkami', 'data_document_condition', 'condition_seq_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'data_document_field', 'data_document_id', 1
UNION
SELECT 'clt_alkami', 'data_document_field', 'field_seq_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'data_document_link', 'data_document_id', 1
UNION
SELECT 'clt_alkami', 'data_document_link', 'link_seq_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'data_document_rel_alias', 'data_document_id', 1
UNION
SELECT 'clt_alkami', 'data_document_rel_alias', 'relationship_name', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'data_document_user_group', 'data_document_id', 1
UNION
SELECT 'clt_alkami', 'data_document_user_group', 'user_group_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'data_feed', 'data_feed_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'data_feed_document', 'data_feed_id', 1
UNION
SELECT 'clt_alkami', 'data_feed_document', 'data_document_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'data_source', 'data_source_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'database_host', 'database_host_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'database_type', 'database_type_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'date_day_dimension', 'dimension_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'db_form', 'form_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'db_form_field', 'form_id', 1
UNION
SELECT 'clt_alkami', 'db_form_field', 'field_name', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'db_form_field_attribute', 'form_id', 1
UNION
SELECT 'clt_alkami', 'db_form_field_attribute', 'field_name', 2
UNION
SELECT 'clt_alkami', 'db_form_field_attribute', 'attribute_name', 3;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'db_form_field_ent_opts', 'form_id', 1
UNION
SELECT 'clt_alkami', 'db_form_field_ent_opts', 'field_name', 2
UNION
SELECT 'clt_alkami', 'db_form_field_ent_opts', 'sequence_num', 3;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'db_form_field_ent_opts_cond', 'form_id', 1
UNION
SELECT 'clt_alkami', 'db_form_field_ent_opts_cond', 'field_name', 2
UNION
SELECT 'clt_alkami', 'db_form_field_ent_opts_cond', 'sequence_num', 3
UNION
SELECT 'clt_alkami', 'db_form_field_ent_opts_cond', 'entity_field_name', 4;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'db_form_field_ent_opts_order', 'form_id', 1
UNION
SELECT 'clt_alkami', 'db_form_field_ent_opts_order', 'field_name', 2
UNION
SELECT 'clt_alkami', 'db_form_field_ent_opts_order', 'sequence_num', 3
UNION
SELECT 'clt_alkami', 'db_form_field_ent_opts_order', 'order_sequence_num', 4;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'db_form_field_option', 'form_id', 1
UNION
SELECT 'clt_alkami', 'db_form_field_option', 'field_name', 2
UNION
SELECT 'clt_alkami', 'db_form_field_option', 'sequence_num', 3;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'db_form_user_group', 'form_id', 1
UNION
SELECT 'clt_alkami', 'db_form_user_group', 'user_group_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'db_form_validation', 'validation_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'db_resource', 'resource_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'db_resource_file', 'resource_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'db_resource_file_history', 'resource_id', 1
UNION
SELECT 'clt_alkami', 'db_resource_file_history', 'version_name', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'db_view_entity', 'db_view_entity_name', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'db_view_entity_alias', 'db_view_entity_name', 1
UNION
SELECT 'clt_alkami', 'db_view_entity_alias', 'field_alias', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'db_view_entity_key_map', 'db_view_entity_name', 1
UNION
SELECT 'clt_alkami', 'db_view_entity_key_map', 'join_from_alias', 2
UNION
SELECT 'clt_alkami', 'db_view_entity_key_map', 'entity_alias', 3
UNION
SELECT 'clt_alkami', 'db_view_entity_key_map', 'field_name', 4;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'db_view_entity_member', 'db_view_entity_name', 1
UNION
SELECT 'clt_alkami', 'db_view_entity_member', 'entity_alias', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'deduction', 'deduction_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'deliverable', 'deliverable_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'delivery', 'delivery_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'document_mapping_rule', 'ruleset_id', 1
UNION
SELECT 'clt_alkami', 'document_mapping_rule', 'rule_seq_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'document_mapping_ruleset', 'ruleset_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'elasticsearch_report', 'report_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'elasticsearch_report_dataset', 'dataset_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'elasticsearch_report_field', 'dataset_id', 1
UNION
SELECT 'clt_alkami', 'elasticsearch_report_field', 'field_seq_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'email_message', 'email_message_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'email_server', 'email_server_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'email_template', 'email_template_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'email_template_attachment', 'email_template_id', 1
UNION
SELECT 'clt_alkami', 'email_template_attachment', 'file_name', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'empl_class_responsibility', 'empl_position_class_id', 1
UNION
SELECT 'clt_alkami', 'empl_class_responsibility', 'responsibility_enum_id', 2
UNION
SELECT 'clt_alkami', 'empl_class_responsibility', 'from_date', 3;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'empl_position', 'empl_position_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'empl_position_class', 'empl_position_class_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'empl_position_class_party', 'empl_position_class_id', 1
UNION
SELECT 'clt_alkami', 'empl_position_class_party', 'party_id', 2
UNION
SELECT 'clt_alkami', 'empl_position_class_party', 'from_date', 3;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'empl_position_class_work_type', 'empl_position_class_id', 1
UNION
SELECT 'clt_alkami', 'empl_position_class_work_type', 'work_type_enum_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'empl_position_party', 'empl_position_id', 1
UNION
SELECT 'clt_alkami', 'empl_position_party', 'party_id', 2
UNION
SELECT 'clt_alkami', 'empl_position_party', 'role_type_id', 3
UNION
SELECT 'clt_alkami', 'empl_position_party', 'from_date', 4;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'empl_position_responsibility', 'empl_position_id', 1
UNION
SELECT 'clt_alkami', 'empl_position_responsibility', 'responsibility_enum_id', 2
UNION
SELECT 'clt_alkami', 'empl_position_responsibility', 'from_date', 3;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'employee', 'party_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'employment', 'party_relationship_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'employment_application', 'employment_application_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'employment_benefit', 'party_relationship_id', 1
UNION
SELECT 'clt_alkami', 'employment_benefit', 'benefit_type_id', 2
UNION
SELECT 'clt_alkami', 'employment_benefit', 'from_date', 3;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'employment_leave', 'party_relationship_id', 1
UNION
SELECT 'clt_alkami', 'employment_leave', 'from_date', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'employment_pay_detail', 'employment_pay_detail_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'employment_pay_history', 'party_relationship_id', 1
UNION
SELECT 'clt_alkami', 'employment_pay_history', 'pay_date', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'employment_salary', 'party_relationship_id', 1
UNION
SELECT 'clt_alkami', 'employment_salary', 'from_date', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'entity_audit_log', 'audit_history_seq_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'entity_filter', 'entity_filter_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'entity_filter_set', 'entity_filter_set_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'entity_sync', 'entity_sync_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'entity_sync_artifact', 'entity_sync_id', 1
UNION
SELECT 'clt_alkami', 'entity_sync_artifact', 'artifact_group_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'entity_sync_history', 'entity_sync_id', 1
UNION
SELECT 'clt_alkami', 'entity_sync_history', 'start_date', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'entity_sync_remove', 'entity_sync_remove_id', 1
UNION
SELECT 'clt_alkami', 'entity_sync_remove', 'entity_name', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'enum_group_member', 'enum_group_enum_id', 1
UNION
SELECT 'clt_alkami', 'enum_group_member', 'enum_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'enumeration', 'enum_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'enumeration_type', 'enum_type_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'facility', 'facility_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'facility_box_type', 'facility_id', 1
UNION
SELECT 'clt_alkami', 'facility_box_type', 'shipment_box_type_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'facility_certification', 'facility_certification_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'facility_contact_mech', 'facility_id', 1
UNION
SELECT 'clt_alkami', 'facility_contact_mech', 'contact_mech_id', 2
UNION
SELECT 'clt_alkami', 'facility_contact_mech', 'contact_mech_purpose_id', 3
UNION
SELECT 'clt_alkami', 'facility_contact_mech', 'from_date', 4;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'facility_content', 'facility_content_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'facility_gl_appl', 'facility_id', 1
UNION
SELECT 'clt_alkami', 'facility_gl_appl', 'gl_account_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'facility_group', 'facility_group_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'facility_group_member', 'facility_id', 1
UNION
SELECT 'clt_alkami', 'facility_group_member', 'facility_group_id', 2
UNION
SELECT 'clt_alkami', 'facility_group_member', 'from_date', 3;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'facility_group_party', 'facility_group_id', 1
UNION
SELECT 'clt_alkami', 'facility_group_party', 'party_id', 2
UNION
SELECT 'clt_alkami', 'facility_group_party', 'role_type_id', 3;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'facility_location', 'facility_id', 1
UNION
SELECT 'clt_alkami', 'facility_location', 'location_seq_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'facility_location_type', 'facility_id', 1
UNION
SELECT 'clt_alkami', 'facility_location_type', 'location_type_enum_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'facility_note', 'facility_id', 1
UNION
SELECT 'clt_alkami', 'facility_note', 'note_date', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'facility_party', 'facility_id', 1
UNION
SELECT 'clt_alkami', 'facility_party', 'party_id', 2
UNION
SELECT 'clt_alkami', 'facility_party', 'role_type_id', 3
UNION
SELECT 'clt_alkami', 'facility_party', 'from_date', 4;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'facility_printer', 'facility_id', 1
UNION
SELECT 'clt_alkami', 'facility_printer', 'printer_purpose_enum_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'fair_lending_names', 'fair_lending_name_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'financial_account', 'fin_account_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'financial_account_auth', 'fin_account_auth_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'financial_account_party', 'fin_account_id', 1
UNION
SELECT 'clt_alkami', 'financial_account_party', 'party_id', 2
UNION
SELECT 'clt_alkami', 'financial_account_party', 'role_type_id', 3
UNION
SELECT 'clt_alkami', 'financial_account_party', 'from_date', 4;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'financial_account_reason_gl_account', 'reason_enum_id', 1
UNION
SELECT 'clt_alkami', 'financial_account_reason_gl_account', 'organization_party_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'financial_account_trans', 'fin_account_trans_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'financial_account_type', 'fin_account_type_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'financial_account_type_gl_account', 'fin_account_type_id', 1
UNION
SELECT 'clt_alkami', 'financial_account_type_gl_account', 'organization_party_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'financial_flow', 'financial_flow_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'financial_worksheet', 'financial_worksheet_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'financial_worksheet_account', 'financial_worksheet_id', 1
UNION
SELECT 'clt_alkami', 'financial_worksheet_account', 'account_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'finworksheetacctadjustment', 'financial_worksheet_id', 1
UNION
SELECT 'clt_alkami', 'finworksheetacctadjustment', 'account_id', 2
UNION
SELECT 'clt_alkami', 'finworksheetacctadjustment', 'from_date', 3;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'finworksheetacctparty', 'financial_worksheet_id', 1
UNION
SELECT 'clt_alkami', 'finworksheetacctparty', 'account_id', 2
UNION
SELECT 'clt_alkami', 'finworksheetacctparty', 'party_id', 3;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) SELECT 'clt_alkami', 'foo', 'foo_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'form_config', 'form_config_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'form_config_field', 'form_config_id', 1
UNION
SELECT 'clt_alkami', 'form_config_field', 'field_name', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'form_config_user', 'form_location', 1
UNION
SELECT 'clt_alkami', 'form_config_user', 'user_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'form_config_user_group', 'form_config_id', 1
UNION
SELECT 'clt_alkami', 'form_config_user_group', 'user_group_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'form_config_user_type', 'form_location', 1
UNION
SELECT 'clt_alkami', 'form_config_user_type', 'user_id', 2
UNION
SELECT 'clt_alkami', 'form_config_user_type', 'config_type_enum_id', 3;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'form_list_find', 'form_list_find_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'form_list_find_field', 'form_list_find_id', 1
UNION
SELECT 'clt_alkami', 'form_list_find_field', 'field_name', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'form_list_find_user', 'form_list_find_id', 1
UNION
SELECT 'clt_alkami', 'form_list_find_user', 'user_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'form_list_find_user_default', 'screen_location', 1
UNION
SELECT 'clt_alkami', 'form_list_find_user_default', 'user_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'form_list_find_user_group', 'form_list_find_id', 1
UNION
SELECT 'clt_alkami', 'form_list_find_user_group', 'user_group_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'form_response', 'form_response_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'form_response_answer', 'form_response_answer_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) SELECT 'clt_alkami', 'geo', 'geo_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'geo_assoc', 'geo_id', 1
UNION
SELECT 'clt_alkami', 'geo_assoc', 'to_geo_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'geo_point', 'geo_point_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'gift_card', 'payment_method_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'gift_card_fulfillment', 'fulfillment_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'gl_account', 'gl_account_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'gl_account_category', 'gl_account_category_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'gl_account_category_member', 'gl_account_id', 1
UNION
SELECT 'clt_alkami', 'gl_account_category_member', 'gl_account_category_id', 2
UNION
SELECT 'clt_alkami', 'gl_account_category_member', 'from_date', 3;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'gl_account_enum_appl', 'gl_account_id', 1
UNION
SELECT 'clt_alkami', 'gl_account_enum_appl', 'enum_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'gl_account_group', 'gl_account_group_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'gl_account_group_member', 'gl_account_id', 1
UNION
SELECT 'clt_alkami', 'gl_account_group_member', 'group_type_enum_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'gl_account_org_time_period', 'gl_account_id', 1
UNION
SELECT 'clt_alkami', 'gl_account_org_time_period', 'organization_party_id', 2
UNION
SELECT 'clt_alkami', 'gl_account_org_time_period', 'time_period_id', 3;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'gl_account_organization', 'gl_account_id', 1
UNION
SELECT 'clt_alkami', 'gl_account_organization', 'organization_party_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'gl_account_party', 'gl_account_id', 1
UNION
SELECT 'clt_alkami', 'gl_account_party', 'party_id', 2
UNION
SELECT 'clt_alkami', 'gl_account_party', 'role_type_id', 3
UNION
SELECT 'clt_alkami', 'gl_account_party', 'from_date', 4;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'gl_account_type_default', 'gl_account_type_enum_id', 1
UNION
SELECT 'clt_alkami', 'gl_account_type_default', 'organization_party_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'gl_account_type_party_default', 'organization_party_id', 1
UNION
SELECT 'clt_alkami', 'gl_account_type_party_default', 'party_id', 2
UNION
SELECT 'clt_alkami', 'gl_account_type_party_default', 'role_type_id', 3
UNION
SELECT 'clt_alkami', 'gl_account_type_party_default', 'gl_account_type_enum_id', 4;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'gl_budget_xref', 'gl_account_id', 1
UNION
SELECT 'clt_alkami', 'gl_budget_xref', 'budget_item_type_enum_id', 2
UNION
SELECT 'clt_alkami', 'gl_budget_xref', 'from_date', 3;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'gl_journal', 'gl_journal_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'gl_reconciliation', 'gl_reconciliation_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'gl_reconciliation_entry', 'gl_reconciliation_id', 1
UNION
SELECT 'clt_alkami', 'gl_reconciliation_entry', 'acctg_trans_id', 2
UNION
SELECT 'clt_alkami', 'gl_reconciliation_entry', 'acctg_trans_entry_seq_id', 3;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'id_vision_case', 'case_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'id_vision_case_system_message', 'case_id', 1
UNION
SELECT 'clt_alkami', 'id_vision_case_system_message', 'system_message_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'idology_scan_transaction', 'transaction_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'instance_host', 'instance_host_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'instance_host_type', 'host_type_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'instance_image', 'instance_image_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'instance_image_type', 'image_type_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'instance_image_type_env', 'image_type_id', 1
UNION
SELECT 'clt_alkami', 'instance_image_type_env', 'env_name', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'instance_image_type_host_config', 'image_type_id', 1
UNION
SELECT 'clt_alkami', 'instance_image_type_host_config', 'host_config_name', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'instance_image_type_link', 'image_type_id', 1
UNION
SELECT 'clt_alkami', 'instance_image_type_link', 'instance_name', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'instance_image_type_volume', 'image_type_id', 1
UNION
SELECT 'clt_alkami', 'instance_image_type_volume', 'mount_point', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'invoice', 'invoice_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'invoice_contact_mech', 'invoice_id', 1
UNION
SELECT 'clt_alkami', 'invoice_contact_mech', 'contact_mech_purpose_id', 2
UNION
SELECT 'clt_alkami', 'invoice_contact_mech', 'contact_mech_id', 3;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'invoice_content', 'invoice_content_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'invoice_email_message', 'invoice_id', 1
UNION
SELECT 'clt_alkami', 'invoice_email_message', 'email_message_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'invoice_item', 'invoice_id', 1
UNION
SELECT 'clt_alkami', 'invoice_item', 'invoice_item_seq_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'invoice_item_assoc', 'invoice_item_assoc_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'invoice_item_detail', 'invoice_item_detail_id', 1
UNION
SELECT 'clt_alkami', 'invoice_item_detail', 'invoice_id', 2
UNION
SELECT 'clt_alkami', 'invoice_item_detail', 'invoice_item_seq_id', 3;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'invoice_party', 'invoice_id', 1
UNION
SELECT 'clt_alkami', 'invoice_party', 'party_id', 2
UNION
SELECT 'clt_alkami', 'invoice_party', 'role_type_id', 3;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'invoice_system_message', 'invoice_id', 1
UNION
SELECT 'clt_alkami', 'invoice_system_message', 'system_message_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'invoice_term', 'invoice_id', 1
UNION
SELECT 'clt_alkami', 'invoice_term', 'invoice_item_seq_id', 2
UNION
SELECT 'clt_alkami', 'invoice_term', 'settlement_term_id', 3;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'invoice_type_trans_type', 'invoice_type_enum_id', 1
UNION
SELECT 'clt_alkami', 'invoice_type_trans_type', 'organization_party_id', 2
UNION
SELECT 'clt_alkami', 'invoice_type_trans_type', 'is_payable', 3;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'item_type_gl_account', 'item_type_enum_id', 1
UNION
SELECT 'clt_alkami', 'item_type_gl_account', 'organization_party_id', 2
UNION
SELECT 'clt_alkami', 'item_type_gl_account', 'direction', 3;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'localized_entity_field', 'entity_name', 1
UNION
SELECT 'clt_alkami', 'localized_entity_field', 'field_name', 2
UNION
SELECT 'clt_alkami', 'localized_entity_field', 'pk_value', 3
UNION
SELECT 'clt_alkami', 'localized_entity_field', 'locale', 4;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'localized_message', 'original', 1
UNION
SELECT 'clt_alkami', 'localized_message', 'locale', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) SELECT 'clt_alkami', 'lot', 'lot_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'market_interest', 'product_category_id', 1
UNION
SELECT 'clt_alkami', 'market_interest', 'market_segment_id', 2
UNION
SELECT 'clt_alkami', 'market_interest', 'from_date', 3;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'market_segment', 'market_segment_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'market_segment_classification', 'market_segment_id', 1
UNION
SELECT 'clt_alkami', 'market_segment_classification', 'party_classification_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'market_segment_condition_set', 'market_segment_id', 1
UNION
SELECT 'clt_alkami', 'market_segment_condition_set', 'condition_set_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'market_segment_dimension', 'market_segment_id', 1
UNION
SELECT 'clt_alkami', 'market_segment_dimension', 'uom_dimension_type_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'market_segment_geo', 'market_segment_id', 1
UNION
SELECT 'clt_alkami', 'market_segment_geo', 'geo_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'market_segment_party', 'market_segment_id', 1
UNION
SELECT 'clt_alkami', 'market_segment_party', 'party_id', 2
UNION
SELECT 'clt_alkami', 'market_segment_party', 'role_type_id', 3;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'marketing_campaign', 'marketing_campaign_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'marketing_campaign_note', 'marketing_campaign_id', 1
UNION
SELECT 'clt_alkami', 'marketing_campaign_note', 'note_date', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'marketing_campaign_party', 'marketing_campaign_id', 1
UNION
SELECT 'clt_alkami', 'marketing_campaign_party', 'party_id', 2
UNION
SELECT 'clt_alkami', 'marketing_campaign_party', 'role_type_id', 3
UNION
SELECT 'clt_alkami', 'marketing_campaign_party', 'from_date', 4;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'measurement', 'measurement_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'measurement_type', 'measurement_type_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'network_printer', 'network_printer_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'notification_message', 'notification_message_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'notification_message_user', 'notification_message_id', 1
UNION
SELECT 'clt_alkami', 'notification_message_user', 'user_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'notification_topic', 'topic', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'notification_topic_user', 'topic', 1
UNION
SELECT 'clt_alkami', 'notification_topic_user', 'user_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'oidc_authentication_client', 'client_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'oidc_user_login_session', 'user_id', 1
UNION
SELECT 'clt_alkami', 'oidc_user_login_session', 'session_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'order_agreement', 'order_id', 1
UNION
SELECT 'clt_alkami', 'order_agreement', 'agreement_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'order_communication_event', 'order_id', 1
UNION
SELECT 'clt_alkami', 'order_communication_event', 'communication_event_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'order_content', 'order_content_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'order_custom_field', 'order_id', 1
UNION
SELECT 'clt_alkami', 'order_custom_field', 'custom_field_type_enum_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'order_decision', 'order_id', 1
UNION
SELECT 'clt_alkami', 'order_decision', 'decision_date', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'order_decision_reason', 'order_id', 1
UNION
SELECT 'clt_alkami', 'order_decision_reason', 'decision_date', 2
UNION
SELECT 'clt_alkami', 'order_decision_reason', 'decision_reason_enum_id', 3;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'order_email_message', 'order_id', 1
UNION
SELECT 'clt_alkami', 'order_email_message', 'email_message_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'order_header', 'order_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'order_item', 'order_id', 1
UNION
SELECT 'clt_alkami', 'order_item', 'order_item_seq_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'order_item_billing', 'order_item_billing_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'order_item_form_response', 'order_id', 1
UNION
SELECT 'clt_alkami', 'order_item_form_response', 'order_item_seq_id', 2
UNION
SELECT 'clt_alkami', 'order_item_form_response', 'form_response_id', 3;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'order_item_party', 'order_id', 1
UNION
SELECT 'clt_alkami', 'order_item_party', 'order_item_seq_id', 2
UNION
SELECT 'clt_alkami', 'order_item_party', 'party_id', 3
UNION
SELECT 'clt_alkami', 'order_item_party', 'role_type_id', 4;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'order_item_work_effort', 'order_id', 1
UNION
SELECT 'clt_alkami', 'order_item_work_effort', 'order_item_seq_id', 2
UNION
SELECT 'clt_alkami', 'order_item_work_effort', 'work_effort_id', 3;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'order_note', 'order_id', 1
UNION
SELECT 'clt_alkami', 'order_note', 'note_date', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'order_part', 'order_id', 1
UNION
SELECT 'clt_alkami', 'order_part', 'order_part_seq_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'order_part_contact_mech', 'order_id', 1
UNION
SELECT 'clt_alkami', 'order_part_contact_mech', 'order_part_seq_id', 2
UNION
SELECT 'clt_alkami', 'order_part_contact_mech', 'contact_mech_purpose_id', 3
UNION
SELECT 'clt_alkami', 'order_part_contact_mech', 'contact_mech_id', 4;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'order_part_party', 'order_id', 1
UNION
SELECT 'clt_alkami', 'order_part_party', 'order_part_seq_id', 2
UNION
SELECT 'clt_alkami', 'order_part_party', 'party_id', 3
UNION
SELECT 'clt_alkami', 'order_part_party', 'role_type_id', 4;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'order_part_term', 'order_id', 1
UNION
SELECT 'clt_alkami', 'order_part_term', 'order_part_seq_id', 2
UNION
SELECT 'clt_alkami', 'order_part_term', 'settlement_term_id', 3;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'order_promo_code', 'order_id', 1
UNION
SELECT 'clt_alkami', 'order_promo_code', 'promo_code_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'order_resolution', 'order_id', 1
UNION
SELECT 'clt_alkami', 'order_resolution', 'order_resolution_type_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'order_resolution_group_member', 'order_resolution_group_enum_id', 1
UNION
SELECT 'clt_alkami', 'order_resolution_group_member', 'order_resolution_type_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'order_resolution_type', 'order_resolution_type_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'order_service_job_run', 'order_id', 1
UNION
SELECT 'clt_alkami', 'order_service_job_run', 'job_run_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'order_system_message', 'order_id', 1
UNION
SELECT 'clt_alkami', 'order_system_message', 'system_message_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'order_tag', 'order_id', 1
UNION
SELECT 'clt_alkami', 'order_tag', 'tag_type_id', 2
UNION
SELECT 'clt_alkami', 'order_tag', 'from_date', 3;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'organization', 'party_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'organization_ruleset', 'party_id', 1
UNION
SELECT 'clt_alkami', 'organization_ruleset', 'ruleset_id', 2
UNION
SELECT 'clt_alkami', 'organization_ruleset', 'from_date', 3;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'ownership_pod_scenario', 'scenario_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'party', 'party_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'party_acctg_preference', 'organization_party_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'party_badge', 'party_badge_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'party_badge_scan', 'party_badge_id', 1
UNION
SELECT 'clt_alkami', 'party_badge_scan', 'scan_date', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'party_carrier_account', 'party_id', 1
UNION
SELECT 'clt_alkami', 'party_carrier_account', 'carrier_party_id', 2
UNION
SELECT 'clt_alkami', 'party_carrier_account', 'from_date', 3;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'party_citizenship', 'party_id', 1
UNION
SELECT 'clt_alkami', 'party_citizenship', 'geo_id', 2
UNION
SELECT 'clt_alkami', 'party_citizenship', 'from_date', 3;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'party_classification', 'party_classification_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'party_classification_appl', 'party_id', 1
UNION
SELECT 'clt_alkami', 'party_classification_appl', 'party_classification_id', 2
UNION
SELECT 'clt_alkami', 'party_classification_appl', 'from_date', 3;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'party_contact_mech', 'party_id', 1
UNION
SELECT 'clt_alkami', 'party_contact_mech', 'contact_mech_id', 2
UNION
SELECT 'clt_alkami', 'party_contact_mech', 'contact_mech_purpose_id', 3
UNION
SELECT 'clt_alkami', 'party_contact_mech', 'from_date', 4;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'party_content', 'party_content_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'party_dimension', 'party_id', 1
UNION
SELECT 'clt_alkami', 'party_dimension', 'uom_dimension_type_id', 2
UNION
SELECT 'clt_alkami', 'party_dimension', 'dimension_date', 3;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'party_geo_point', 'party_id', 1
UNION
SELECT 'clt_alkami', 'party_geo_point', 'geo_point_id', 2
UNION
SELECT 'clt_alkami', 'party_geo_point', 'from_date', 3;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'party_identification', 'party_id', 1
UNION
SELECT 'clt_alkami', 'party_identification', 'party_id_type_enum_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'party_need', 'party_need_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'party_note', 'party_id', 1
UNION
SELECT 'clt_alkami', 'party_note', 'note_date', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'party_payment_type_instrument', 'party_payment_type_instrument_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'party_relationship', 'party_relationship_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'party_relationship_setting', 'party_relationship_id', 1
UNION
SELECT 'clt_alkami', 'party_relationship_setting', 'party_setting_type_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'party_role', 'party_id', 1
UNION
SELECT 'clt_alkami', 'party_role', 'role_type_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'party_setting', 'party_id', 1
UNION
SELECT 'clt_alkami', 'party_setting', 'party_setting_type_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'party_setting_type', 'party_setting_type_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'party_setting_type_role', 'party_setting_type_id', 1
UNION
SELECT 'clt_alkami', 'party_setting_type_role', 'role_type_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'party_system_message', 'party_id', 1
UNION
SELECT 'clt_alkami', 'party_system_message', 'system_message_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'pay_grade', 'pay_grade_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'pay_grade_salary', 'pay_grade_id', 1
UNION
SELECT 'clt_alkami', 'pay_grade_salary', 'from_date', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'pay_pal_account', 'payment_method_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'payment', 'payment_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'payment_application', 'payment_application_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'payment_budget_allocation', 'payment_id', 1
UNION
SELECT 'clt_alkami', 'payment_budget_allocation', 'budget_id', 2
UNION
SELECT 'clt_alkami', 'payment_budget_allocation', 'budget_item_seq_id', 3;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'payment_content', 'payment_content_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'payment_fraud_evidence', 'payment_fraud_evidence_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'payment_gateway_config', 'payment_gateway_config_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'payment_gateway_response', 'payment_gateway_response_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'payment_instrument_gl_account', 'payment_instrument_enum_id', 1
UNION
SELECT 'clt_alkami', 'payment_instrument_gl_account', 'organization_party_id', 2
UNION
SELECT 'clt_alkami', 'payment_instrument_gl_account', 'is_payable', 3;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'payment_method', 'payment_method_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'payment_method_content', 'payment_method_content_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'payment_method_file', 'payment_method_file_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'payment_method_file_type', 'payment_method_id', 1
UNION
SELECT 'clt_alkami', 'payment_method_file_type', 'file_type_enum_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'payment_method_trans', 'payment_method_id', 1
UNION
SELECT 'clt_alkami', 'payment_method_trans', 'fit_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'payment_plan', 'payment_plan_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'payment_type_gl_account', 'payment_type_enum_id', 1
UNION
SELECT 'clt_alkami', 'payment_type_gl_account', 'organization_party_id', 2
UNION
SELECT 'clt_alkami', 'payment_type_gl_account', 'is_payable', 3
UNION
SELECT 'clt_alkami', 'payment_type_gl_account', 'is_applied', 4;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'payroll_adj_calc_parameter', 'adj_calc_service_id', 1
UNION
SELECT 'clt_alkami', 'payroll_adj_calc_parameter', 'parameter_name', 2
UNION
SELECT 'clt_alkami', 'payroll_adj_calc_parameter', 'from_date', 3;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'payroll_adj_calc_service', 'adj_calc_service_id', 1
UNION
SELECT 'clt_alkami', 'payroll_adj_calc_service', 'service_register_id', 5;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'payroll_adjustment', 'payroll_adjustment_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'payroll_adjustment_detail', 'payroll_adjustment_id', 1
UNION
SELECT 'clt_alkami', 'payroll_adjustment_detail', 'detail_seq_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'payroll_adjustment_exempt', 'payroll_adjustment_id', 1
UNION
SELECT 'clt_alkami', 'payroll_adjustment_exempt', 'tax_exempt_enum_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'payroll_adjustment_fed_stts', 'payroll_adjustment_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'payroll_adjustment_state_stts', 'payroll_adjustment_id', 1
UNION
SELECT 'clt_alkami', 'payroll_adjustment_state_stts', 'tax_state_status_enum_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'payroll_allowance', 'payroll_allowance_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'payroll_garnish_min_wage', 'state_or_country_geo_id', 1
UNION
SELECT 'clt_alkami', 'payroll_garnish_min_wage', 'time_period_type_id', 2
UNION
SELECT 'clt_alkami', 'payroll_garnish_min_wage', 'from_date', 3;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'payroll_std_deduction', 'payroll_std_deduction_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'person', 'party_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'physical_inventory', 'physical_inventory_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'physical_inventory_count', 'physical_inventory_count_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'plaid_access_token', 'party_id', 1
UNION
SELECT 'clt_alkami', 'plaid_access_token', 'order_id', 2
UNION
SELECT 'clt_alkami', 'plaid_access_token', 'item_id', 3;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'postal_address', 'contact_mech_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'precise_id_session', 'session_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'precise_id_system_message', 'transaction_id', 1
UNION
SELECT 'clt_alkami', 'precise_id_system_message', 'system_message_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'precise_id_transaction', 'transaction_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'print_job', 'print_job_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'product', 'product_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'product_agreement', 'product_id', 1
UNION
SELECT 'clt_alkami', 'product_agreement', 'agreement_type_enum_id', 2
UNION
SELECT 'clt_alkami', 'product_agreement', 'party_role_type_id', 3;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'product_agreement_v2', 'product_id', 1
UNION
SELECT 'clt_alkami', 'product_agreement_v2', 'agreement_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'product_assoc', 'product_id', 1
UNION
SELECT 'clt_alkami', 'product_assoc', 'to_product_id', 2
UNION
SELECT 'clt_alkami', 'product_assoc', 'product_assoc_type_enum_id', 3
UNION
SELECT 'clt_alkami', 'product_assoc', 'from_date', 4;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'product_calculated_info', 'product_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'product_category', 'product_category_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'product_category_content', 'product_category_content_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'product_category_feat_grp_appl', 'product_category_id', 1
UNION
SELECT 'clt_alkami', 'product_category_feat_grp_appl', 'product_feature_group_id', 2
UNION
SELECT 'clt_alkami', 'product_category_feat_grp_appl', 'from_date', 3;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'product_category_gl_account', 'product_category_id', 1
UNION
SELECT 'clt_alkami', 'product_category_gl_account', 'organization_party_id', 2
UNION
SELECT 'clt_alkami', 'product_category_gl_account', 'gl_account_type_enum_id', 3;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'product_category_member', 'product_category_id', 1
UNION
SELECT 'clt_alkami', 'product_category_member', 'product_id', 2
UNION
SELECT 'clt_alkami', 'product_category_member', 'from_date', 3;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'product_category_party', 'product_category_id', 1
UNION
SELECT 'clt_alkami', 'product_category_party', 'party_id', 2
UNION
SELECT 'clt_alkami', 'product_category_party', 'role_type_id', 3
UNION
SELECT 'clt_alkami', 'product_category_party', 'from_date', 4;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'product_category_rollup', 'product_category_id', 1
UNION
SELECT 'clt_alkami', 'product_category_rollup', 'parent_product_category_id', 2
UNION
SELECT 'clt_alkami', 'product_category_rollup', 'from_date', 3;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'product_class_content', 'product_class_enum_id', 1
UNION
SELECT 'clt_alkami', 'product_class_content', 'product_content_type_enum_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'product_class_dimension', 'product_class_enum_id', 1
UNION
SELECT 'clt_alkami', 'product_class_dimension', 'dimension_type_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'product_class_feature', 'product_class_enum_id', 1
UNION
SELECT 'clt_alkami', 'product_class_feature', 'product_feature_type_enum_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'product_class_feature_group', 'product_class_enum_id', 1
UNION
SELECT 'clt_alkami', 'product_class_feature_group', 'product_feature_group_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'product_class_uom_dimension', 'product_class_enum_id', 1
UNION
SELECT 'clt_alkami', 'product_class_uom_dimension', 'uom_dimension_type_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'product_content', 'product_content_id', 1
UNION
SELECT 'clt_alkami', 'product_content', 'product_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'product_db_form', 'product_db_form_id', 1
UNION
SELECT 'clt_alkami', 'product_db_form', 'product_id', 2
UNION
SELECT 'clt_alkami', 'product_db_form', 'form_id', 3;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'product_dimension', 'product_id', 1
UNION
SELECT 'clt_alkami', 'product_dimension', 'dimension_type_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'product_dimension_type', 'dimension_type_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'product_email', 'product_email_id', 1
UNION
SELECT 'clt_alkami', 'product_email', 'product_id', 3;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'product_facility', 'product_id', 1
UNION
SELECT 'clt_alkami', 'product_facility', 'facility_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'product_facility_location', 'product_id', 1
UNION
SELECT 'clt_alkami', 'product_facility_location', 'facility_id', 2
UNION
SELECT 'clt_alkami', 'product_facility_location', 'location_seq_id', 3;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'product_feature', 'product_feature_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'product_feature_appl', 'product_id', 1
UNION
SELECT 'clt_alkami', 'product_feature_appl', 'product_feature_id', 2
UNION
SELECT 'clt_alkami', 'product_feature_appl', 'from_date', 3;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'product_feature_group', 'product_feature_group_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'product_feature_group_appl', 'product_feature_group_id', 1
UNION
SELECT 'clt_alkami', 'product_feature_group_appl', 'product_feature_id', 2
UNION
SELECT 'clt_alkami', 'product_feature_group_appl', 'from_date', 3;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'product_feature_iactn', 'product_feature_id', 1
UNION
SELECT 'clt_alkami', 'product_feature_iactn', 'to_product_feature_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'product_geo', 'product_id', 1
UNION
SELECT 'clt_alkami', 'product_geo', 'geo_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'product_gl_account', 'product_id', 1
UNION
SELECT 'clt_alkami', 'product_gl_account', 'organization_party_id', 2
UNION
SELECT 'clt_alkami', 'product_gl_account', 'gl_account_type_enum_id', 3;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'product_gl_appl', 'product_id', 1
UNION
SELECT 'clt_alkami', 'product_gl_appl', 'gl_account_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'product_identification', 'product_id', 1
UNION
SELECT 'clt_alkami', 'product_identification', 'product_id_type_enum_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'product_maintenance', 'product_maintenance_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'product_meter', 'product_meter_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'product_meter_type', 'product_meter_type_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'product_other_identification', 'product_other_ident_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'product_parameter', 'product_parameter_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'product_parameter_option', 'product_parameter_option_id', 1
UNION
SELECT 'clt_alkami', 'product_parameter_option', 'product_parameter_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'product_parameter_product', 'product_parameter_id', 1
UNION
SELECT 'clt_alkami', 'product_parameter_product', 'product_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'product_parameter_set', 'product_parameter_set_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'product_parameter_value', 'product_parameter_value_id', 1
UNION
SELECT 'clt_alkami', 'product_parameter_value', 'product_parameter_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'product_party', 'product_id', 1
UNION
SELECT 'clt_alkami', 'product_party', 'party_id', 2
UNION
SELECT 'clt_alkami', 'product_party', 'role_type_id', 3
UNION
SELECT 'clt_alkami', 'product_party', 'from_date', 4;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'product_price', 'product_price_id', 1
UNION
SELECT 'clt_alkami', 'product_price', 'product_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'product_price_modify', 'price_modify_id', 1
UNION
SELECT 'clt_alkami', 'product_price_modify', 'service_register_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'product_price_modify_parameter', 'price_modify_id', 1
UNION
SELECT 'clt_alkami', 'product_price_modify_parameter', 'parameter_name', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'product_review', 'product_review_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'product_ruleset', 'ruleset_id', 1
UNION
SELECT 'clt_alkami', 'product_ruleset', 'product_id', 2
UNION
SELECT 'clt_alkami', 'product_ruleset', 'from_date', 3;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'product_store', 'product_store_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'product_store_agreement', 'product_store_id', 1
UNION
SELECT 'clt_alkami', 'product_store_agreement', 'agreement_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'product_store_approve', 'store_approve_id', 1
UNION
SELECT 'clt_alkami', 'product_store_approve', 'service_register_id', 3;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'product_store_approve_param', 'store_approve_id', 1
UNION
SELECT 'clt_alkami', 'product_store_approve_param', 'parameter_name', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'product_store_category', 'product_store_id', 1
UNION
SELECT 'clt_alkami', 'product_store_category', 'product_category_id', 2
UNION
SELECT 'clt_alkami', 'product_store_category', 'store_category_type_enum_id', 3
UNION
SELECT 'clt_alkami', 'product_store_category', 'from_date', 4;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'product_store_email', 'product_store_id', 1
UNION
SELECT 'clt_alkami', 'product_store_email', 'email_type_enum_id', 2
UNION
SELECT 'clt_alkami', 'product_store_email', 'from_date', 3;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'product_store_entry', 'entry_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'product_store_facility', 'product_store_id', 1
UNION
SELECT 'clt_alkami', 'product_store_facility', 'facility_id', 2
UNION
SELECT 'clt_alkami', 'product_store_facility', 'from_date', 3;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'product_store_group', 'product_store_group_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'product_store_group_member', 'product_store_group_id', 1
UNION
SELECT 'clt_alkami', 'product_store_group_member', 'product_store_id', 2
UNION
SELECT 'clt_alkami', 'product_store_group_member', 'from_date', 3;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'product_store_group_party', 'product_store_group_id', 1
UNION
SELECT 'clt_alkami', 'product_store_group_party', 'party_id', 2
UNION
SELECT 'clt_alkami', 'product_store_group_party', 'role_type_id', 3
UNION
SELECT 'clt_alkami', 'product_store_group_party', 'from_date', 4;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'product_store_party', 'product_store_id', 1
UNION
SELECT 'clt_alkami', 'product_store_party', 'party_id', 2
UNION
SELECT 'clt_alkami', 'product_store_party', 'role_type_id', 3
UNION
SELECT 'clt_alkami', 'product_store_party', 'from_date', 4;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'product_store_payment_gateway', 'product_store_id', 1
UNION
SELECT 'clt_alkami', 'product_store_payment_gateway', 'payment_instrument_enum_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'product_store_product', 'product_store_id', 1
UNION
SELECT 'clt_alkami', 'product_store_product', 'product_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'product_store_promo_code', 'promo_code_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'product_store_promo_code_party', 'promo_code_id', 1
UNION
SELECT 'clt_alkami', 'product_store_promo_code_party', 'party_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'product_store_promo_parameter', 'store_promotion_id', 1
UNION
SELECT 'clt_alkami', 'product_store_promo_parameter', 'parameter_name', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'product_store_promo_product', 'store_promotion_id', 1
UNION
SELECT 'clt_alkami', 'product_store_promo_product', 'product_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'product_store_promotion', 'store_promotion_id', 1
UNION
SELECT 'clt_alkami', 'product_store_promotion', 'service_register_id', 4;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'product_store_setting', 'product_store_id', 1
UNION
SELECT 'clt_alkami', 'product_store_setting', 'setting_type_enum_id', 2
UNION
SELECT 'clt_alkami', 'product_store_setting', 'from_date', 3;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'product_store_ship_option', 'product_store_id', 1
UNION
SELECT 'clt_alkami', 'product_store_ship_option', 'carrier_party_id', 2
UNION
SELECT 'clt_alkami', 'product_store_ship_option', 'shipment_method_enum_id', 3;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'product_store_shipping_gateway', 'product_store_id', 1
UNION
SELECT 'clt_alkami', 'product_store_shipping_gateway', 'carrier_party_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'product_store_wiki_content', 'store_wiki_content_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'product_store_wiki_space', 'store_wiki_space_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'product_subscription_resource', 'product_id', 1
UNION
SELECT 'clt_alkami', 'product_subscription_resource', 'subscription_resource_id', 2
UNION
SELECT 'clt_alkami', 'product_subscription_resource', 'from_date', 3;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'product_uom_dimension', 'product_uom_dimension_id', 1
UNION
SELECT 'clt_alkami', 'product_uom_dimension', 'product_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'product_work_effort', 'product_id', 1
UNION
SELECT 'clt_alkami', 'product_work_effort', 'work_effort_id', 2
UNION
SELECT 'clt_alkami', 'product_work_effort', 'from_date', 3;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'production_estimate', 'production_estimate_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'production_estimate_asset', 'production_estimate_id', 1
UNION
SELECT 'clt_alkami', 'production_estimate_asset', 'asset_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'production_estimate_work_eff', 'production_estimate_id', 1
UNION
SELECT 'clt_alkami', 'production_estimate_work_eff', 'work_effort_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'rate_amount', 'rate_amount_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'request', 'request_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'request_category', 'request_category_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'request_comm_event', 'request_id', 1
UNION
SELECT 'clt_alkami', 'request_comm_event', 'communication_event_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'request_content', 'request_content_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'request_item', 'request_id', 1
UNION
SELECT 'clt_alkami', 'request_item', 'request_item_seq_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'request_item_assoc', 'request_id', 1
UNION
SELECT 'clt_alkami', 'request_item_assoc', 'request_item_seq_id', 2
UNION
SELECT 'clt_alkami', 'request_item_assoc', 'other_request_id', 3
UNION
SELECT 'clt_alkami', 'request_item_assoc', 'other_request_item_seq_id', 4;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'request_item_order', 'request_item_order_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'request_note', 'request_id', 1
UNION
SELECT 'clt_alkami', 'request_note', 'note_date', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'request_party', 'request_id', 1
UNION
SELECT 'clt_alkami', 'request_party', 'party_id', 2
UNION
SELECT 'clt_alkami', 'request_party', 'role_type_id', 3
UNION
SELECT 'clt_alkami', 'request_party', 'from_date', 4;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'request_work_effort', 'request_id', 1
UNION
SELECT 'clt_alkami', 'request_work_effort', 'work_effort_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'requirement', 'requirement_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'requirement_budget_allocation', 'requirement_id', 1
UNION
SELECT 'clt_alkami', 'requirement_budget_allocation', 'budget_id', 2
UNION
SELECT 'clt_alkami', 'requirement_budget_allocation', 'budget_item_seq_id', 3;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'requirement_order_item', 'requirement_id', 1
UNION
SELECT 'clt_alkami', 'requirement_order_item', 'order_id', 2
UNION
SELECT 'clt_alkami', 'requirement_order_item', 'order_item_seq_id', 3;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'requirement_party', 'requirement_id', 1
UNION
SELECT 'clt_alkami', 'requirement_party', 'party_id', 2
UNION
SELECT 'clt_alkami', 'requirement_party', 'role_type_id', 3
UNION
SELECT 'clt_alkami', 'requirement_party', 'from_date', 4;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'requirement_request_item', 'requirement_id', 1
UNION
SELECT 'clt_alkami', 'requirement_request_item', 'request_id', 2
UNION
SELECT 'clt_alkami', 'requirement_request_item', 'request_item_seq_id', 3;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'return_contact_mech', 'return_id', 1
UNION
SELECT 'clt_alkami', 'return_contact_mech', 'contact_mech_purpose_id', 2
UNION
SELECT 'clt_alkami', 'return_contact_mech', 'contact_mech_id', 3;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'return_header', 'return_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'return_item', 'return_id', 1
UNION
SELECT 'clt_alkami', 'return_item', 'return_item_seq_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'return_item_billing', 'return_id', 1
UNION
SELECT 'clt_alkami', 'return_item_billing', 'return_item_seq_id', 2
UNION
SELECT 'clt_alkami', 'return_item_billing', 'invoice_id', 3
UNION
SELECT 'clt_alkami', 'return_item_billing', 'invoice_item_seq_id', 4;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'return_system_message', 'return_id', 1
UNION
SELECT 'clt_alkami', 'return_system_message', 'system_message_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'risk_group_segment_parameters', 'market_segment_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'role_group_member', 'role_group_enum_id', 1
UNION
SELECT 'clt_alkami', 'role_group_member', 'role_type_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'role_type', 'role_type_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'rule', 'rule_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'rule_condition_set', 'rule_id', 1
UNION
SELECT 'clt_alkami', 'rule_condition_set', 'condition_set_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'rule_config', 'rule_id', 1
UNION
SELECT 'clt_alkami', 'rule_config', 'config_key', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'rule_mitigation', 'mitigation_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'ruleset', 'ruleset_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'ruleset_condition_set', 'ruleset_id', 1
UNION
SELECT 'clt_alkami', 'ruleset_condition_set', 'condition_set_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'ruleset_role', 'ruleset_id', 1
UNION
SELECT 'clt_alkami', 'ruleset_role', 'role_type_id', 2
UNION
SELECT 'clt_alkami', 'ruleset_role', 'from_date', 3;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'ruleset_rule', 'ruleset_id', 1
UNION
SELECT 'clt_alkami', 'ruleset_rule', 'rule_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'sales_forecast', 'sales_forecast_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'sales_forecast_detail', 'sales_forecast_id', 1
UNION
SELECT 'clt_alkami', 'sales_forecast_detail', 'sales_forecast_detail_seq_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'sales_opportunity', 'sales_opportunity_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'sales_opportunity_competitor', 'sales_opportunity_id', 1
UNION
SELECT 'clt_alkami', 'sales_opportunity_competitor', 'competitor_party_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'sales_opportunity_order', 'sales_opportunity_id', 1
UNION
SELECT 'clt_alkami', 'sales_opportunity_order', 'order_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'sales_opportunity_party', 'sales_opportunity_id', 1
UNION
SELECT 'clt_alkami', 'sales_opportunity_party', 'party_id', 2
UNION
SELECT 'clt_alkami', 'sales_opportunity_party', 'role_type_id', 3
UNION
SELECT 'clt_alkami', 'sales_opportunity_party', 'from_date', 4;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'sales_opportunity_stage', 'opportunity_stage_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'sales_opportunity_tracking', 'sales_opportunity_id', 1
UNION
SELECT 'clt_alkami', 'sales_opportunity_tracking', 'tracking_code_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'sales_opportunity_work_effort', 'sales_opportunity_id', 1
UNION
SELECT 'clt_alkami', 'sales_opportunity_work_effort', 'work_effort_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'salesfunnel_config', 'salesfunnel_config_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'salesfunnel_config_setting', 'config_setting_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'salesfunnel_config_store', 'product_store_id', 1
UNION
SELECT 'clt_alkami', 'salesfunnel_config_store', 'from_date', 3;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'score_factor', 'score_factor_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'score_factor_config', 'score_factor_id', 1
UNION
SELECT 'clt_alkami', 'score_factor_config', 'config_key', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'score_factor_option', 'score_factor_id', 1
UNION
SELECT 'clt_alkami', 'score_factor_option', 'factor_option_seq_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'score_model', 'score_model_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'score_model_condition_set', 'score_model_id', 1
UNION
SELECT 'clt_alkami', 'score_model_condition_set', 'condition_set_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'screen_document', 'screen_location', 1
UNION
SELECT 'clt_alkami', 'screen_document', 'doc_index', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'screen_flow', 'screen_flow_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'screen_flow_item', 'screen_flow_id', 1
UNION
SELECT 'clt_alkami', 'screen_flow_item', 'screen_path', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'screen_flow_item_field', 'screen_flow_id', 1
UNION
SELECT 'clt_alkami', 'screen_flow_item_field', 'screen_path', 2
UNION
SELECT 'clt_alkami', 'screen_flow_item_field', 'field_name', 3;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'screen_path_alias', 'alias_path', 1
UNION
SELECT 'clt_alkami', 'screen_path_alias', 'from_date', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'screen_scheduled', 'screen_scheduled_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'screen_scheduled_lock', 'screen_scheduled_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'screen_theme', 'screen_theme_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'screen_theme_icon', 'screen_theme_id', 1
UNION
SELECT 'clt_alkami', 'screen_theme_icon', 'text_pattern', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'screen_theme_resource', 'screen_theme_id', 1
UNION
SELECT 'clt_alkami', 'screen_theme_resource', 'sequence_num', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'sequence_value_item', 'seq_name', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'service_job', 'job_name', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'service_job_parameter', 'job_name', 1
UNION
SELECT 'clt_alkami', 'service_job_parameter', 'parameter_name', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'service_job_run', 'job_run_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'service_job_run_lock', 'job_name', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'service_job_user', 'job_name', 1
UNION
SELECT 'clt_alkami', 'service_job_user', 'user_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'service_parameter_semaphore', 'service_name', 1
UNION
SELECT 'clt_alkami', 'service_parameter_semaphore', 'parameter_value', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'service_register', 'service_register_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'settlement_term', 'settlement_term_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'shipment', 'shipment_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'shipment_box_type', 'shipment_box_type_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'shipment_contact_mech', 'shipment_id', 1
UNION
SELECT 'clt_alkami', 'shipment_contact_mech', 'contact_mech_purpose_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'shipment_content', 'shipment_content_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'shipment_email_message', 'shipment_id', 1
UNION
SELECT 'clt_alkami', 'shipment_email_message', 'email_message_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'shipment_item', 'shipment_id', 1
UNION
SELECT 'clt_alkami', 'shipment_item', 'product_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'shipment_item_source', 'shipment_item_source_id', 1
UNION
SELECT 'clt_alkami', 'shipment_item_source', 'shipment_id', 2
UNION
SELECT 'clt_alkami', 'shipment_item_source', 'product_id', 3;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'shipment_package', 'shipment_id', 1
UNION
SELECT 'clt_alkami', 'shipment_package', 'shipment_package_seq_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'shipment_package_content', 'shipment_id', 1
UNION
SELECT 'clt_alkami', 'shipment_package_content', 'shipment_package_seq_id', 2
UNION
SELECT 'clt_alkami', 'shipment_package_content', 'product_id', 3;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'shipment_package_route_seg', 'shipment_id', 1
UNION
SELECT 'clt_alkami', 'shipment_package_route_seg', 'shipment_package_seq_id', 2
UNION
SELECT 'clt_alkami', 'shipment_package_route_seg', 'shipment_route_segment_seq_id', 3;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'shipment_party', 'shipment_id', 1
UNION
SELECT 'clt_alkami', 'shipment_party', 'party_id', 2
UNION
SELECT 'clt_alkami', 'shipment_party', 'role_type_id', 3;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'shipment_route_segment', 'shipment_id', 1
UNION
SELECT 'clt_alkami', 'shipment_route_segment', 'shipment_route_segment_seq_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'shipment_system_message', 'shipment_id', 1
UNION
SELECT 'clt_alkami', 'shipment_system_message', 'system_message_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'shipping_gateway_box_type', 'shipping_gateway_config_id', 1
UNION
SELECT 'clt_alkami', 'shipping_gateway_box_type', 'shipment_box_type_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'shipping_gateway_carrier', 'shipping_gateway_config_id', 1
UNION
SELECT 'clt_alkami', 'shipping_gateway_carrier', 'carrier_party_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'shipping_gateway_config', 'shipping_gateway_config_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'shipping_gateway_method', 'shipping_gateway_config_id', 1
UNION
SELECT 'clt_alkami', 'shipping_gateway_method', 'carrier_party_id', 2
UNION
SELECT 'clt_alkami', 'shipping_gateway_method', 'shipment_method_enum_id', 3;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'shipping_gateway_option', 'shipping_gateway_config_id', 1
UNION
SELECT 'clt_alkami', 'shipping_gateway_option', 'option_enum_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'status_flow', 'status_flow_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'status_flow_item', 'status_flow_id', 1
UNION
SELECT 'clt_alkami', 'status_flow_item', 'status_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'status_flow_transition', 'status_flow_id', 1
UNION
SELECT 'clt_alkami', 'status_flow_transition', 'status_id', 2
UNION
SELECT 'clt_alkami', 'status_flow_transition', 'to_status_id', 3;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'status_item', 'status_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'status_type', 'status_type_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'subscreens_default', 'screen_location', 1
UNION
SELECT 'clt_alkami', 'subscreens_default', 'default_seq_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'subscreens_item', 'screen_location', 1
UNION
SELECT 'clt_alkami', 'subscreens_item', 'subscreen_name', 2
UNION
SELECT 'clt_alkami', 'subscreens_item', 'user_group_id', 3;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'subscription', 'subscription_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'subscription_delivery', 'subscription_id', 1
UNION
SELECT 'clt_alkami', 'subscription_delivery', 'date_sent', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'subscription_resource', 'subscription_resource_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'system_message', 'system_message_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'system_message_enum_map', 'system_message_remote_id', 1
UNION
SELECT 'clt_alkami', 'system_message_enum_map', 'enum_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'system_message_error', 'system_message_id', 1
UNION
SELECT 'clt_alkami', 'system_message_error', 'error_date', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'system_message_mapping_rule', 'ruleset_id', 1
UNION
SELECT 'clt_alkami', 'system_message_mapping_rule', 'rule_seq_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'system_message_mapping_ruleset', 'ruleset_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'system_message_remote', 'system_message_remote_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'system_message_type', 'system_message_type_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'tag_type', 'tag_type_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'tax_authority', 'tax_authority_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'tax_authority_assoc', 'tax_authority_id', 1
UNION
SELECT 'clt_alkami', 'tax_authority_assoc', 'to_tax_authority_id', 2
UNION
SELECT 'clt_alkami', 'tax_authority_assoc', 'from_date', 3;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'tax_authority_category', 'tax_authority_id', 1
UNION
SELECT 'clt_alkami', 'tax_authority_category', 'product_category_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'tax_authority_gl_account', 'tax_authority_id', 1
UNION
SELECT 'clt_alkami', 'tax_authority_gl_account', 'organization_party_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'tax_authority_party', 'party_id', 1
UNION
SELECT 'clt_alkami', 'tax_authority_party', 'tax_authority_id', 2
UNION
SELECT 'clt_alkami', 'tax_authority_party', 'from_date', 3;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'tax_gateway_config', 'tax_gateway_config_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'tax_statement', 'tax_statement_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'telecom_number', 'contact_mech_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'test_entity', 'test_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'test_int_pk', 'int_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'test_no_sql_entity', 'test_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'time_entry', 'time_entry_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'time_period', 'time_period_id', 1
UNION
SELECT 'clt_alkami', 'time_period', 'time_period_type_id', 4
UNION
SELECT 'clt_alkami', 'time_period', 'party_id', 5
UNION
SELECT 'clt_alkami', 'time_period', 'from_date', 8
UNION
SELECT 'clt_alkami', 'time_period', 'thru_date', 9;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'time_period_type', 'time_period_type_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'timesheet', 'timesheet_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'timesheet_party', 'timesheet_id', 1
UNION
SELECT 'clt_alkami', 'timesheet_party', 'party_id', 2
UNION
SELECT 'clt_alkami', 'timesheet_party', 'role_type_id', 3;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'tracking_code', 'tracking_code_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'tracking_code_order', 'order_id', 1
UNION
SELECT 'clt_alkami', 'tracking_code_order', 'tracking_code_type_enum_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'tracking_code_order_return', 'tracking_code_type_enum_id', 1
UNION
SELECT 'clt_alkami', 'tracking_code_order_return', 'return_id', 2
UNION
SELECT 'clt_alkami', 'tracking_code_order_return', 'order_id', 3;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'tracking_code_visit', 'tracking_code_id', 1
UNION
SELECT 'clt_alkami', 'tracking_code_visit', 'visit_id', 2
UNION
SELECT 'clt_alkami', 'tracking_code_visit', 'from_date', 3;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'unemployment_claim', 'unemployment_claim_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) SELECT 'clt_alkami', 'uom', 'uom_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'uom_conversion', 'uom_conversion_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'uom_dim_type_group_member', 'uom_dim_type_group_enum_id', 1
UNION
SELECT 'clt_alkami', 'uom_dim_type_group_member', 'uom_dimension_type_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'uom_dimension_type', 'uom_dimension_type_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'uom_group_member', 'uom_group_enum_id', 1
UNION
SELECT 'clt_alkami', 'uom_group_member', 'uom_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'user_account', 'user_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'user_authc_factor', 'factor_id', 1
UNION
SELECT 'clt_alkami', 'user_authc_factor', 'user_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'user_group', 'user_group_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'user_group_member', 'user_group_id', 1
UNION
SELECT 'clt_alkami', 'user_group_member', 'user_id', 2
UNION
SELECT 'clt_alkami', 'user_group_member', 'from_date', 3;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'user_group_permission', 'user_group_id', 1
UNION
SELECT 'clt_alkami', 'user_group_permission', 'user_permission_id', 2
UNION
SELECT 'clt_alkami', 'user_group_permission', 'from_date', 3;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'user_group_preference', 'user_group_id', 1
UNION
SELECT 'clt_alkami', 'user_group_preference', 'preference_key', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'user_group_screen_theme', 'user_group_id', 1
UNION
SELECT 'clt_alkami', 'user_group_screen_theme', 'screen_theme_type_enum_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'user_login_history', 'user_id', 1
UNION
SELECT 'clt_alkami', 'user_login_history', 'from_date', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'user_login_key', 'login_key', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'user_password_history', 'user_id', 1
UNION
SELECT 'clt_alkami', 'user_password_history', 'from_date', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'user_permission', 'user_permission_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'user_preference', 'user_id', 1
UNION
SELECT 'clt_alkami', 'user_preference', 'preference_key', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'user_screen_theme', 'user_id', 1
UNION
SELECT 'clt_alkami', 'user_screen_theme', 'screen_theme_type_enum_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'variance_reason_gl_account', 'variance_reason_enum_id', 1
UNION
SELECT 'clt_alkami', 'variance_reason_gl_account', 'organization_party_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'visit', 'visit_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'visitor', 'visitor_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'wiki_blog', 'wiki_blog_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'wiki_blog_category', 'wiki_page_category_id', 1
UNION
SELECT 'clt_alkami', 'wiki_blog_category', 'wiki_blog_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'wiki_page', 'wiki_page_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'wiki_page_alias', 'wiki_space_id', 1
UNION
SELECT 'clt_alkami', 'wiki_page_alias', 'alias_path', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'wiki_page_category', 'wiki_page_category_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'wiki_page_category_member', 'wiki_page_category_id', 1
UNION
SELECT 'clt_alkami', 'wiki_page_category_member', 'wiki_page_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'wiki_page_communication_event', 'wiki_page_id', 1
UNION
SELECT 'clt_alkami', 'wiki_page_communication_event', 'communication_event_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'wiki_page_history', 'wiki_page_id', 1
UNION
SELECT 'clt_alkami', 'wiki_page_history', 'history_seq_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'wiki_page_request', 'wiki_page_id', 1
UNION
SELECT 'clt_alkami', 'wiki_page_request', 'request_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'wiki_page_user', 'wiki_page_id', 1
UNION
SELECT 'clt_alkami', 'wiki_page_user', 'user_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'wiki_page_work_effort', 'wiki_page_id', 1
UNION
SELECT 'clt_alkami', 'wiki_page_work_effort', 'work_effort_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'wiki_space', 'wiki_space_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'wiki_space_user', 'wiki_space_id', 1
UNION
SELECT 'clt_alkami', 'wiki_space_user', 'user_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'work_effort', 'work_effort_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'work_effort_asset_assign', 'work_effort_id', 1
UNION
SELECT 'clt_alkami', 'work_effort_asset_assign', 'asset_id', 2
UNION
SELECT 'clt_alkami', 'work_effort_asset_assign', 'from_date', 3;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'work_effort_asset_needed', 'work_effort_id', 1
UNION
SELECT 'clt_alkami', 'work_effort_asset_needed', 'asset_product_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'work_effort_assoc', 'work_effort_id', 1
UNION
SELECT 'clt_alkami', 'work_effort_assoc', 'to_work_effort_id', 2
UNION
SELECT 'clt_alkami', 'work_effort_assoc', 'work_effort_assoc_type_enum_id', 3
UNION
SELECT 'clt_alkami', 'work_effort_assoc', 'from_date', 4;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'work_effort_billing', 'work_effort_id', 1
UNION
SELECT 'clt_alkami', 'work_effort_billing', 'invoice_id', 2
UNION
SELECT 'clt_alkami', 'work_effort_billing', 'invoice_item_seq_id', 3;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'work_effort_category', 'work_effort_category_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'work_effort_category_appl', 'work_effort_id', 1
UNION
SELECT 'clt_alkami', 'work_effort_category_appl', 'work_effort_category_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'work_effort_comm_event', 'work_effort_id', 1
UNION
SELECT 'clt_alkami', 'work_effort_comm_event', 'communication_event_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'work_effort_contact_mech', 'work_effort_id', 1
UNION
SELECT 'clt_alkami', 'work_effort_contact_mech', 'contact_mech_id', 2
UNION
SELECT 'clt_alkami', 'work_effort_contact_mech', 'contact_mech_purpose_id', 3
UNION
SELECT 'clt_alkami', 'work_effort_contact_mech', 'from_date', 4;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'work_effort_content', 'work_effort_content_id', 1;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'work_effort_deliverable_prod', 'work_effort_id', 1
UNION
SELECT 'clt_alkami', 'work_effort_deliverable_prod', 'deliverable_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'work_effort_facility', 'work_effort_id', 1
UNION
SELECT 'clt_alkami', 'work_effort_facility', 'facility_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'work_effort_invoice', 'invoice_id', 1
UNION
SELECT 'clt_alkami', 'work_effort_invoice', 'work_effort_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'work_effort_note', 'work_effort_id', 1
UNION
SELECT 'clt_alkami', 'work_effort_note', 'note_date', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'work_effort_party', 'work_effort_id', 1
UNION
SELECT 'clt_alkami', 'work_effort_party', 'party_id', 2
UNION
SELECT 'clt_alkami', 'work_effort_party', 'role_type_id', 3
UNION
SELECT 'clt_alkami', 'work_effort_party', 'from_date', 4;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'work_effort_product', 'work_effort_id', 1
UNION
SELECT 'clt_alkami', 'work_effort_product', 'product_id', 2
UNION
SELECT 'clt_alkami', 'work_effort_product', 'from_date', 3;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'work_effort_skill_standard', 'work_effort_id', 1
UNION
SELECT 'clt_alkami', 'work_effort_skill_standard', 'skill_type_enum_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'work_requirement_fulfillment', 'requirement_id', 1
UNION
SELECT 'clt_alkami', 'work_requirement_fulfillment', 'work_effort_id', 2;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'work_type_gl_override', 'organization_party_id', 1
UNION
SELECT 'clt_alkami', 'work_type_gl_override', 'work_type_enum_id', 2
UNION
SELECT 'clt_alkami', 'work_type_gl_override', 'item_type_enum_id', 3;

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_alkami', 'work_type_risk_class', 'geo_id', 1
UNION
SELECT 'clt_alkami', 'work_type_risk_class', 'work_type_enum_id', 2;