-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

CREATE TABLE [clt_NetO].[GF_TL_AFFORDABILITY]
(
   [LNUM]                             nchar(20)            NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              datetime2(7)         NULL,
   [INCOME]                           decimal(18,3)        NULL,
   [DEBTS]                            decimal(18,3)        NULL,
   [TAXRATE]                          decimal(16,6)        NULL,
   [HAZRATE]                          decimal(16,6)        NULL,
   [CASHONHAND]                       decimal(18,3)        NULL,
   [LIMITDOWNPMT]                     nchar(1)             NULL,
   [PROPOSEDINTRATE]                  decimal(16,6)        NULL,
   [PROPOSEDLOANTERM]                 smallint             NULL,
   [PROPOSEDHOUSINGRATIO]             decimal(16,6)        NULL,
   [PROPOSEDDEBTRATIO]                decimal(16,6)        NULL,
   [AFFORDPITI]                       decimal(18,3)        NULL,
   [AFFORDLOANAMT]                    decimal(18,3)        NULL,
   [AFFORDSALESPRICE]                 decimal(18,3)        NULL,
   [AFFORDPNTS]                       decimal(16,6)        NULL,
   [AFFORDCLOSINGCOSTS]               decimal(18,3)        NULL,
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
