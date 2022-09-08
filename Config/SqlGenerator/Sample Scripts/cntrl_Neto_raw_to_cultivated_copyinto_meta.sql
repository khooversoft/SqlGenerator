
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
DECLARE @pipeline_name AS NVARCHAR(260) = N'pl_Neto_raw_to_cultivated_copyinto';
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

('BORROWER', @activity_id, @activity_name, 1, 'Source', 'src_file_prefix', 'Netoxygen_BORROWER_20'),
('BORROWER', @activity_id, @activity_name, 1, 'Source', 'pii_columns', ''),
('BORROWER', @activity_id, @activity_name, 1, 'Source', 'ASAP_DeleteDateTime_mapping', NULL),
('DATES', @activity_id, @activity_name, 0, 'Source', 'src_file_prefix', 'DATES20'),
('DATES', @activity_id, @activity_name, 0, 'Source', 'pii_columns', ''),
('DATES', @activity_id, @activity_name, 0, 'Source', 'ASAP_DeleteDateTime_mapping', NULL),
('GF_TL_DATES', @activity_id, @activity_name, 0, 'Source', 'src_file_prefix', 'GF_TL_DATES20'),
('GF_TL_DATES', @activity_id, @activity_name, 0, 'Source', 'pii_columns', ''),
('GF_TL_DATES', @activity_id, @activity_name, 0, 'Source', 'ASAP_DeleteDateTime_mapping', NULL),
('GF_TL_DATES3', @activity_id, @activity_name, 0, 'Source', 'src_file_prefix', 'GF_TL_DATES320'),
('GF_TL_DATES3', @activity_id, @activity_name, 0, 'Source', 'pii_columns', ''),
('GF_TL_DATES3', @activity_id, @activity_name, 0, 'Source', 'ASAP_DeleteDateTime_mapping', NULL),
('GF_TL_HOUSING_PROPSD', @activity_id, @activity_name, 0, 'Source', 'src_file_prefix', 'GF_TL_HOUSING_PROPSD20'),
('GF_TL_HOUSING_PROPSD', @activity_id, @activity_name, 0, 'Source', 'pii_columns', ''),
('GF_TL_HOUSING_PROPSD', @activity_id, @activity_name, 0, 'Source', 'ASAP_DeleteDateTime_mapping', NULL),
('GF_TL_LOAN_CONTACTS', @activity_id, @activity_name, 0, 'Source', 'src_file_prefix', 'GF_TL_LOAN_CONTACTS20'),
('GF_TL_LOAN_CONTACTS', @activity_id, @activity_name, 0, 'Source', 'pii_columns', ''),
('GF_TL_LOAN_CONTACTS', @activity_id, @activity_name, 0, 'Source', 'ASAP_DeleteDateTime_mapping', NULL),
('GF_TL_LOAN_CONTACTS2', @activity_id, @activity_name, 0, 'Source', 'src_file_prefix', 'GF_TL_LOAN_CONTACTS220'),
('GF_TL_LOAN_CONTACTS2', @activity_id, @activity_name, 0, 'Source', 'pii_columns', ''),
('GF_TL_LOAN_CONTACTS2', @activity_id, @activity_name, 0, 'Source', 'ASAP_DeleteDateTime_mapping', NULL),
('GF_TL_LOAN_DATA', @activity_id, @activity_name, 0, 'Source', 'src_file_prefix', 'GF_TL_LOAN_DATA20'),
('GF_TL_LOAN_DATA', @activity_id, @activity_name, 0, 'Source', 'pii_columns', ''),
('GF_TL_LOAN_DATA', @activity_id, @activity_name, 0, 'Source', 'ASAP_DeleteDateTime_mapping', NULL),
('GF_TL_LOAN_STATUS', @activity_id, @activity_name, 0, 'Source', 'src_file_prefix', 'GF_TL_LOAN_STATUS20'),
('GF_TL_LOAN_STATUS', @activity_id, @activity_name, 0, 'Source', 'pii_columns', ''),
('GF_TL_LOAN_STATUS', @activity_id, @activity_name, 0, 'Source', 'ASAP_DeleteDateTime_mapping', NULL),
('GF_TL_PMT_STREAMS', @activity_id, @activity_name, 0, 'Source', 'src_file_prefix', 'GF_TL_PMT_STREAMS20'),
('GF_TL_PMT_STREAMS', @activity_id, @activity_name, 0, 'Source', 'pii_columns', ''),
('GF_TL_PMT_STREAMS', @activity_id, @activity_name, 0, 'Source', 'ASAP_DeleteDateTime_mapping', NULL),
('GF_TL_PNP_IPG_DETAIL', @activity_id, @activity_name, 0, 'Source', 'src_file_prefix', 'GF_TL_PNP_IPG_DETAIL20'),
('GF_TL_PNP_IPG_DETAIL', @activity_id, @activity_name, 0, 'Source', 'pii_columns', ''),
('GF_TL_PNP_IPG_DETAIL', @activity_id, @activity_name, 0, 'Source', 'ASAP_DeleteDateTime_mapping', NULL),
('GF_TL_POINT_OF_SALE_INFO', @activity_id, @activity_name, 0, 'Source', 'src_file_prefix', 'GF_TL_POINT_OF_SALE_INFO20'),
('GF_TL_POINT_OF_SALE_INFO', @activity_id, @activity_name, 0, 'Source', 'pii_columns', ''),
('GF_TL_POINT_OF_SALE_INFO', @activity_id, @activity_name, 0, 'Source', 'ASAP_DeleteDateTime_mapping', NULL),
('GF_TL_TRANSOVR', @activity_id, @activity_name, 0, 'Source', 'src_file_prefix', 'GF_TL_TRANSOVR20'),
('GF_TL_TRANSOVR', @activity_id, @activity_name, 0, 'Source', 'pii_columns', ''),
('GF_TL_TRANSOVR', @activity_id, @activity_name, 0, 'Source', 'ASAP_DeleteDateTime_mapping', NULL),
('GF_TL_UW_4', @activity_id, @activity_name, 0, 'Source', 'src_file_prefix', 'GF_TL_UW_420'),
('GF_TL_UW_4', @activity_id, @activity_name, 0, 'Source', 'pii_columns', ''),
('GF_TL_UW_4', @activity_id, @activity_name, 0, 'Source', 'ASAP_DeleteDateTime_mapping', NULL),
('GF_TL_UWAPPREXT', @activity_id, @activity_name, 0, 'Source', 'src_file_prefix', 'GF_TL_UWAPPREXT20'),
('GF_TL_UWAPPREXT', @activity_id, @activity_name, 0, 'Source', 'pii_columns', ''),
('GF_TL_UWAPPREXT', @activity_id, @activity_name, 0, 'Source', 'ASAP_DeleteDateTime_mapping', NULL),
('GF_TLB_HOUSING_PRSNT', @activity_id, @activity_name, 0, 'Source', 'src_file_prefix', 'GF_TLB_HOUSING_PRSNT20'),
('GF_TLB_HOUSING_PRSNT', @activity_id, @activity_name, 0, 'Source', 'pii_columns', ''),
('GF_TLB_HOUSING_PRSNT', @activity_id, @activity_name, 0, 'Source', 'ASAP_DeleteDateTime_mapping', NULL),
('GF_TLBR_ADDITIONALDATA', @activity_id, @activity_name, 0, 'Source', 'src_file_prefix', 'GF_TLBR_ADDITIONALDATA20'),
('GF_TLBR_ADDITIONALDATA', @activity_id, @activity_name, 0, 'Source', 'pii_columns', ''),
('GF_TLBR_ADDITIONALDATA', @activity_id, @activity_name, 0, 'Source', 'ASAP_DeleteDateTime_mapping', NULL),
('GF_TLBR_ALIAS', @activity_id, @activity_name, 0, 'Source', 'src_file_prefix', 'GF_TLBR_ALIAS20'),
('GF_TLBR_ALIAS', @activity_id, @activity_name, 0, 'Source', 'pii_columns', ''),
('GF_TLBR_ALIAS', @activity_id, @activity_name, 0, 'Source', 'ASAP_DeleteDateTime_mapping', NULL),
('GF_TLBR_ASSIST_PROGRAMS', @activity_id, @activity_name, 0, 'Source', 'src_file_prefix', 'GF_TLBR_ASSIST_PROGRAMS20'),
('GF_TLBR_ASSIST_PROGRAMS', @activity_id, @activity_name, 0, 'Source', 'pii_columns', ''),
('GF_TLBR_ASSIST_PROGRAMS', @activity_id, @activity_name, 0, 'Source', 'ASAP_DeleteDateTime_mapping', NULL),
('GF_TLBR_BORROWERID', @activity_id, @activity_name, 0, 'Source', 'src_file_prefix', 'GF_TLBR_BORROWERID20'),
('GF_TLBR_BORROWERID', @activity_id, @activity_name, 0, 'Source', 'pii_columns', ''),
('GF_TLBR_BORROWERID', @activity_id, @activity_name, 0, 'Source', 'ASAP_DeleteDateTime_mapping', NULL),
('GF_TLBR_CREDIT_SCORE', @activity_id, @activity_name, 0, 'Source', 'src_file_prefix', 'GF_TLBR_CREDIT_SCORE20'),
('GF_TLBR_CREDIT_SCORE', @activity_id, @activity_name, 0, 'Source', 'pii_columns', ''),
('GF_TLBR_CREDIT_SCORE', @activity_id, @activity_name, 0, 'Source', 'ASAP_DeleteDateTime_mapping', NULL),
('GF_TLBR_DEPENDENTS', @activity_id, @activity_name, 0, 'Source', 'src_file_prefix', 'GF_TLBR_DEPENDENTS20'),
('GF_TLBR_DEPENDENTS', @activity_id, @activity_name, 0, 'Source', 'pii_columns', ''),
('GF_TLBR_DEPENDENTS', @activity_id, @activity_name, 0, 'Source', 'ASAP_DeleteDateTime_mapping', NULL),
('GF_TLBR_ETHNICITY', @activity_id, @activity_name, 0, 'Source', 'src_file_prefix', 'GF_TLBR_ETHNICITY20'),
('GF_TLBR_ETHNICITY', @activity_id, @activity_name, 0, 'Source', 'pii_columns', ''),
('GF_TLBR_ETHNICITY', @activity_id, @activity_name, 0, 'Source', 'ASAP_DeleteDateTime_mapping', NULL),
('GF_TLBR_HOUSNG_PRSNT_OTH', @activity_id, @activity_name, 0, 'Source', 'src_file_prefix', 'GF_TLBR_HOUSNG_PRSNT_OTH20'),
('GF_TLBR_HOUSNG_PRSNT_OTH', @activity_id, @activity_name, 0, 'Source', 'pii_columns', ''),
('GF_TLBR_HOUSNG_PRSNT_OTH', @activity_id, @activity_name, 0, 'Source', 'ASAP_DeleteDateTime_mapping', NULL),
('GF_TLBR_RACE', @activity_id, @activity_name, 0, 'Source', 'src_file_prefix', 'GF_TLBR_RACE20'),
('GF_TLBR_RACE', @activity_id, @activity_name, 0, 'Source', 'pii_columns', ''),
('GF_TLBR_RACE', @activity_id, @activity_name, 0, 'Source', 'ASAP_DeleteDateTime_mapping', NULL),
('GF_TLBR_RAW_SCORES', @activity_id, @activity_name, 0, 'Source', 'src_file_prefix', 'GF_TLBR_RAW_SCORES20'),
('GF_TLBR_RAW_SCORES', @activity_id, @activity_name, 0, 'Source', 'pii_columns', ''),
('GF_TLBR_RAW_SCORES', @activity_id, @activity_name, 0, 'Source', 'ASAP_DeleteDateTime_mapping', NULL),
('GF_TLBR_SUBETHNICITY', @activity_id, @activity_name, 0, 'Source', 'src_file_prefix', 'GF_TLBR_SUBETHNICITY20'),
('GF_TLBR_SUBETHNICITY', @activity_id, @activity_name, 0, 'Source', 'pii_columns', ''),
('GF_TLBR_SUBETHNICITY', @activity_id, @activity_name, 0, 'Source', 'ASAP_DeleteDateTime_mapping', NULL),
('GF_TLBR_SUBRACE', @activity_id, @activity_name, 0, 'Source', 'src_file_prefix', 'GF_TLBR_SUBRACE20'),
('GF_TLBR_SUBRACE', @activity_id, @activity_name, 0, 'Source', 'pii_columns', ''),
('GF_TLBR_SUBRACE', @activity_id, @activity_name, 0, 'Source', 'ASAP_DeleteDateTime_mapping', NULL),
('GF_TLR_DISBURSEMENTS', @activity_id, @activity_name, 0, 'Source', 'src_file_prefix', 'GF_TLR_DISBURSEMENTS20'),
('GF_TLR_DISBURSEMENTS', @activity_id, @activity_name, 0, 'Source', 'pii_columns', ''),
('GF_TLR_DISBURSEMENTS', @activity_id, @activity_name, 0, 'Source', 'ASAP_DeleteDateTime_mapping', NULL),
('GF_TLR_DISCL_DATA', @activity_id, @activity_name, 0, 'Source', 'src_file_prefix', 'GF_TLR_DISCL_DATA20'),
('GF_TLR_DISCL_DATA', @activity_id, @activity_name, 0, 'Source', 'pii_columns', ''),
('GF_TLR_DISCL_DATA', @activity_id, @activity_name, 0, 'Source', 'ASAP_DeleteDateTime_mapping', NULL),
('GF_TLR_FUNDITEM', @activity_id, @activity_name, 0, 'Source', 'src_file_prefix', 'GF_TLR_FUNDITEM20'),
('GF_TLR_FUNDITEM', @activity_id, @activity_name, 0, 'Source', 'pii_columns', ''),
('GF_TLR_FUNDITEM', @activity_id, @activity_name, 0, 'Source', 'ASAP_DeleteDateTime_mapping', NULL),
('GF_TLR_INSURANCE', @activity_id, @activity_name, 0, 'Source', 'src_file_prefix', 'GF_TLR_INSURANCE20'),
('GF_TLR_INSURANCE', @activity_id, @activity_name, 0, 'Source', 'pii_columns', ''),
('GF_TLR_INSURANCE', @activity_id, @activity_name, 0, 'Source', 'ASAP_DeleteDateTime_mapping', NULL),
('GF_TLR_REG_O', @activity_id, @activity_name, 0, 'Source', 'src_file_prefix', 'GF_TLR_REG_O20'),
('GF_TLR_REG_O', @activity_id, @activity_name, 0, 'Source', 'pii_columns', ''),
('GF_TLR_REG_O', @activity_id, @activity_name, 0, 'Source', 'ASAP_DeleteDateTime_mapping', NULL),
('GF_TLR_REOWNED_BORROWERS', @activity_id, @activity_name, 0, 'Source', 'src_file_prefix', 'GF_TLR_REOWNED_BORROWERS20'),
('GF_TLR_REOWNED_BORROWERS', @activity_id, @activity_name, 0, 'Source', 'pii_columns', ''),
('GF_TLR_REOWNED_BORROWERS', @activity_id, @activity_name, 0, 'Source', 'ASAP_DeleteDateTime_mapping', NULL),
('GF_TLR_REQ_CREDIT_LIAB_REP', @activity_id, @activity_name, 0, 'Source', 'src_file_prefix', 'GF_TLR_REQ_CREDIT_LIAB_REP20'),
('GF_TLR_REQ_CREDIT_LIAB_REP', @activity_id, @activity_name, 0, 'Source', 'pii_columns', ''),
('GF_TLR_REQ_CREDIT_LIAB_REP', @activity_id, @activity_name, 0, 'Source', 'ASAP_DeleteDateTime_mapping', NULL),
('GF_TLR_RES_CREDIT_FILE', @activity_id, @activity_name, 0, 'Source', 'src_file_prefix', 'GF_TLR_RES_CREDIT_FILE20'),
('GF_TLR_RES_CREDIT_FILE', @activity_id, @activity_name, 0, 'Source', 'pii_columns', ''),
('GF_TLR_RES_CREDIT_FILE', @activity_id, @activity_name, 0, 'Source', 'ASAP_DeleteDateTime_mapping', NULL),
('GF_TLR_RES_CREDIT_INQUIRY', @activity_id, @activity_name, 0, 'Source', 'src_file_prefix', 'GF_TLR_RES_CREDIT_INQUIRY20'),
('GF_TLR_RES_CREDIT_INQUIRY', @activity_id, @activity_name, 0, 'Source', 'pii_columns', ''),
('GF_TLR_RES_CREDIT_INQUIRY', @activity_id, @activity_name, 0, 'Source', 'ASAP_DeleteDateTime_mapping', NULL),
('GF_TLR_RES_CREDIT_SUMMARY', @activity_id, @activity_name, 0, 'Source', 'src_file_prefix', 'GF_TLR_RES_CREDIT_SUMMARY20'),
('GF_TLR_RES_CREDIT_SUMMARY', @activity_id, @activity_name, 0, 'Source', 'pii_columns', ''),
('GF_TLR_RES_CREDIT_SUMMARY', @activity_id, @activity_name, 0, 'Source', 'ASAP_DeleteDateTime_mapping', NULL),
('GF_TLR_SUBJPRP_INSURANCE', @activity_id, @activity_name, 0, 'Source', 'src_file_prefix', 'GF_TLR_SUBJPRP_INSURANCE20'),
('GF_TLR_SUBJPRP_INSURANCE', @activity_id, @activity_name, 0, 'Source', 'pii_columns', ''),
('GF_TLR_SUBJPRP_INSURANCE', @activity_id, @activity_name, 0, 'Source', 'ASAP_DeleteDateTime_mapping', NULL),
('GF_TLR_SUBJPRP_TAX', @activity_id, @activity_name, 0, 'Source', 'src_file_prefix', 'GF_TLR_SUBJPRP_TAX20'),
('GF_TLR_SUBJPRP_TAX', @activity_id, @activity_name, 0, 'Source', 'pii_columns', ''),
('GF_TLR_SUBJPRP_TAX', @activity_id, @activity_name, 0, 'Source', 'ASAP_DeleteDateTime_mapping', NULL),
('GF_TLR_TAXITEMS', @activity_id, @activity_name, 0, 'Source', 'src_file_prefix', 'GF_TLR_TAXITEMS20'),
('GF_TLR_TAXITEMS', @activity_id, @activity_name, 0, 'Source', 'pii_columns', ''),
('GF_TLR_TAXITEMS', @activity_id, @activity_name, 0, 'Source', 'ASAP_DeleteDateTime_mapping', NULL),
('GF_TLRR_FUNDDISB', @activity_id, @activity_name, 0, 'Source', 'src_file_prefix', 'GF_TLRR_FUNDDISB20'),
('GF_TLRR_FUNDDISB', @activity_id, @activity_name, 0, 'Source', 'pii_columns', ''),
('GF_TLRR_FUNDDISB', @activity_id, @activity_name, 0, 'Source', 'ASAP_DeleteDateTime_mapping', NULL),
('GF_TS_AUDIT_LOAN_DELETE', @activity_id, @activity_name, 0, 'Source', 'src_file_prefix', 'GF_TS_AUDIT_LOAN_DELETE20'),
('GF_TS_AUDIT_LOAN_DELETE', @activity_id, @activity_name, 0, 'Source', 'pii_columns', ''),
('GF_TS_AUDIT_LOAN_DELETE', @activity_id, @activity_name, 0, 'Source', 'ASAP_DeleteDateTime_mapping', NULL),
('GF_TS_CMS_CONTACT_ADDRESS', @activity_id, @activity_name, 0, 'Source', 'src_file_prefix', 'GF_TS_CMS_CONTACT_ADDRESS20'),
('GF_TS_CMS_CONTACT_ADDRESS', @activity_id, @activity_name, 0, 'Source', 'pii_columns', ''),
('GF_TS_CMS_CONTACT_ADDRESS', @activity_id, @activity_name, 0, 'Source', 'ASAP_DeleteDateTime_mapping', NULL),
('GF_TS_CMS_CONTACT_EMAIL', @activity_id, @activity_name, 0, 'Source', 'src_file_prefix', 'GF_TS_CMS_CONTACT_EMAIL20'),
('GF_TS_CMS_CONTACT_EMAIL', @activity_id, @activity_name, 0, 'Source', 'pii_columns', ''),
('GF_TS_CMS_CONTACT_EMAIL', @activity_id, @activity_name, 0, 'Source', 'ASAP_DeleteDateTime_mapping', NULL),
('GF_TS_CMS_CONTACT_INFO', @activity_id, @activity_name, 0, 'Source', 'src_file_prefix', 'GF_TS_CMS_CONTACT_INFO20'),
('GF_TS_CMS_CONTACT_INFO', @activity_id, @activity_name, 0, 'Source', 'pii_columns', ''),
('GF_TS_CMS_CONTACT_INFO', @activity_id, @activity_name, 0, 'Source', 'ASAP_DeleteDateTime_mapping', NULL),
('GF_TS_CMS_CONTACT_PHONE', @activity_id, @activity_name, 0, 'Source', 'src_file_prefix', 'GF_TS_CMS_CONTACT_PHONE20'),
('GF_TS_CMS_CONTACT_PHONE', @activity_id, @activity_name, 0, 'Source', 'pii_columns', ''),
('GF_TS_CMS_CONTACT_PHONE', @activity_id, @activity_name, 0, 'Source', 'ASAP_DeleteDateTime_mapping', NULL),
('GF_TS_CMS_CONTACT_TYPE', @activity_id, @activity_name, 0, 'Source', 'src_file_prefix', 'GF_TS_CMS_CONTACT_TYPE20'),
('GF_TS_CMS_CONTACT_TYPE', @activity_id, @activity_name, 0, 'Source', 'pii_columns', ''),
('GF_TS_CMS_CONTACT_TYPE', @activity_id, @activity_name, 0, 'Source', 'ASAP_DeleteDateTime_mapping', NULL),
('GF_TS_CMS_INFOBYTYPE', @activity_id, @activity_name, 0, 'Source', 'src_file_prefix', 'GF_TS_CMS_INFOBYTYPE20'),
('GF_TS_CMS_INFOBYTYPE', @activity_id, @activity_name, 0, 'Source', 'pii_columns', ''),
('GF_TS_CMS_INFOBYTYPE', @activity_id, @activity_name, 0, 'Source', 'ASAP_DeleteDateTime_mapping', NULL),
('GF_TS_PNP_IPG_INVESTOR', @activity_id, @activity_name, 0, 'Source', 'src_file_prefix', 'GF_TS_PNP_IPG_INVESTOR20'),
('GF_TS_PNP_IPG_INVESTOR', @activity_id, @activity_name, 0, 'Source', 'pii_columns', ''),
('GF_TS_PNP_IPG_INVESTOR', @activity_id, @activity_name, 0, 'Source', 'ASAP_DeleteDateTime_mapping', NULL),
('GF_TS_PNP_IPG_PRICING', @activity_id, @activity_name, 0, 'Source', 'src_file_prefix', 'GF_TS_PNP_IPG_PRICING20'),
('GF_TS_PNP_IPG_PRICING', @activity_id, @activity_name, 0, 'Source', 'pii_columns', ''),
('GF_TS_PNP_IPG_PRICING', @activity_id, @activity_name, 0, 'Source', 'ASAP_DeleteDateTime_mapping', NULL),
('GF_TS_PNP_IPG_PRODUCT', @activity_id, @activity_name, 0, 'Source', 'src_file_prefix', 'GF_TS_PNP_IPG_PRODUCT20'),
('GF_TS_PNP_IPG_PRODUCT', @activity_id, @activity_name, 0, 'Source', 'pii_columns', ''),
('GF_TS_PNP_IPG_PRODUCT', @activity_id, @activity_name, 0, 'Source', 'ASAP_DeleteDateTime_mapping', NULL),
('GF_TS_PNP_IPG_PROGRAM', @activity_id, @activity_name, 0, 'Source', 'src_file_prefix', 'GF_TS_PNP_IPG_PROGRAM20'),
('GF_TS_PNP_IPG_PROGRAM', @activity_id, @activity_name, 0, 'Source', 'pii_columns', ''),
('GF_TS_PNP_IPG_PROGRAM', @activity_id, @activity_name, 0, 'Source', 'ASAP_DeleteDateTime_mapping', NULL),
('GFXVARTEXTMAP', @activity_id, @activity_name, 0, 'Source', 'src_file_prefix', 'GFXVARTEXTMAP20'),
('GFXVARTEXTMAP', @activity_id, @activity_name, 0, 'Source', 'pii_columns', ''),
('GFXVARTEXTMAP', @activity_id, @activity_name, 0, 'Source', 'ASAP_DeleteDateTime_mapping', NULL),
('GSSUSR', @activity_id, @activity_name, 0, 'Source', 'src_file_prefix', 'GSSUSR20'),
('GSSUSR', @activity_id, @activity_name, 0, 'Source', 'pii_columns', ''),
('GSSUSR', @activity_id, @activity_name, 0, 'Source', 'ASAP_DeleteDateTime_mapping', NULL),
('HELOC', @activity_id, @activity_name, 0, 'Source', 'src_file_prefix', 'HELOC20'),
('HELOC', @activity_id, @activity_name, 0, 'Source', 'pii_columns', ''),
('HELOC', @activity_id, @activity_name, 0, 'Source', 'ASAP_DeleteDateTime_mapping', NULL),
('HELOC2', @activity_id, @activity_name, 0, 'Source', 'src_file_prefix', 'HELOC220'),
('HELOC2', @activity_id, @activity_name, 0, 'Source', 'pii_columns', ''),
('HELOC2', @activity_id, @activity_name, 0, 'Source', 'ASAP_DeleteDateTime_mapping', NULL),
('HMDAINFO', @activity_id, @activity_name, 0, 'Source', 'src_file_prefix', 'HMDAINFO20'),
('HMDAINFO', @activity_id, @activity_name, 0, 'Source', 'pii_columns', ''),
('HMDAINFO', @activity_id, @activity_name, 0, 'Source', 'ASAP_DeleteDateTime_mapping', NULL),
('INCOME', @activity_id, @activity_name, 0, 'Source', 'src_file_prefix', 'INCOME20'),
('INCOME', @activity_id, @activity_name, 0, 'Source', 'pii_columns', ''),
('INCOME', @activity_id, @activity_name, 0, 'Source', 'ASAP_DeleteDateTime_mapping', NULL),
('INFO1008', @activity_id, @activity_name, 0, 'Source', 'src_file_prefix', 'INFO100820'),
('INFO1008', @activity_id, @activity_name, 0, 'Source', 'pii_columns', ''),
('INFO1008', @activity_id, @activity_name, 0, 'Source', 'ASAP_DeleteDateTime_mapping', NULL),
('L_SYMBOL', @activity_id, @activity_name, 0, 'Source', 'src_file_prefix', 'L_SYMBOL20'),
('L_SYMBOL', @activity_id, @activity_name, 0, 'Source', 'pii_columns', ''),
('L_SYMBOL', @activity_id, @activity_name, 0, 'Source', 'ASAP_DeleteDateTime_mapping', NULL),
('LIABLTY', @activity_id, @activity_name, 0, 'Source', 'src_file_prefix', 'LIABLTY20'),
('LIABLTY', @activity_id, @activity_name, 0, 'Source', 'pii_columns', ''),
('LIABLTY', @activity_id, @activity_name, 0, 'Source', 'ASAP_DeleteDateTime_mapping', NULL),
('POA', @activity_id, @activity_name, 0, 'Source', 'src_file_prefix', 'POA20'),
('POA', @activity_id, @activity_name, 0, 'Source', 'pii_columns', ''),
('POA', @activity_id, @activity_name, 0, 'Source', 'ASAP_DeleteDateTime_mapping', NULL),
('PREVRES', @activity_id, @activity_name, 0, 'Source', 'src_file_prefix', 'PREVRES20'),
('PREVRES', @activity_id, @activity_name, 0, 'Source', 'pii_columns', ''),
('PREVRES', @activity_id, @activity_name, 0, 'Source', 'ASAP_DeleteDateTime_mapping', NULL),
('PRODUCT', @activity_id, @activity_name, 0, 'Source', 'src_file_prefix', 'PRODUCT20'),
('PRODUCT', @activity_id, @activity_name, 0, 'Source', 'pii_columns', ''),
('PRODUCT', @activity_id, @activity_name, 0, 'Source', 'ASAP_DeleteDateTime_mapping', NULL),
('REOWNED', @activity_id, @activity_name, 0, 'Source', 'src_file_prefix', 'REOWNED20'),
('REOWNED', @activity_id, @activity_name, 0, 'Source', 'pii_columns', ''),
('REOWNED', @activity_id, @activity_name, 0, 'Source', 'ASAP_DeleteDateTime_mapping', NULL),
('SEIA', @activity_id, @activity_name, 0, 'Source', 'src_file_prefix', 'SEIA20'),
('SEIA', @activity_id, @activity_name, 0, 'Source', 'pii_columns', ''),
('SEIA', @activity_id, @activity_name, 0, 'Source', 'ASAP_DeleteDateTime_mapping', NULL),
('SELLER', @activity_id, @activity_name, 0, 'Source', 'src_file_prefix', 'SELLER20'),
('SELLER', @activity_id, @activity_name, 0, 'Source', 'pii_columns', ''),
('SELLER', @activity_id, @activity_name, 0, 'Source', 'ASAP_DeleteDateTime_mapping', NULL),
('SERVICNG', @activity_id, @activity_name, 0, 'Source', 'src_file_prefix', 'SERVICNG20'),
('SERVICNG', @activity_id, @activity_name, 0, 'Source', 'pii_columns', ''),
('SERVICNG', @activity_id, @activity_name, 0, 'Source', 'ASAP_DeleteDateTime_mapping', NULL),
('SUBJPRP', @activity_id, @activity_name, 0, 'Source', 'src_file_prefix', 'SUBJPRP20'),
('SUBJPRP', @activity_id, @activity_name, 0, 'Source', 'pii_columns', ''),
('SUBJPRP', @activity_id, @activity_name, 0, 'Source', 'ASAP_DeleteDateTime_mapping', NULL),
('TAXINFO', @activity_id, @activity_name, 0, 'Source', 'src_file_prefix', 'TAXINFO20'),
('TAXINFO', @activity_id, @activity_name, 0, 'Source', 'pii_columns', ''),
('TAXINFO', @activity_id, @activity_name, 0, 'Source', 'ASAP_DeleteDateTime_mapping', NULL),
('TILINFO', @activity_id, @activity_name, 0, 'Source', 'src_file_prefix', 'TILINFO20'),
('TILINFO', @activity_id, @activity_name, 0, 'Source', 'pii_columns', ''),
('TILINFO', @activity_id, @activity_name, 0, 'Source', 'ASAP_DeleteDateTime_mapping', NULL),
('TRACKING', @activity_id, @activity_name, 0, 'Source', 'src_file_prefix', 'TRACKING20'),
('TRACKING', @activity_id, @activity_name, 0, 'Source', 'pii_columns', ''),
('TRACKING', @activity_id, @activity_name, 0, 'Source', 'ASAP_DeleteDateTime_mapping', NULL),
('TRANSDATA', @activity_id, @activity_name, 0, 'Source', 'src_file_prefix', 'TRANSDATA20'),
('TRANSDATA', @activity_id, @activity_name, 0, 'Source', 'pii_columns', ''),
('TRANSDATA', @activity_id, @activity_name, 0, 'Source', 'ASAP_DeleteDateTime_mapping', NULL),
('TRSTENTS', @activity_id, @activity_name, 0, 'Source', 'src_file_prefix', 'TRSTENTS20'),
('TRSTENTS', @activity_id, @activity_name, 0, 'Source', 'pii_columns', ''),
('TRSTENTS', @activity_id, @activity_name, 0, 'Source', 'ASAP_DeleteDateTime_mapping', NULL),
('TRUSTS', @activity_id, @activity_name, 0, 'Source', 'src_file_prefix', 'TRUSTS20'),
('TRUSTS', @activity_id, @activity_name, 0, 'Source', 'pii_columns', ''),
('TRUSTS', @activity_id, @activity_name, 0, 'Source', 'ASAP_DeleteDateTime_mapping', NULL),
('UNDCOND1', @activity_id, @activity_name, 0, 'Source', 'src_file_prefix', 'UNDCOND120'),
('UNDCOND1', @activity_id, @activity_name, 0, 'Source', 'pii_columns', ''),
('UNDCOND1', @activity_id, @activity_name, 0, 'Source', 'ASAP_DeleteDateTime_mapping', NULL),
('UNDCOND2', @activity_id, @activity_name, 0, 'Source', 'src_file_prefix', 'UNDCOND220'),
('UNDCOND2', @activity_id, @activity_name, 0, 'Source', 'pii_columns', ''),
('UNDCOND2', @activity_id, @activity_name, 0, 'Source', 'ASAP_DeleteDateTime_mapping', NULL),
('UWAPPR', @activity_id, @activity_name, 0, 'Source', 'src_file_prefix', 'UWAPPR20'),
('UWAPPR', @activity_id, @activity_name, 0, 'Source', 'pii_columns', ''),
('UWAPPR', @activity_id, @activity_name, 0, 'Source', 'ASAP_DeleteDateTime_mapping', NULL),
('VARTXT', @activity_id, @activity_name, 0, 'Source', 'src_file_prefix', 'VARTXT20'),
('VARTXT', @activity_id, @activity_name, 0, 'Source', 'pii_columns', ''),
('VARTXT', @activity_id, @activity_name, 0, 'Source', 'ASAP_DeleteDateTime_mapping', NULL),
('VETINFO', @activity_id, @activity_name, 0, 'Source', 'src_file_prefix', 'VETINFO20'),
('VETINFO', @activity_id, @activity_name, 0, 'Source', 'pii_columns', ''),
('VETINFO', @activity_id, @activity_name, 0, 'Source', 'ASAP_DeleteDateTime_mapping', NULL),
('WG_ASSET', @activity_id, @activity_name, 0, 'Source', 'src_file_prefix', 'WG_ASSET20'),
('WG_ASSET', @activity_id, @activity_name, 0, 'Source', 'pii_columns', ''),
('WG_ASSET', @activity_id, @activity_name, 0, 'Source', 'ASAP_DeleteDateTime_mapping', NULL),
('WG_ASSET_ACCT', @activity_id, @activity_name, 0, 'Source', 'src_file_prefix', 'WG_ASSET_ACCT20'),
('WG_ASSET_ACCT', @activity_id, @activity_name, 0, 'Source', 'pii_columns', ''),
('WG_ASSET_ACCT', @activity_id, @activity_name, 0, 'Source', 'ASAP_DeleteDateTime_mapping', NULL),
('WG_ASSET_MARINE_ENG', @activity_id, @activity_name, 0, 'Source', 'src_file_prefix', 'WG_ASSET_MARINE_ENG20'),
('WG_ASSET_MARINE_ENG', @activity_id, @activity_name, 0, 'Source', 'pii_columns', ''),
('WG_ASSET_MARINE_ENG', @activity_id, @activity_name, 0, 'Source', 'ASAP_DeleteDateTime_mapping', NULL),
('WG_ASSET_VEHICLE', @activity_id, @activity_name, 0, 'Source', 'src_file_prefix', 'WG_ASSET_VEHICLE20'),
('WG_ASSET_VEHICLE', @activity_id, @activity_name, 0, 'Source', 'pii_columns', ''),
('WG_ASSET_VEHICLE', @activity_id, @activity_name, 0, 'Source', 'ASAP_DeleteDateTime_mapping', NULL),
('WG_ASSET_VHCL_AUTO', @activity_id, @activity_name, 0, 'Source', 'src_file_prefix', 'WG_ASSET_VHCL_AUTO20'),
('WG_ASSET_VHCL_AUTO', @activity_id, @activity_name, 0, 'Source', 'pii_columns', ''),
('WG_ASSET_VHCL_AUTO', @activity_id, @activity_name, 0, 'Source', 'ASAP_DeleteDateTime_mapping', NULL),
('WG_ASSET_VHCL_MARINE', @activity_id, @activity_name, 0, 'Source', 'src_file_prefix', 'WG_ASSET_VHCL_MARINE20'),
('WG_ASSET_VHCL_MARINE', @activity_id, @activity_name, 0, 'Source', 'pii_columns', ''),
('WG_ASSET_VHCL_MARINE', @activity_id, @activity_name, 0, 'Source', 'ASAP_DeleteDateTime_mapping', NULL),
('WG_ASSET_VHCL_OPTIONS', @activity_id, @activity_name, 0, 'Source', 'src_file_prefix', 'WG_ASSET_VHCL_OPTIONS20'),
('WG_ASSET_VHCL_OPTIONS', @activity_id, @activity_name, 0, 'Source', 'pii_columns', ''),
('WG_ASSET_VHCL_OPTIONS', @activity_id, @activity_name, 0, 'Source', 'ASAP_DeleteDateTime_mapping', NULL),
('WG_ASSET_VHCL_RV', @activity_id, @activity_name, 0, 'Source', 'src_file_prefix', 'WG_ASSET_VHCL_RV20'),
('WG_ASSET_VHCL_RV', @activity_id, @activity_name, 0, 'Source', 'pii_columns', ''),
('WG_ASSET_VHCL_RV', @activity_id, @activity_name, 0, 'Source', 'ASAP_DeleteDateTime_mapping', NULL),
('WG_ASSET_VHCL_TRAILER', @activity_id, @activity_name, 0, 'Source', 'src_file_prefix', 'WG_ASSET_VHCL_TRAILER20'),
('WG_ASSET_VHCL_TRAILER', @activity_id, @activity_name, 0, 'Source', 'pii_columns', ''),
('WG_ASSET_VHCL_TRAILER', @activity_id, @activity_name, 0, 'Source', 'ASAP_DeleteDateTime_mapping', NULL),
('WG_ASSET_VHCL_VALUATION', @activity_id, @activity_name, 0, 'Source', 'src_file_prefix', 'WG_ASSET_VHCL_VALUATION20'),
('WG_ASSET_VHCL_VALUATION', @activity_id, @activity_name, 0, 'Source', 'pii_columns', ''),
('WG_ASSET_VHCL_VALUATION', @activity_id, @activity_name, 0, 'Source', 'ASAP_DeleteDateTime_mapping', NULL),
('WG_AUTO_DEBIT', @activity_id, @activity_name, 0, 'Source', 'src_file_prefix', 'WG_AUTO_DEBIT20'),
('WG_AUTO_DEBIT', @activity_id, @activity_name, 0, 'Source', 'pii_columns', ''),
('WG_AUTO_DEBIT', @activity_id, @activity_name, 0, 'Source', 'ASAP_DeleteDateTime_mapping', NULL),
('WG_CNS_LOAN_APPLICATION', @activity_id, @activity_name, 0, 'Source', 'src_file_prefix', 'WG_CNS_LOAN_APPLICATION20'),
('WG_CNS_LOAN_APPLICATION', @activity_id, @activity_name, 0, 'Source', 'pii_columns', ''),
('WG_CNS_LOAN_APPLICATION', @activity_id, @activity_name, 0, 'Source', 'ASAP_DeleteDateTime_mapping', NULL),
('WG_COLLATERAL_ADDRESS', @activity_id, @activity_name, 0, 'Source', 'src_file_prefix', 'WG_COLLATERAL_ADDRESS20'),
('WG_COLLATERAL_ADDRESS', @activity_id, @activity_name, 0, 'Source', 'pii_columns', ''),
('WG_COLLATERAL_ADDRESS', @activity_id, @activity_name, 0, 'Source', 'ASAP_DeleteDateTime_mapping', NULL),
('WG_COLLATERAL_PLEDGOR', @activity_id, @activity_name, 0, 'Source', 'src_file_prefix', 'WG_COLLATERAL_PLEDGOR20'),
('WG_COLLATERAL_PLEDGOR', @activity_id, @activity_name, 0, 'Source', 'pii_columns', ''),
('WG_COLLATERAL_PLEDGOR', @activity_id, @activity_name, 0, 'Source', 'ASAP_DeleteDateTime_mapping', NULL),
('WG_COLLATERAL_TYPES', @activity_id, @activity_name, 0, 'Source', 'src_file_prefix', 'WG_COLLATERAL_TYPES20'),
('WG_COLLATERAL_TYPES', @activity_id, @activity_name, 0, 'Source', 'pii_columns', ''),
('WG_COLLATERAL_TYPES', @activity_id, @activity_name, 0, 'Source', 'ASAP_DeleteDateTime_mapping', NULL),
('WG_CRM_CUSTOMER', @activity_id, @activity_name, 0, 'Source', 'src_file_prefix', 'WG_CRM_CUSTOMER20'),
('WG_CRM_CUSTOMER', @activity_id, @activity_name, 0, 'Source', 'pii_columns', ''),
('WG_CRM_CUSTOMER', @activity_id, @activity_name, 0, 'Source', 'ASAP_DeleteDateTime_mapping', NULL),
('WG_CRM_CUSTOMER_ACCT_DETAIL', @activity_id, @activity_name, 0, 'Source', 'src_file_prefix', 'WG_CRM_CUSTOMER_ACCT_DETAIL20'),
('WG_CRM_CUSTOMER_ACCT_DETAIL', @activity_id, @activity_name, 0, 'Source', 'pii_columns', ''),
('WG_CRM_CUSTOMER_ACCT_DETAIL', @activity_id, @activity_name, 0, 'Source', 'ASAP_DeleteDateTime_mapping', NULL),
('WG_CRM_CUSTOMER_ACCT_DETAIL_SUMMARY', @activity_id, @activity_name, 0, 'Source', 'src_file_prefix', 'WG_CRM_CUSTOMER_ACCT_DETAIL_SUMMARY20'),
('WG_CRM_CUSTOMER_ACCT_DETAIL_SUMMARY', @activity_id, @activity_name, 0, 'Source', 'pii_columns', ''),
('WG_CRM_CUSTOMER_ACCT_DETAIL_SUMMARY', @activity_id, @activity_name, 0, 'Source', 'ASAP_DeleteDateTime_mapping', NULL),
('WG_CRM_CUSTOMER_ADDRESS', @activity_id, @activity_name, 0, 'Source', 'src_file_prefix', 'WG_CRM_CUSTOMER_ADDRESS20'),
('WG_CRM_CUSTOMER_ADDRESS', @activity_id, @activity_name, 0, 'Source', 'pii_columns', ''),
('WG_CRM_CUSTOMER_ADDRESS', @activity_id, @activity_name, 0, 'Source', 'ASAP_DeleteDateTime_mapping', NULL),
('WG_CRM_CUSTOMER_PHONE', @activity_id, @activity_name, 0, 'Source', 'src_file_prefix', 'WG_CRM_CUSTOMER_PHONE20'),
('WG_CRM_CUSTOMER_PHONE', @activity_id, @activity_name, 0, 'Source', 'pii_columns', ''),
('WG_CRM_CUSTOMER_PHONE', @activity_id, @activity_name, 0, 'Source', 'ASAP_DeleteDateTime_mapping', NULL),
('WG_HMDAINFO_EXT', @activity_id, @activity_name, 0, 'Source', 'src_file_prefix', 'WG_HMDAINFO_EXT20'),
('WG_HMDAINFO_EXT', @activity_id, @activity_name, 0, 'Source', 'pii_columns', ''),
('WG_HMDAINFO_EXT', @activity_id, @activity_name, 0, 'Source', 'ASAP_DeleteDateTime_mapping', NULL),
('WG_INCOME_SOURCE', @activity_id, @activity_name, 0, 'Source', 'src_file_prefix', 'WG_INCOME_SOURCE20'),
('WG_INCOME_SOURCE', @activity_id, @activity_name, 0, 'Source', 'pii_columns', ''),
('WG_INCOME_SOURCE', @activity_id, @activity_name, 0, 'Source', 'ASAP_DeleteDateTime_mapping', NULL),
('WG_RPT_AMOUNTS', @activity_id, @activity_name, 0, 'Source', 'src_file_prefix', 'WG_RPT_AMOUNTS20'),
('WG_RPT_AMOUNTS', @activity_id, @activity_name, 0, 'Source', 'pii_columns', ''),
('WG_RPT_AMOUNTS', @activity_id, @activity_name, 0, 'Source', 'ASAP_DeleteDateTime_mapping', NULL),
('WG_RPT_BORROWER', @activity_id, @activity_name, 0, 'Source', 'src_file_prefix', 'WG_RPT_BORROWER20'),
('WG_RPT_BORROWER', @activity_id, @activity_name, 0, 'Source', 'pii_columns', ''),
('WG_RPT_BORROWER', @activity_id, @activity_name, 0, 'Source', 'ASAP_DeleteDateTime_mapping', NULL),
('WG_RPT_CMS', @activity_id, @activity_name, 0, 'Source', 'src_file_prefix', 'WG_RPT_CMS20'),
('WG_RPT_CMS', @activity_id, @activity_name, 0, 'Source', 'pii_columns', ''),
('WG_RPT_CMS', @activity_id, @activity_name, 0, 'Source', 'ASAP_DeleteDateTime_mapping', NULL),
('WG_RPT_DATES', @activity_id, @activity_name, 0, 'Source', 'src_file_prefix', 'WG_RPT_DATES20'),
('WG_RPT_DATES', @activity_id, @activity_name, 0, 'Source', 'pii_columns', ''),
('WG_RPT_DATES', @activity_id, @activity_name, 0, 'Source', 'ASAP_DeleteDateTime_mapping', NULL),
('WG_RPT_HMDA', @activity_id, @activity_name, 0, 'Source', 'src_file_prefix', 'WG_RPT_HMDA20'),
('WG_RPT_HMDA', @activity_id, @activity_name, 0, 'Source', 'pii_columns', ''),
('WG_RPT_HMDA', @activity_id, @activity_name, 0, 'Source', 'ASAP_DeleteDateTime_mapping', NULL),
('WG_RPT_INV_LOCK_SNAPSHOT', @activity_id, @activity_name, 0, 'Source', 'src_file_prefix', 'WG_RPT_INV_LOCK_SNAPSHOT20'),
('WG_RPT_INV_LOCK_SNAPSHOT', @activity_id, @activity_name, 0, 'Source', 'pii_columns', ''),
('WG_RPT_INV_LOCK_SNAPSHOT', @activity_id, @activity_name, 0, 'Source', 'ASAP_DeleteDateTime_mapping', NULL),
('WG_RPT_INVESTOR', @activity_id, @activity_name, 0, 'Source', 'src_file_prefix', 'WG_RPT_INVESTOR20'),
('WG_RPT_INVESTOR', @activity_id, @activity_name, 0, 'Source', 'pii_columns', ''),
('WG_RPT_INVESTOR', @activity_id, @activity_name, 0, 'Source', 'ASAP_DeleteDateTime_mapping', NULL),
('WG_RPT_IPG_DETAIL', @activity_id, @activity_name, 0, 'Source', 'src_file_prefix', 'WG_RPT_IPG_DETAIL20'),
('WG_RPT_IPG_DETAIL', @activity_id, @activity_name, 0, 'Source', 'pii_columns', ''),
('WG_RPT_IPG_DETAIL', @activity_id, @activity_name, 0, 'Source', 'ASAP_DeleteDateTime_mapping', NULL),
('WG_RPT_LOAN', @activity_id, @activity_name, 0, 'Source', 'src_file_prefix', 'WG_RPT_LOAN20'),
('WG_RPT_LOAN', @activity_id, @activity_name, 0, 'Source', 'pii_columns', ''),
('WG_RPT_LOAN', @activity_id, @activity_name, 0, 'Source', 'ASAP_DeleteDateTime_mapping', NULL),
('WG_RPT_LOAN_ACTIVITY', @activity_id, @activity_name, 0, 'Source', 'src_file_prefix', 'WG_RPT_LOAN_ACTIVITY20'),
('WG_RPT_LOAN_ACTIVITY', @activity_id, @activity_name, 0, 'Source', 'pii_columns', ''),
('WG_RPT_LOAN_ACTIVITY', @activity_id, @activity_name, 0, 'Source', 'ASAP_DeleteDateTime_mapping', NULL),
('WG_RPT_LOAN_CONDITIONS', @activity_id, @activity_name, 0, 'Source', 'src_file_prefix', 'WG_RPT_LOAN_CONDITIONS20'),
('WG_RPT_LOAN_CONDITIONS', @activity_id, @activity_name, 0, 'Source', 'pii_columns', ''),
('WG_RPT_LOAN_CONDITIONS', @activity_id, @activity_name, 0, 'Source', 'ASAP_DeleteDateTime_mapping', NULL),
('WG_RPT_LOAN_REMARKS', @activity_id, @activity_name, 0, 'Source', 'src_file_prefix', 'WG_RPT_LOAN_REMARKS20'),
('WG_RPT_LOAN_REMARKS', @activity_id, @activity_name, 0, 'Source', 'pii_columns', ''),
('WG_RPT_LOAN_REMARKS', @activity_id, @activity_name, 0, 'Source', 'ASAP_DeleteDateTime_mapping', NULL),
('WG_RPT_LOAN_STATUS', @activity_id, @activity_name, 0, 'Source', 'src_file_prefix', 'WG_RPT_LOAN_STATUS20'),
('WG_RPT_LOAN_STATUS', @activity_id, @activity_name, 0, 'Source', 'pii_columns', ''),
('WG_RPT_LOAN_STATUS', @activity_id, @activity_name, 0, 'Source', 'ASAP_DeleteDateTime_mapping', NULL),
('WG_RPT_PROPERTY', @activity_id, @activity_name, 0, 'Source', 'src_file_prefix', 'WG_RPT_PROPERTY20'),
('WG_RPT_PROPERTY', @activity_id, @activity_name, 0, 'Source', 'pii_columns', ''),
('WG_RPT_PROPERTY', @activity_id, @activity_name, 0, 'Source', 'ASAP_DeleteDateTime_mapping', NULL),
('WG_RPT_WORKFLOW', @activity_id, @activity_name, 0, 'Source', 'src_file_prefix', 'WG_RPT_WORKFLOW20'),
('WG_RPT_WORKFLOW', @activity_id, @activity_name, 0, 'Source', 'pii_columns', ''),
('WG_RPT_WORKFLOW', @activity_id, @activity_name, 0, 'Source', 'ASAP_DeleteDateTime_mapping', NULL),
('WG_SC_DECISION', @activity_id, @activity_name, 0, 'Source', 'src_file_prefix', 'WG_SC_DECISION20'),
('WG_SC_DECISION', @activity_id, @activity_name, 0, 'Source', 'pii_columns', ''),
('WG_SC_DECISION', @activity_id, @activity_name, 0, 'Source', 'ASAP_DeleteDateTime_mapping', NULL),
('WG_TLBR_VET_MILT_SERVICE', @activity_id, @activity_name, 0, 'Source', 'src_file_prefix', 'WG_TLBR_VET_MILT_SERVICE20'),
('WG_TLBR_VET_MILT_SERVICE', @activity_id, @activity_name, 0, 'Source', 'pii_columns', ''),
('WG_TLBR_VET_MILT_SERVICE', @activity_id, @activity_name, 0, 'Source', 'ASAP_DeleteDateTime_mapping', NULL);


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





