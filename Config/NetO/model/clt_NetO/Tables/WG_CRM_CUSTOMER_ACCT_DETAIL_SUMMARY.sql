-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

CREATE TABLE [clt_NetO].[WG_CRM_CUSTOMER_ACCT_DETAIL_SUMMARY]
(
   [CURRENT_CUSTOMERID]               nvarchar(50)         NOT NULL,
   [AG_DA_ACCT_TYPE]                  nvarchar(8)          NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              datetime2(7)         NULL,
   [AG_DA_ACCT_TOTALASSETS]           decimal(18,3)        NULL,
   [TOTALASSETSDAVGLAST60DAYS]        decimal(18,3)        NULL,
   [TOTALASSETSDAVGLAST180DAYS]       decimal(18,3)        NULL,
   [SAVINGACCBALDAVGLAST60DAYS]       decimal(18,3)        NULL,
   [SAVINGACCBALDAVGLAST180DAYS]      decimal(18,3)        NULL,
   [AGDIRECRDEPOSITVLAST30DAYS]       decimal(18,3)        NULL,
   [AGGREGATEDIREALUELAST60DAYS]      decimal(18,3)        NULL,
   [AGDEPOSITVALUELAST30DAYS]         decimal(18,3)        NULL,
   [AGDEPOSITVALUELAST60DAYS]         decimal(18,3)        NULL,
   [AGDEPOSITVALUELAST180DAYS]        decimal(18,3)        NULL,
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
WITH (DISTRIBUTION = HASH ([CURRENT_CUSTOMERID]), CLUSTERED COLUMNSTORE INDEX)
;
