DELETE FROM etl.ETLGenPrimaryKeyColumns WHERE DataLayer = 'clt_alkami';
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'agreement', 'agreement_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'agreement_content', 'agreement_content_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'agreement_item', 'agreement_id', 0),
('clt_alkami', 'agreement_item', 'agreement_item_seq_id', 1)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'agreement_party', 'agreement_id', 0),
('clt_alkami', 'agreement_party', 'party_id', 1),
('clt_alkami', 'agreement_party', 'role_type_id', 2)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'agreement_role_type', 'agreement_id', 0),
('clt_alkami', 'agreement_role_type', 'role_type_id', 1)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'agreement_signature', 'agreement_id', 0),
('clt_alkami', 'agreement_signature', 'party_id', 1)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'artifact_authz', 'artifact_authz_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'artifact_authz_failure', 'failure_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'artifact_authz_filter', 'artifact_authz_id', 0),
('clt_alkami', 'artifact_authz_filter', 'entity_filter_set_id', 1)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'artifact_group', 'artifact_group_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'artifact_group_member', 'artifact_group_id', 0),
('clt_alkami', 'artifact_group_member', 'artifact_name', 1),
('clt_alkami', 'artifact_group_member', 'artifact_type_enum_id', 2)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'artifact_hit', 'hit_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'artifact_hit_bin', 'hit_bin_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'asset_type_gl_account', 'asset_type_gl_account_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'authentication_client', 'client_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'bank_account', 'payment_method_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'benefit_type', 'benefit_type_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'carrier_shipment_method', 'carrier_party_id', 0),
('clt_alkami', 'carrier_shipment_method', 'shipment_method_enum_id', 1)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'communication_event_type', 'communication_event_type_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'condition_rule_v2', 'condition_set_id', 0),
('clt_alkami', 'condition_rule_v2', 'rule_id', 1)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'condition_set', 'condition_set_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'contact_mech', 'contact_mech_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'contact_mech_purpose', 'contact_mech_purpose_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'credit_profile', 'credit_profile_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'credit_profile_attribute', 'attribute_code', 0),
('clt_alkami', 'credit_profile_attribute', 'credit_bureau_enum_id', 1)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'credit_profile_attribute_default', 'attribute_code', 0),
('clt_alkami', 'credit_profile_attribute_default', 'credit_bureau_enum_id', 1),
('clt_alkami', 'credit_profile_attribute_default', 'default_value', 2)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'data_document', 'data_document_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'data_document_condition', 'data_document_id', 0),
('clt_alkami', 'data_document_condition', 'condition_seq_id', 1)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'data_document_field', 'data_document_id', 0),
('clt_alkami', 'data_document_field', 'field_seq_id', 1)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'data_feed', 'data_feed_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'data_feed_document', 'data_feed_id', 0),
('clt_alkami', 'data_feed_document', 'data_document_id', 1)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'data_source', 'data_source_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'database_host', 'database_host_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'database_type', 'database_type_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'db_form', 'form_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'db_form_field', 'form_id', 0),
('clt_alkami', 'db_form_field', 'field_name', 1)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'db_form_field_attribute', 'form_id', 0),
('clt_alkami', 'db_form_field_attribute', 'field_name', 1),
('clt_alkami', 'db_form_field_attribute', 'attribute_name', 2)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'db_form_field_option', 'form_id', 0),
('clt_alkami', 'db_form_field_option', 'field_name', 1),
('clt_alkami', 'db_form_field_option', 'sequence_num', 2)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'db_form_validation', 'validation_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'db_resource', 'resource_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'db_resource_file', 'resource_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'db_resource_file_history', 'resource_id', 0),
('clt_alkami', 'db_resource_file_history', 'version_name', 1)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'elasticsearch_report', 'report_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'elasticsearch_report_dataset', 'dataset_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'elasticsearch_report_field', 'dataset_id', 0),
('clt_alkami', 'elasticsearch_report_field', 'field_seq_id', 1)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'email_message', 'email_message_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'email_server', 'email_server_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'email_template', 'email_template_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'empl_position_class', 'empl_position_class_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'empl_position_class_work_type', 'empl_position_class_id', 0),
('clt_alkami', 'empl_position_class_work_type', 'work_type_enum_id', 1)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'entity_audit_log', 'audit_history_seq_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'entity_filter', 'entity_filter_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'entity_filter_set', 'entity_filter_set_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'enum_group_member', 'enum_group_enum_id', 0),
('clt_alkami', 'enum_group_member', 'enum_id', 1)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'enumeration', 'enum_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'enumeration_type', 'enum_type_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'financial_account', 'fin_account_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'financial_account_reason_gl_account', 'reason_enum_id', 0),
('clt_alkami', 'financial_account_reason_gl_account', 'organization_party_id', 1)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'financial_account_type', 'fin_account_type_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'financial_account_type_gl_account', 'fin_account_type_id', 0),
('clt_alkami', 'financial_account_type_gl_account', 'organization_party_id', 1)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'financial_flow', 'financial_flow_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'financial_worksheet', 'financial_worksheet_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'financial_worksheet_account', 'financial_worksheet_id', 0),
('clt_alkami', 'financial_worksheet_account', 'account_id', 1)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'finworksheetacctadjustment', 'financial_worksheet_id', 0),
('clt_alkami', 'finworksheetacctadjustment', 'account_id', 1),
('clt_alkami', 'finworksheetacctadjustment', 'from_date', 2)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'finworksheetacctparty', 'financial_worksheet_id', 0),
('clt_alkami', 'finworksheetacctparty', 'account_id', 1),
('clt_alkami', 'finworksheetacctparty', 'party_id', 2)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'form_config', 'form_config_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'form_config_field', 'form_config_id', 0),
('clt_alkami', 'form_config_field', 'field_name', 1)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'form_list_find', 'form_list_find_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'form_list_find_field', 'form_list_find_id', 0),
('clt_alkami', 'form_list_find_field', 'field_name', 1)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'form_list_find_user', 'form_list_find_id', 0),
('clt_alkami', 'form_list_find_user', 'user_id', 1)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'form_list_find_user_group', 'form_list_find_id', 0),
('clt_alkami', 'form_list_find_user_group', 'user_group_id', 1)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'form_response', 'form_response_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'form_response_answer', 'form_response_answer_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'geo', 'geo_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'geo_assoc', 'geo_id', 0),
('clt_alkami', 'geo_assoc', 'to_geo_id', 1)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'gl_account', 'gl_account_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'gl_account_organization', 'gl_account_id', 0),
('clt_alkami', 'gl_account_organization', 'organization_party_id', 1)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'gl_account_type_default', 'gl_account_type_enum_id', 0),
('clt_alkami', 'gl_account_type_default', 'organization_party_id', 1)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'gl_journal', 'gl_journal_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'instance_host', 'instance_host_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'instance_host_type', 'host_type_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'instance_image', 'instance_image_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'instance_image_type', 'image_type_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'instance_image_type_env', 'image_type_id', 0),
('clt_alkami', 'instance_image_type_env', 'env_name', 1)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'instance_image_type_link', 'image_type_id', 0),
('clt_alkami', 'instance_image_type_link', 'instance_name', 1)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'instance_image_type_volume', 'image_type_id', 0),
('clt_alkami', 'instance_image_type_volume', 'mount_point', 1)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'invoice_type_trans_type', 'invoice_type_enum_id', 0),
('clt_alkami', 'invoice_type_trans_type', 'organization_party_id', 1),
('clt_alkami', 'invoice_type_trans_type', 'is_payable', 2)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'item_type_gl_account', 'item_type_enum_id', 0),
('clt_alkami', 'item_type_gl_account', 'organization_party_id', 1),
('clt_alkami', 'item_type_gl_account', 'direction', 2)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'localized_entity_field', 'entity_name', 0),
('clt_alkami', 'localized_entity_field', 'field_name', 1),
('clt_alkami', 'localized_entity_field', 'pk_value', 2),
('clt_alkami', 'localized_entity_field', 'locale', 3)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'localized_message', 'original', 0),
('clt_alkami', 'localized_message', 'locale', 1)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'market_interest', 'product_category_id', 0),
('clt_alkami', 'market_interest', 'market_segment_id', 1),
('clt_alkami', 'market_interest', 'from_date', 2)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'market_segment', 'market_segment_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'market_segment_condition_set', 'market_segment_id', 0),
('clt_alkami', 'market_segment_condition_set', 'condition_set_id', 1)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'market_segment_dimension', 'market_segment_id', 0),
('clt_alkami', 'market_segment_dimension', 'uom_dimension_type_id', 1)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'measurement_type', 'measurement_type_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'notification_message', 'notification_message_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'notification_message_user', 'notification_message_id', 0),
('clt_alkami', 'notification_message_user', 'user_id', 1)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'notification_topic', 'topic', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'oidc_authentication_client', 'client_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'oidc_user_login_session', 'user_id', 0),
('clt_alkami', 'oidc_user_login_session', 'session_id', 1)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'order_agreement', 'order_id', 0),
('clt_alkami', 'order_agreement', 'agreement_id', 1)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'order_content', 'order_content_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'order_decision', 'order_id', 0),
('clt_alkami', 'order_decision', 'decision_date', 1)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'order_decision_reason', 'order_id', 0),
('clt_alkami', 'order_decision_reason', 'decision_date', 1),
('clt_alkami', 'order_decision_reason', 'decision_reason_enum_id', 2)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'order_email_message', 'order_id', 0),
('clt_alkami', 'order_email_message', 'email_message_id', 1)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'order_header', 'order_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'order_item', 'order_id', 0),
('clt_alkami', 'order_item', 'order_item_seq_id', 1)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'order_item_form_response', 'order_id', 0),
('clt_alkami', 'order_item_form_response', 'order_item_seq_id', 1),
('clt_alkami', 'order_item_form_response', 'form_response_id', 2)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'order_note', 'order_id', 0),
('clt_alkami', 'order_note', 'note_date', 1)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'order_part', 'order_id', 0),
('clt_alkami', 'order_part', 'order_part_seq_id', 1)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'order_part_party', 'order_id', 0),
('clt_alkami', 'order_part_party', 'order_part_seq_id', 1),
('clt_alkami', 'order_part_party', 'party_id', 2),
('clt_alkami', 'order_part_party', 'role_type_id', 3)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'order_resolution_type', 'order_resolution_type_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'order_tag', 'order_id', 0),
('clt_alkami', 'order_tag', 'tag_type_id', 1),
('clt_alkami', 'order_tag', 'from_date', 2)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'organization', 'party_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'party', 'party_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'party_acctg_preference', 'organization_party_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'party_citizenship', 'party_id', 0),
('clt_alkami', 'party_citizenship', 'geo_id', 1),
('clt_alkami', 'party_citizenship', 'from_date', 2)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'party_classification', 'party_classification_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'party_classification_appl', 'party_id', 0),
('clt_alkami', 'party_classification_appl', 'party_classification_id', 1),
('clt_alkami', 'party_classification_appl', 'from_date', 2)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'party_contact_mech', 'party_id', 0),
('clt_alkami', 'party_contact_mech', 'contact_mech_id', 1),
('clt_alkami', 'party_contact_mech', 'contact_mech_purpose_id', 2),
('clt_alkami', 'party_contact_mech', 'from_date', 3)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'party_content', 'party_content_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'party_identification', 'party_id', 0),
('clt_alkami', 'party_identification', 'party_id_type_enum_id', 1)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'party_relationship', 'party_relationship_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'party_relationship_setting', 'party_relationship_id', 0),
('clt_alkami', 'party_relationship_setting', 'party_setting_type_id', 1)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'party_role', 'party_id', 0),
('clt_alkami', 'party_role', 'role_type_id', 1)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'party_setting', 'party_id', 0),
('clt_alkami', 'party_setting', 'party_setting_type_id', 1)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'party_setting_type', 'party_setting_type_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'party_setting_type_role', 'party_setting_type_id', 0),
('clt_alkami', 'party_setting_type_role', 'role_type_id', 1)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'payment', 'payment_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'payment_gateway_config', 'payment_gateway_config_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'payment_instrument_gl_account', 'payment_instrument_enum_id', 0),
('clt_alkami', 'payment_instrument_gl_account', 'organization_party_id', 1),
('clt_alkami', 'payment_instrument_gl_account', 'is_payable', 2)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'payment_method', 'payment_method_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'payment_plan', 'payment_plan_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'payment_type_gl_account', 'payment_type_enum_id', 0),
('clt_alkami', 'payment_type_gl_account', 'organization_party_id', 1),
('clt_alkami', 'payment_type_gl_account', 'is_payable', 2),
('clt_alkami', 'payment_type_gl_account', 'is_applied', 3)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'payroll_adjustment_detail', 'payroll_adjustment_id', 0),
('clt_alkami', 'payroll_adjustment_detail', 'detail_seq_id', 1)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'payroll_adjustment_exempt', 'payroll_adjustment_id', 0),
('clt_alkami', 'payroll_adjustment_exempt', 'tax_exempt_enum_id', 1)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'payroll_adjustment_fed_stts', 'payroll_adjustment_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'payroll_adjustment_state_stts', 'payroll_adjustment_id', 0),
('clt_alkami', 'payroll_adjustment_state_stts', 'tax_state_status_enum_id', 1)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'payroll_garnish_min_wage', 'state_or_country_geo_id', 0),
('clt_alkami', 'payroll_garnish_min_wage', 'time_period_type_id', 1),
('clt_alkami', 'payroll_garnish_min_wage', 'from_date', 2)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'person', 'party_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'postal_address', 'contact_mech_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'product', 'product_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'product_agreement_v2', 'product_id', 0),
('clt_alkami', 'product_agreement_v2', 'agreement_id', 1)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'product_category', 'product_category_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'product_category_content', 'product_category_content_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'product_category_member', 'product_category_id', 0),
('clt_alkami', 'product_category_member', 'product_id', 1),
('clt_alkami', 'product_category_member', 'from_date', 2)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'product_category_rollup', 'product_category_id', 0),
('clt_alkami', 'product_category_rollup', 'parent_product_category_id', 1),
('clt_alkami', 'product_category_rollup', 'from_date', 2)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'product_content', 'product_content_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'product_db_form', 'product_db_form_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'product_dimension_type', 'dimension_type_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'product_feature', 'product_feature_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'product_feature_appl', 'product_id', 0),
('clt_alkami', 'product_feature_appl', 'product_feature_id', 1),
('clt_alkami', 'product_feature_appl', 'from_date', 2)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'product_feature_iactn', 'product_feature_id', 0),
('clt_alkami', 'product_feature_iactn', 'to_product_feature_id', 1)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'product_meter_type', 'product_meter_type_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'product_parameter', 'product_parameter_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'product_parameter_set', 'product_parameter_set_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'product_parameter_value', 'product_parameter_value_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'product_ruleset', 'ruleset_id', 0),
('clt_alkami', 'product_ruleset', 'product_id', 1),
('clt_alkami', 'product_ruleset', 'from_date', 2)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'product_store', 'product_store_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'product_store_agreement', 'product_store_id', 0),
('clt_alkami', 'product_store_agreement', 'agreement_id', 1)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'product_store_category', 'product_store_id', 0),
('clt_alkami', 'product_store_category', 'product_category_id', 1),
('clt_alkami', 'product_store_category', 'store_category_type_enum_id', 2),
('clt_alkami', 'product_store_category', 'from_date', 3)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'product_store_email', 'product_store_id', 0),
('clt_alkami', 'product_store_email', 'email_type_enum_id', 1),
('clt_alkami', 'product_store_email', 'from_date', 2)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'product_store_entry', 'entry_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'product_store_group', 'product_store_group_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'product_store_party', 'product_store_id', 0),
('clt_alkami', 'product_store_party', 'party_id', 1),
('clt_alkami', 'product_store_party', 'role_type_id', 2),
('clt_alkami', 'product_store_party', 'from_date', 3)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'product_store_setting', 'product_store_id', 0),
('clt_alkami', 'product_store_setting', 'setting_type_enum_id', 1),
('clt_alkami', 'product_store_setting', 'from_date', 2)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'product_uom_dimension', 'product_uom_dimension_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'rate_amount', 'rate_amount_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'risk_group_segment_parameters', 'market_segment_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'role_group_member', 'role_group_enum_id', 0),
('clt_alkami', 'role_group_member', 'role_type_id', 1)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'role_type', 'role_type_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'rule_condition_set', 'rule_id', 0),
('clt_alkami', 'rule_condition_set', 'condition_set_id', 1)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'rule_config', 'rule_id', 0),
('clt_alkami', 'rule_config', 'config_key', 1)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'rule_mitigation', 'mitigation_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'ruleset', 'ruleset_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'ruleset_condition_set', 'ruleset_id', 0),
('clt_alkami', 'ruleset_condition_set', 'condition_set_id', 1)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'ruleset_role', 'ruleset_id', 0),
('clt_alkami', 'ruleset_role', 'role_type_id', 1),
('clt_alkami', 'ruleset_role', 'from_date', 2)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'ruleset_rule', 'ruleset_id', 0),
('clt_alkami', 'ruleset_rule', 'rule_id', 1)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'salesfunnel_config', 'salesfunnel_config_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'salesfunnel_config_setting', 'config_setting_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'salesfunnel_config_store', 'product_store_id', 0),
('clt_alkami', 'salesfunnel_config_store', 'from_date', 2)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'score_factor', 'score_factor_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'score_factor_config', 'score_factor_id', 0),
('clt_alkami', 'score_factor_config', 'config_key', 1)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'score_factor_option', 'score_factor_id', 0),
('clt_alkami', 'score_factor_option', 'factor_option_seq_id', 1)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'score_model', 'score_model_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'score_model_condition_set', 'score_model_id', 0),
('clt_alkami', 'score_model_condition_set', 'condition_set_id', 1)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'screen_document', 'screen_location', 0),
('clt_alkami', 'screen_document', 'doc_index', 1)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'screen_flow', 'screen_flow_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'screen_flow_item', 'screen_flow_id', 0),
('clt_alkami', 'screen_flow_item', 'screen_path', 1)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'screen_flow_item_field', 'screen_flow_id', 0),
('clt_alkami', 'screen_flow_item_field', 'screen_path', 1),
('clt_alkami', 'screen_flow_item_field', 'field_name', 2)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'screen_theme', 'screen_theme_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'screen_theme_resource', 'screen_theme_id', 0),
('clt_alkami', 'screen_theme_resource', 'sequence_num', 1)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'sequence_value_item', 'seq_name', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'service_job', 'job_name', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'service_job_parameter', 'job_name', 0),
('clt_alkami', 'service_job_parameter', 'parameter_name', 1)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'service_job_run', 'job_run_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'service_job_run_lock', 'job_name', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'service_parameter_semaphore', 'service_name', 0),
('clt_alkami', 'service_parameter_semaphore', 'parameter_value', 1)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'service_register', 'service_register_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'settlement_term', 'settlement_term_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'shipping_gateway_config', 'shipping_gateway_config_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'status_flow', 'status_flow_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'status_flow_item', 'status_flow_id', 0),
('clt_alkami', 'status_flow_item', 'status_id', 1)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'status_flow_transition', 'status_flow_id', 0),
('clt_alkami', 'status_flow_transition', 'status_id', 1),
('clt_alkami', 'status_flow_transition', 'to_status_id', 2)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'status_item', 'status_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'status_type', 'status_type_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'subscreens_item', 'screen_location', 0),
('clt_alkami', 'subscreens_item', 'subscreen_name', 1),
('clt_alkami', 'subscreens_item', 'user_group_id', 2)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'system_message', 'system_message_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'system_message_enum_map', 'system_message_remote_id', 0),
('clt_alkami', 'system_message_enum_map', 'enum_id', 1)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'system_message_error', 'system_message_id', 0),
('clt_alkami', 'system_message_error', 'error_date', 1)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'system_message_mapping_rule', 'ruleset_id', 0),
('clt_alkami', 'system_message_mapping_rule', 'rule_seq_id', 1)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'system_message_mapping_ruleset', 'ruleset_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'system_message_type', 'system_message_type_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'tag_type', 'tag_type_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'tax_authority', 'tax_authority_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'tax_gateway_config', 'tax_gateway_config_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'telecom_number', 'contact_mech_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'time_period_type', 'time_period_type_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'uom', 'uom_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'uom_conversion', 'uom_conversion_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'uom_dim_type_group_member', 'uom_dim_type_group_enum_id', 0),
('clt_alkami', 'uom_dim_type_group_member', 'uom_dimension_type_id', 1)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'uom_dimension_type', 'uom_dimension_type_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'user_account', 'user_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'user_group', 'user_group_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'user_group_member', 'user_group_id', 0),
('clt_alkami', 'user_group_member', 'user_id', 1),
('clt_alkami', 'user_group_member', 'from_date', 2)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'user_group_permission', 'user_group_id', 0),
('clt_alkami', 'user_group_permission', 'user_permission_id', 1),
('clt_alkami', 'user_group_permission', 'from_date', 2)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'user_group_preference', 'user_group_id', 0),
('clt_alkami', 'user_group_preference', 'preference_key', 1)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'user_login_history', 'user_id', 0),
('clt_alkami', 'user_login_history', 'from_date', 1)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'user_password_history', 'user_id', 0),
('clt_alkami', 'user_password_history', 'from_date', 1)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'user_permission', 'user_permission_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'user_preference', 'user_id', 0),
('clt_alkami', 'user_preference', 'preference_key', 1)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'visit', 'visit_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'visitor', 'visitor_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'wiki_page', 'wiki_page_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'wiki_page_history', 'wiki_page_id', 0),
('clt_alkami', 'wiki_page_history', 'history_seq_id', 1)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'wiki_space', 'wiki_space_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'work_effort', 'work_effort_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'work_effort_category', 'work_effort_category_id', 0)
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) VALUES
('clt_alkami', 'work_effort_category_appl', 'work_effort_id', 0),
('clt_alkami', 'work_effort_category_appl', 'work_effort_category_id', 1)
GO

