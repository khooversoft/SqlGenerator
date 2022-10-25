

DECLARE @env AS NVARCHAR(16) = (SELECT @@SERVERNAME)
DECLARE @src_storage_acct NVARCHAR(256)

IF @env = 'asapcoretest'
BEGIN	
 SET @src_storage_acct = 'https://asapadlstest.blob.core.windows.net'
END
ELSE IF @env = 'asapcorepp'
BEGIN	
 SET @src_storage_acct = 'https://asapadlspp.blob.core.windows.net'
END
ELSE IF  @env = 'asapcore'
BEGIN	
 SET @src_storage_acct = 'https://asapadls.blob.core.windows.net'
END


PRINT CONCAT('@env:',@env)
PRINT CONCAT('@src_storage_acct',@src_storage_acct)


/*****************************************************
--Global Metadata
******************************************************/
DECLARE @pipeline_name AS NVARCHAR(260) = N'pl_Alkami_raw_to_cultivated_copyinto';
DECLARE @activity_name AS NVARCHAR(260) = N'cp_extract_to_raw';

/*****************************************************
--Pipeline Metadata
******************************************************/
DROP TABLE IF EXISTS #pipeline;

SELECT TOP 1 pipeline_name, trigger_type INTO #pipeline FROM cntrl.pipeline;

TRUNCATE TABLE #pipeline;

INSERT INTO #pipeline (pipeline_name, trigger_type) VALUES (@pipeline_name, 'scheduled_daily');

PRINT 'Merge Pipeline';

MERGE cntrl.pipeline tgt
USING #pipeline src
ON tgt.pipeline_name = src.pipeline_name
   AND tgt.trigger_type = src.trigger_type
WHEN NOT MATCHED THEN INSERT (pipeline_name, trigger_type)
                      VALUES
                      (src.pipeline_name, src.trigger_type);

/*****************************************************
--Activity Metadata
******************************************************/
DROP TABLE IF EXISTS #activity;

SELECT TOP 1
       activity_name,
       pipeline_id,
       pipeline_name,
       activity_type,
       step_number,
       is_rerunnable,
       retry,
       retry_interval,
       activity_timeout
INTO
 #activity
FROM
 cntrl.activity;

DECLARE @pipeline_id BIGINT = (SELECT pipeline_id FROM cntrl.pipeline WHERE pipeline_name = @pipeline_name);

TRUNCATE TABLE #activity;

INSERT INTO #activity (activity_name, pipeline_id, pipeline_name, activity_type, step_number, is_rerunnable, retry, retry_interval, activity_timeout)
VALUES
(@activity_name, @pipeline_id, @pipeline_name, 'copy_query', 1, 1, 3, 5, 1800);

PRINT 'Merge Activity';

MERGE cntrl.activity tgt
USING #activity src
ON tgt.activity_name = src.activity_name
   AND tgt.pipeline_id = src.pipeline_id
   AND tgt.pipeline_name = src.pipeline_name
   AND tgt.activity_type = src.activity_type
WHEN MATCHED AND (
              ISNULL(tgt.pipeline_name, '0') <> ISNULL(src.pipeline_name, '0')
              OR ISNULL(tgt.activity_type, '0') <> ISNULL(src.activity_type, '0')
              OR ISNULL(tgt.step_number, '0') <> ISNULL(src.step_number, '0')
              OR ISNULL(tgt.is_rerunnable, '0') <> ISNULL(src.is_rerunnable, '0')
              OR ISNULL(tgt.retry, '0') <> ISNULL(src.retry, '0')
              OR ISNULL(tgt.retry_interval, '0') <> ISNULL(src.retry_interval, '0')
              OR ISNULL(tgt.activity_timeout, '0') <> ISNULL(src.activity_timeout, '0')
             ) THEN UPDATE SET
                     tgt.activity_name = src.activity_name,
                     tgt.pipeline_id = src.pipeline_id,
                     tgt.pipeline_name = src.pipeline_name,
                     tgt.activity_type = src.activity_type,
                     tgt.step_number = src.step_number,
                     tgt.is_rerunnable = src.is_rerunnable,
                     tgt.retry = src.retry,
                     tgt.retry_interval = src.retry_interval,
                     tgt.activity_timeout = src.activity_timeout,
                     tgt.update_dttm = GETUTCDATE(),
                     tgt.updated_by = SUSER_SNAME()
WHEN NOT MATCHED THEN INSERT (activity_name, pipeline_id, pipeline_name, activity_type, step_number, is_rerunnable, retry, retry_interval, activity_timeout)
                      VALUES
                      (src.activity_name, src.pipeline_id, src.pipeline_name, src.activity_type, src.step_number, src.is_rerunnable, src.retry, src.retry_interval, src.activity_timeout);

/*****************************************************
--Activity Parameters
******************************************************/
DROP TABLE IF EXISTS #activity_parameter;

SELECT TOP 1
       activity_id,
       activity_name,
       activity_type,
       context,
       param_name,
       param_value
INTO
 #activity_parameter
FROM
 cntrl.activity_parameter;

DECLARE @activity_id BIGINT = (SELECT activity_id FROM cntrl.activity WHERE activity_name = @activity_name AND pipeline_id = @pipeline_id);

TRUNCATE TABLE #activity_parameter;

INSERT INTO #activity_parameter (activity_id, activity_name, activity_type, context, param_name, param_value)
VALUES
--Source											
(@activity_id, @activity_name, 'copy_cmd', 'Source', 'src_linked_service', 'ls_sql_server'),
(@activity_id, @activity_name, 'copy_cmd', 'Source', 'subject_area', 'copycmd'),
(@activity_id, @activity_name, 'copy_cmd', 'Source', 'query_timeout', '120'),         --Default '120'
                                                                                      --file options
(@activity_id, @activity_name, 'copy_cmd', 'Source', 'file_compression', 'None'),     --gzip, None, snappy, zip, tar
(@activity_id, @activity_name, 'copy_cmd', 'Source', 'compression_level', 'Optimal'), --Fastest, Optimal
(@activity_id, @activity_name, 'copy_cmd', 'Source', 'field_terminator', '||'),        --| or ,
(@activity_id, @activity_name, 'copy_cmd', 'Source', 'row_terminator', '\n'),       --
(@activity_id, @activity_name, 'copy_cmd', 'Source', 'field_quote', '"'),             --"
(@activity_id, @activity_name, 'copy_cmd', 'Source', 'encoding', 'UTF-8'),            --
(@activity_id, @activity_name, 'copy_cmd', 'Source', 'max_errors', '10'),
(@activity_id, @activity_name, 'copy_cmd', 'Source', 'file_type', 'csv'),
(@activity_id, @activity_name, 'copy_cmd', 'Source', 'first_row', '2'),
(@activity_id, @activity_name, 'copy_cmd', 'Source', 'src_storage_acct',  @src_storage_acct),
(@activity_id, @activity_name, 'copy_cmd', 'Source', 'src_container', 'raw'),
(@activity_id, @activity_name, 'copy_cmd', 'Source', 'src_directory', 'Neto'),
(@activity_id, @activity_name, 'copy_cmd', 'Source', 'src_filepath_pattern', 'yyyy/MM/dd'),
(@activity_id, @activity_name, 'copy_cmd', 'Source', 'src_file_type', 'csv'),
(@activity_id, @activity_name, 'copy_cmd', 'Source', 'error_file_container', 'raw'),
(@activity_id, @activity_name, 'copy_cmd', 'Source', 'skip_line_count', '1'),                                                                                      
(@activity_id, @activity_name, 'copy_cmd', 'Source', 'ingest_schema', 'ing_Neto'),          
(@activity_id, @activity_name, 'copy_cmd', 'Source', 'cultivated_schema_name', 'clt_Neto'),          
(@activity_id, @activity_name, 'copy_cmd', 'Source', 'latest_version_orderby_mapping', 'ASAP_SRC_FILEPATH'),
(@activity_id, @activity_name, 'copy_cmd', 'Source', 'ASAP_RecordEffectiveDateTime_mapping', NULL),
(@activity_id, @activity_name, 'copy_cmd', 'Source', 'tgt_linked_service', 'asap_syn'),
(@activity_id, @activity_name, 'copy_cmd', 'Source', 'parent_key', 'LNUM'),
(@activity_id, @activity_name, 'copy_cmd', 'Source', 'date_from_format', 'YYYYMMDD_HHMMSS');

PRINT 'Merge Activity Parameter';

MERGE cntrl.activity_parameter tgt
USING #activity_parameter src
ON tgt.activity_id = src.activity_id
   AND tgt.activity_name = src.activity_name
   AND tgt.activity_type = src.activity_type
   AND tgt.context = src.context
   AND tgt.param_name = src.param_name
WHEN MATCHED AND ISNULL(tgt.param_value, '0') <> ISNULL(src.param_value, '0') THEN UPDATE SET
                                                                                    tgt.param_value = src.param_value,
                                                                                    tgt.update_dttm = GETUTCDATE(),
                                                                                    tgt.updated_by = SUSER_SNAME()
WHEN NOT MATCHED THEN INSERT (activity_id, activity_name, activity_type, context, param_name, param_value)
                      VALUES
                      (src.activity_id, src.activity_name, src.activity_type, src.context, src.param_name, src.param_value);

/*****************************************************
--Data Object Parameters
******************************************************/
DROP TABLE IF EXISTS #data_object_parameter;

SELECT TOP 1
       data_object_name,
       activity_id,
       activity_name,
       is_enabled,
       context,
       param_name,
       param_value
INTO
 #data_object_parameter
FROM
 cntrl.data_object_parameter;


TRUNCATE TABLE #data_object_parameter;

INSERT INTO #data_object_parameter (data_object_name, activity_id, activity_name, is_enabled, context, param_name, param_value)
VALUES

--Query Option 3: Lookup Column, generated in copy parameter
/************copy_into_test************/

('agreement', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'agreement')
('agreement', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('agreement', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('agreement_content', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'agreement_content')
('agreement_content', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('agreement_content', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('agreement_item', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'agreement_item')
('agreement_item', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('agreement_item', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('agreement_party', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'agreement_party')
('agreement_party', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('agreement_party', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('agreement_role_type', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'agreement_role_type')
('agreement_role_type', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('agreement_role_type', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('agreement_signature', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'agreement_signature')
('agreement_signature', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('agreement_signature', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('artifact_authz', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'artifact_authz')
('artifact_authz', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('artifact_authz', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('artifact_authz_failure', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'artifact_authz_failure')
('artifact_authz_failure', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('artifact_authz_failure', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('artifact_authz_filter', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'artifact_authz_filter')
('artifact_authz_filter', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('artifact_authz_filter', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('artifact_group', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'artifact_group')
('artifact_group', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('artifact_group', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('artifact_group_member', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'artifact_group_member')
('artifact_group_member', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('artifact_group_member', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('artifact_hit', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'artifact_hit')
('artifact_hit', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('artifact_hit', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('artifact_hit_bin', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'artifact_hit_bin')
('artifact_hit_bin', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('artifact_hit_bin', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('asset_type_gl_account', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'asset_type_gl_account')
('asset_type_gl_account', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('asset_type_gl_account', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('authentication_client', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'authentication_client')
('authentication_client', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('authentication_client', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('bank_account', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'bank_account')
('bank_account', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('bank_account', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('benefit_type', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'benefit_type')
('benefit_type', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('benefit_type', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('carrier_shipment_method', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'carrier_shipment_method')
('carrier_shipment_method', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('carrier_shipment_method', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('communication_event_type', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'communication_event_type')
('communication_event_type', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('communication_event_type', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('condition_rule_v2', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'condition_rule_v2')
('condition_rule_v2', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('condition_rule_v2', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('condition_set', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'condition_set')
('condition_set', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('condition_set', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('contact_mech', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'contact_mech')
('contact_mech', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('contact_mech', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('contact_mech_purpose', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'contact_mech_purpose')
('contact_mech_purpose', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('contact_mech_purpose', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('credit_info', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'credit_info')
('credit_info', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('credit_info', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('credit_profile', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'credit_profile')
('credit_profile', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('credit_profile', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('credit_profile_attribute', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'credit_profile_attribute')
('credit_profile_attribute', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('credit_profile_attribute', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('credit_profile_attribute_default', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'credit_profile_attribute_default')
('credit_profile_attribute_default', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('credit_profile_attribute_default', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('data_document', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'data_document')
('data_document', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('data_document', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('data_document_condition', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'data_document_condition')
('data_document_condition', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('data_document_condition', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('data_document_field', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'data_document_field')
('data_document_field', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('data_document_field', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('data_feed', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'data_feed')
('data_feed', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('data_feed', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('data_feed_document', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'data_feed_document')
('data_feed_document', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('data_feed_document', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('data_source', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'data_source')
('data_source', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('data_source', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('database_host', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'database_host')
('database_host', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('database_host', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('database_type', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'database_type')
('database_type', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('database_type', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('db_form', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'db_form')
('db_form', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('db_form', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('db_form_field', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'db_form_field')
('db_form_field', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('db_form_field', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('db_form_field_attribute', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'db_form_field_attribute')
('db_form_field_attribute', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('db_form_field_attribute', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('db_form_field_option', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'db_form_field_option')
('db_form_field_option', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('db_form_field_option', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('db_form_validation', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'db_form_validation')
('db_form_validation', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('db_form_validation', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('db_resource', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'db_resource')
('db_resource', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('db_resource', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('db_resource_file', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'db_resource_file')
('db_resource_file', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('db_resource_file', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('db_resource_file_history', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'db_resource_file_history')
('db_resource_file_history', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('db_resource_file_history', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('elasticsearch_report', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'elasticsearch_report')
('elasticsearch_report', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('elasticsearch_report', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('elasticsearch_report_dataset', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'elasticsearch_report_dataset')
('elasticsearch_report_dataset', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('elasticsearch_report_dataset', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('elasticsearch_report_field', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'elasticsearch_report_field')
('elasticsearch_report_field', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('elasticsearch_report_field', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('email_message', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'email_message')
('email_message', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('email_message', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('email_server', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'email_server')
('email_server', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('email_server', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('email_template', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'email_template')
('email_template', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('email_template', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('empl_position_class', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'empl_position_class')
('empl_position_class', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('empl_position_class', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('empl_position_class_work_type', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'empl_position_class_work_type')
('empl_position_class_work_type', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('empl_position_class_work_type', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('entity_audit_log', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'entity_audit_log')
('entity_audit_log', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('entity_audit_log', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('entity_filter', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'entity_filter')
('entity_filter', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('entity_filter', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('entity_filter_set', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'entity_filter_set')
('entity_filter_set', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('entity_filter_set', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('enum_group_member', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'enum_group_member')
('enum_group_member', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('enum_group_member', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('enumeration', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'enumeration')
('enumeration', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('enumeration', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('enumeration_type', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'enumeration_type')
('enumeration_type', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('enumeration_type', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('financial_account', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'financial_account')
('financial_account', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('financial_account', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('financial_account_reason_gl_account', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'financial_account_reason_gl_account')
('financial_account_reason_gl_account', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('financial_account_reason_gl_account', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('financial_account_type', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'financial_account_type')
('financial_account_type', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('financial_account_type', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('financial_account_type_gl_account', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'financial_account_type_gl_account')
('financial_account_type_gl_account', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('financial_account_type_gl_account', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('financial_flow', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'financial_flow')
('financial_flow', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('financial_flow', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('financial_worksheet', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'financial_worksheet')
('financial_worksheet', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('financial_worksheet', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('financial_worksheet_account', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'financial_worksheet_account')
('financial_worksheet_account', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('financial_worksheet_account', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('finworksheetacctadjustment', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'finworksheetacctadjustment')
('finworksheetacctadjustment', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('finworksheetacctadjustment', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('finworksheetacctparty', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'finworksheetacctparty')
('finworksheetacctparty', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('finworksheetacctparty', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('form_config', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'form_config')
('form_config', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('form_config', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('form_config_field', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'form_config_field')
('form_config_field', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('form_config_field', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('form_list_find', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'form_list_find')
('form_list_find', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('form_list_find', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('form_list_find_field', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'form_list_find_field')
('form_list_find_field', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('form_list_find_field', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('form_list_find_user', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'form_list_find_user')
('form_list_find_user', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('form_list_find_user', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('form_list_find_user_group', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'form_list_find_user_group')
('form_list_find_user_group', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('form_list_find_user_group', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('form_response', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'form_response')
('form_response', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('form_response', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('form_response_answer', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'form_response_answer')
('form_response_answer', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('form_response_answer', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('geo', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'geo')
('geo', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('geo', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('geo_assoc', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'geo_assoc')
('geo_assoc', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('geo_assoc', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('gl_account', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'gl_account')
('gl_account', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('gl_account', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('gl_account_organization', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'gl_account_organization')
('gl_account_organization', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('gl_account_organization', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('gl_account_type_default', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'gl_account_type_default')
('gl_account_type_default', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('gl_account_type_default', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('gl_journal', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'gl_journal')
('gl_journal', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('gl_journal', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('instance_host', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'instance_host')
('instance_host', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('instance_host', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('instance_host_type', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'instance_host_type')
('instance_host_type', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('instance_host_type', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('instance_image', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'instance_image')
('instance_image', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('instance_image', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('instance_image_type', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'instance_image_type')
('instance_image_type', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('instance_image_type', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('instance_image_type_env', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'instance_image_type_env')
('instance_image_type_env', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('instance_image_type_env', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('instance_image_type_link', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'instance_image_type_link')
('instance_image_type_link', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('instance_image_type_link', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('instance_image_type_volume', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'instance_image_type_volume')
('instance_image_type_volume', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('instance_image_type_volume', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('invoice_type_trans_type', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'invoice_type_trans_type')
('invoice_type_trans_type', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('invoice_type_trans_type', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('item_type_gl_account', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'item_type_gl_account')
('item_type_gl_account', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('item_type_gl_account', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('localized_entity_field', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'localized_entity_field')
('localized_entity_field', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('localized_entity_field', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('localized_message', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'localized_message')
('localized_message', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('localized_message', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('market_interest', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'market_interest')
('market_interest', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('market_interest', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('market_segment', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'market_segment')
('market_segment', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('market_segment', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('market_segment_condition_set', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'market_segment_condition_set')
('market_segment_condition_set', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('market_segment_condition_set', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('market_segment_dimension', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'market_segment_dimension')
('market_segment_dimension', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('market_segment_dimension', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('measurement_type', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'measurement_type')
('measurement_type', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('measurement_type', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('notification_message', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'notification_message')
('notification_message', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('notification_message', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('notification_message_user', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'notification_message_user')
('notification_message_user', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('notification_message_user', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('notification_topic', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'notification_topic')
('notification_topic', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('notification_topic', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('oidc_authentication_client', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'oidc_authentication_client')
('oidc_authentication_client', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('oidc_authentication_client', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('oidc_user_login_session', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'oidc_user_login_session')
('oidc_user_login_session', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('oidc_user_login_session', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('order_agreement', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'order_agreement')
('order_agreement', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('order_agreement', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('order_content', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'order_content')
('order_content', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('order_content', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('order_decision', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'order_decision')
('order_decision', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('order_decision', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('order_decision_reason', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'order_decision_reason')
('order_decision_reason', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('order_decision_reason', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('order_email_message', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'order_email_message')
('order_email_message', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('order_email_message', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('order_header', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'order_header')
('order_header', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('order_header', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('order_item', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'order_item')
('order_item', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('order_item', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('order_item_form_response', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'order_item_form_response')
('order_item_form_response', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('order_item_form_response', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('order_note', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'order_note')
('order_note', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('order_note', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('order_part', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'order_part')
('order_part', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('order_part', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('order_part_party', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'order_part_party')
('order_part_party', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('order_part_party', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('order_resolution_type', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'order_resolution_type')
('order_resolution_type', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('order_resolution_type', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('order_tag', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'order_tag')
('order_tag', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('order_tag', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('organization', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'organization')
('organization', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('organization', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('party', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'party')
('party', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('party', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('party_acctg_preference', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'party_acctg_preference')
('party_acctg_preference', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('party_acctg_preference', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('party_citizenship', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'party_citizenship')
('party_citizenship', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('party_citizenship', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('party_classification', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'party_classification')
('party_classification', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('party_classification', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('party_classification_appl', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'party_classification_appl')
('party_classification_appl', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('party_classification_appl', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('party_contact_mech', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'party_contact_mech')
('party_contact_mech', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('party_contact_mech', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('party_content', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'party_content')
('party_content', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('party_content', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('party_identification', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'party_identification')
('party_identification', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('party_identification', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('party_relationship', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'party_relationship')
('party_relationship', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('party_relationship', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('party_relationship_setting', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'party_relationship_setting')
('party_relationship_setting', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('party_relationship_setting', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('party_role', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'party_role')
('party_role', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('party_role', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('party_setting', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'party_setting')
('party_setting', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('party_setting', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('party_setting_type', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'party_setting_type')
('party_setting_type', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('party_setting_type', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('party_setting_type_role', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'party_setting_type_role')
('party_setting_type_role', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('party_setting_type_role', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('payment', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'payment')
('payment', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('payment', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('payment_gateway_config', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'payment_gateway_config')
('payment_gateway_config', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('payment_gateway_config', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('payment_instrument_gl_account', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'payment_instrument_gl_account')
('payment_instrument_gl_account', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('payment_instrument_gl_account', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('payment_method', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'payment_method')
('payment_method', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('payment_method', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('payment_plan', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'payment_plan')
('payment_plan', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('payment_plan', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('payment_type_gl_account', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'payment_type_gl_account')
('payment_type_gl_account', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('payment_type_gl_account', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('payroll_adjustment_detail', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'payroll_adjustment_detail')
('payroll_adjustment_detail', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('payroll_adjustment_detail', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('payroll_adjustment_exempt', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'payroll_adjustment_exempt')
('payroll_adjustment_exempt', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('payroll_adjustment_exempt', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('payroll_adjustment_fed_stts', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'payroll_adjustment_fed_stts')
('payroll_adjustment_fed_stts', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('payroll_adjustment_fed_stts', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('payroll_adjustment_state_stts', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'payroll_adjustment_state_stts')
('payroll_adjustment_state_stts', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('payroll_adjustment_state_stts', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('payroll_garnish_min_wage', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'payroll_garnish_min_wage')
('payroll_garnish_min_wage', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('payroll_garnish_min_wage', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('person', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'person')
('person', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('person', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('postal_address', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'postal_address')
('postal_address', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('postal_address', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('product', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'product')
('product', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('product', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('product_agreement_v2', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'product_agreement_v2')
('product_agreement_v2', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('product_agreement_v2', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('product_category', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'product_category')
('product_category', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('product_category', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('product_category_content', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'product_category_content')
('product_category_content', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('product_category_content', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('product_category_member', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'product_category_member')
('product_category_member', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('product_category_member', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('product_category_rollup', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'product_category_rollup')
('product_category_rollup', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('product_category_rollup', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('product_content', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'product_content')
('product_content', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('product_content', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('product_db_form', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'product_db_form')
('product_db_form', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('product_db_form', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('product_dimension_type', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'product_dimension_type')
('product_dimension_type', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('product_dimension_type', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('product_feature', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'product_feature')
('product_feature', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('product_feature', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('product_feature_appl', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'product_feature_appl')
('product_feature_appl', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('product_feature_appl', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('product_feature_iactn', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'product_feature_iactn')
('product_feature_iactn', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('product_feature_iactn', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('product_meter_type', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'product_meter_type')
('product_meter_type', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('product_meter_type', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('product_parameter', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'product_parameter')
('product_parameter', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('product_parameter', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('product_parameter_set', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'product_parameter_set')
('product_parameter_set', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('product_parameter_set', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('product_parameter_value', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'product_parameter_value')
('product_parameter_value', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('product_parameter_value', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('product_ruleset', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'product_ruleset')
('product_ruleset', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('product_ruleset', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('product_store', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'product_store')
('product_store', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('product_store', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('product_store_agreement', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'product_store_agreement')
('product_store_agreement', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('product_store_agreement', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('product_store_category', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'product_store_category')
('product_store_category', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('product_store_category', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('product_store_email', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'product_store_email')
('product_store_email', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('product_store_email', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('product_store_entry', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'product_store_entry')
('product_store_entry', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('product_store_entry', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('product_store_group', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'product_store_group')
('product_store_group', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('product_store_group', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('product_store_party', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'product_store_party')
('product_store_party', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('product_store_party', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('product_store_setting', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'product_store_setting')
('product_store_setting', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('product_store_setting', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('product_uom_dimension', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'product_uom_dimension')
('product_uom_dimension', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('product_uom_dimension', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('rate_amount', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'rate_amount')
('rate_amount', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('rate_amount', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('risk_group_segment_parameters', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'risk_group_segment_parameters')
('risk_group_segment_parameters', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('risk_group_segment_parameters', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('role_group_member', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'role_group_member')
('role_group_member', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('role_group_member', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('role_type', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'role_type')
('role_type', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('role_type', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('rule_condition_set', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'rule_condition_set')
('rule_condition_set', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('rule_condition_set', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('rule_config', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'rule_config')
('rule_config', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('rule_config', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('rule_mitigation', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'rule_mitigation')
('rule_mitigation', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('rule_mitigation', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('ruleset', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'ruleset')
('ruleset', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('ruleset', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('ruleset_condition_set', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'ruleset_condition_set')
('ruleset_condition_set', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('ruleset_condition_set', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('ruleset_role', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'ruleset_role')
('ruleset_role', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('ruleset_role', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('ruleset_rule', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'ruleset_rule')
('ruleset_rule', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('ruleset_rule', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('salesfunnel_config', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'salesfunnel_config')
('salesfunnel_config', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('salesfunnel_config', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('salesfunnel_config_setting', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'salesfunnel_config_setting')
('salesfunnel_config_setting', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('salesfunnel_config_setting', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('salesfunnel_config_store', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'salesfunnel_config_store')
('salesfunnel_config_store', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('salesfunnel_config_store', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('score_factor', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'score_factor')
('score_factor', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('score_factor', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('score_factor_config', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'score_factor_config')
('score_factor_config', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('score_factor_config', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('score_factor_option', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'score_factor_option')
('score_factor_option', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('score_factor_option', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('score_model', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'score_model')
('score_model', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('score_model', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('score_model_condition_set', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'score_model_condition_set')
('score_model_condition_set', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('score_model_condition_set', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('screen_document', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'screen_document')
('screen_document', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('screen_document', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('screen_flow', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'screen_flow')
('screen_flow', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('screen_flow', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('screen_flow_item', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'screen_flow_item')
('screen_flow_item', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('screen_flow_item', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('screen_flow_item_field', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'screen_flow_item_field')
('screen_flow_item_field', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('screen_flow_item_field', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('screen_theme', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'screen_theme')
('screen_theme', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('screen_theme', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('screen_theme_resource', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'screen_theme_resource')
('screen_theme_resource', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('screen_theme_resource', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('sequence_value_item', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'sequence_value_item')
('sequence_value_item', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('sequence_value_item', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('service_job', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'service_job')
('service_job', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('service_job', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('service_job_parameter', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'service_job_parameter')
('service_job_parameter', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('service_job_parameter', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('service_job_run', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'service_job_run')
('service_job_run', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('service_job_run', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('service_job_run_lock', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'service_job_run_lock')
('service_job_run_lock', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('service_job_run_lock', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('service_parameter_semaphore', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'service_parameter_semaphore')
('service_parameter_semaphore', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('service_parameter_semaphore', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('service_register', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'service_register')
('service_register', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('service_register', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('settlement_term', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'settlement_term')
('settlement_term', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('settlement_term', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('shipping_gateway_config', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'shipping_gateway_config')
('shipping_gateway_config', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('shipping_gateway_config', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('status_flow', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'status_flow')
('status_flow', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('status_flow', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('status_flow_item', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'status_flow_item')
('status_flow_item', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('status_flow_item', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('status_flow_transition', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'status_flow_transition')
('status_flow_transition', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('status_flow_transition', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('status_item', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'status_item')
('status_item', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('status_item', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('status_type', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'status_type')
('status_type', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('status_type', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('subscreens_item', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'subscreens_item')
('subscreens_item', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('subscreens_item', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('system_message', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'system_message')
('system_message', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('system_message', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('system_message_enum_map', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'system_message_enum_map')
('system_message_enum_map', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('system_message_enum_map', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('system_message_error', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'system_message_error')
('system_message_error', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('system_message_error', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('system_message_mapping_rule', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'system_message_mapping_rule')
('system_message_mapping_rule', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('system_message_mapping_rule', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('system_message_mapping_ruleset', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'system_message_mapping_ruleset')
('system_message_mapping_ruleset', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('system_message_mapping_ruleset', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('system_message_type', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'system_message_type')
('system_message_type', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('system_message_type', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('tag_type', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'tag_type')
('tag_type', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('tag_type', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('tax_authority', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'tax_authority')
('tax_authority', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('tax_authority', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('tax_gateway_config', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'tax_gateway_config')
('tax_gateway_config', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('tax_gateway_config', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('telecom_number', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'telecom_number')
('telecom_number', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('telecom_number', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('time_period_type', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'time_period_type')
('time_period_type', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('time_period_type', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('uom', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'uom')
('uom', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('uom', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('uom_conversion', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'uom_conversion')
('uom_conversion', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('uom_conversion', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('uom_dim_type_group_member', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'uom_dim_type_group_member')
('uom_dim_type_group_member', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('uom_dim_type_group_member', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('uom_dimension_type', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'uom_dimension_type')
('uom_dimension_type', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('uom_dimension_type', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('user_account', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'user_account')
('user_account', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('user_account', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('user_group', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'user_group')
('user_group', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('user_group', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('user_group_member', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'user_group_member')
('user_group_member', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('user_group_member', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('user_group_permission', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'user_group_permission')
('user_group_permission', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('user_group_permission', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('user_group_preference', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'user_group_preference')
('user_group_preference', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('user_group_preference', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('user_login_history', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'user_login_history')
('user_login_history', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('user_login_history', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('user_password_history', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'user_password_history')
('user_password_history', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('user_password_history', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('user_permission', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'user_permission')
('user_permission', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('user_permission', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('user_preference', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'user_preference')
('user_preference', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('user_preference', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('visit', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'visit')
('visit', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('visit', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('visitor', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'visitor')
('visitor', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('visitor', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('wiki_page', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'wiki_page')
('wiki_page', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('wiki_page', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('wiki_page_history', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'wiki_page_history')
('wiki_page_history', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('wiki_page_history', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('wiki_space', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'wiki_space')
('wiki_space', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('wiki_space', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('work_effort', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'work_effort')
('work_effort', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('work_effort', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('work_effort_category', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'work_effort_category')
('work_effort_category', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('work_effort_category', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)
('work_effort_category_appl', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'work_effort_category_appl')
('work_effort_category_appl', @activity_id, @activity_name, 1, 'Source', 'pii_columns', '')
('work_effort_category_appl', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL)

PRINT 'Merge Data Object Parameter';

MERGE cntrl.data_object_parameter tgt
USING #data_object_parameter src
ON tgt.data_object_name = src.data_object_name
   AND tgt.activity_id = src.activity_id
   AND tgt.activity_name = src.activity_name
   AND tgt.context = src.context
   AND tgt.param_name = src.param_name
WHEN MATCHED AND (ISNULL(tgt.param_value, '0') <> ISNULL(src.param_value, '0') OR tgt.is_enabled <> src.is_enabled) THEN UPDATE SET
                                                                                                                          tgt.param_value = src.param_value,
                                                                                                                          tgt.is_enabled = src.is_enabled,
                                                                                                                          tgt.update_dttm = GETUTCDATE(),
                                                                                                                          tgt.updated_by = SUSER_SNAME()
WHEN NOT MATCHED THEN INSERT (data_object_name, activity_id, activity_name, is_enabled, context, param_name, param_value)
                      VALUES
                      (src.data_object_name, src.activity_id, src.activity_name, src.is_enabled, src.context, src.param_name, src.param_value);
GO
