-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

CREATE TABLE [clt_NetO].[GF_TLBC_EQ_RES_COLLECT]
(
   [LNUM]                             nchar(20)            NOT NULL,
   [BNUM]                             smallint             NOT NULL,
   [DBID]                             nchar(5)             NOT NULL,
   [ROWCOUNTER]                       smallint             NOT NULL,
   [RESPONSEID]                       int                  NOT NULL,
   [CREDITRESPONSEID]                 int                  NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              datetime2(7)         NULL,
   [ECOA_DESIGNATOR]                  nchar(1)             NULL,
   [ASSIGNED_DT]                      datetime             NULL,
   [ORIG_AMT]                         decimal(18,3)        NULL,
   [FIRST_DELINQUENCY_DT]             datetime             NULL,
   [AGENCY_CUST_NUM]                  nvarchar(10)         NULL,
   [AUTO_UPDATE_IND]                  nchar(1)             NULL,
   [CLIENT_ID]                        nvarchar(30)         NULL,
   [REPORTED_DT]                      datetime             NULL,
   [BALANCE]                          decimal(18,3)        NULL,
   [ACCT_NUM]                         nvarchar(30)         NULL,
   [STATUS_CODE]                      nchar(1)             NULL,
   [STATUS_CODE_TEXT]                 nvarchar(18)         NULL,
   [NARRATIVE_CODE1]                  nchar(2)             NULL,
   [NARRATIVE_TEXT1]                  nvarchar(72)         NULL,
   [NARRATIVE_CODE2]                  nchar(2)             NULL,
   [NARRATIVE_TEXT2]                  nvarchar(72)         NULL,
   [CREDITOR_CLASS_CODE]              nchar(2)             NULL,
   [CRECITOR_CLASS_TEXT]              nvarchar(72)         NULL,
   [LAST_PMT_DT]                      datetime             NULL,
   [ASAP_ROW_HASH]                    nvarchar(64)         NULL,
   [ASAP_DML_FLAG]                    nvarchar(2)          NULL,
   [ASAP_CREATED_DATE]                datetime2(7)         NULL,
   [ASAP_UPDATED_DATE]                datetime2(7)         NULL,
   [ASAP_LINEAGE_ID]                  nvarchar(36)         NULL,
   [ASAP_ACTIVITY_ID]                 nvarchar(36)         NULL,
   [ASAP_TRIGGER_ID]                  nvarchar(36)         NULL,
   [ASAP_SRC_FILEPATH]                nvarchar(1000)       NULL,
   [ASAP_SRC_FILE_DATE]               datetime2(7)         NULL,
   [ASAP_SRC_NAME]                    nvarchar(36)         NULL
)
WITH (DISTRIBUTION = HASH ([LNUM]), CLUSTERED COLUMNSTORE INDEX)
;
