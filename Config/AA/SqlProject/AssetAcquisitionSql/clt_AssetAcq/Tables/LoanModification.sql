-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

CREATE TABLE [clt_AssetAcq].[LoanModification]
(
   [BECUAccountNumber]                [nvarchar](100)      NOT NULL,
   [Loan_ID]                          [nvarchar](100)      NOT NULL,
   [ModID]                            [nvarchar](100)      NULL,
   [ModEffectiveDate]                 Date                 NULL,
   [ModStartDate]                     Date                 NULL,
   [ModEndDate]                       Date                 NULL,
   [ValuePre]                         decimal(16,6)        NULL,
   [ValuePost]                        decimal(16,6)        NULL,
   [FreezeDays]                       int                  NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              datetime2(7)         NULL,
   [ASAP_ROW_HASH]                    nvarchar(64)         NULL,
   [ASAP_DML_FLAG]                    nvarchar(2)          NULL,
   [ASAP_CREATED_DATE]                datetime2(7)         NULL,
   [ASAP_UPDATED_DATE]                datetime2(7)         NULL,
   [ASAP_LINEAGE_ID]                  nvarchar(36)         NULL,
   [ASAP_ACTIVITY_ID]                 nvarchar(36)         NULL,
   [ASAP_TRIGGER_ID]                  nvarchar(36)         NULL,
   [ASAP_SRC_FILEPATH]                nvarchar(1000)       NULL
)
WITH (DISTRIBUTION = HASH ([BECUAccountNumber]), CLUSTERED COLUMNSTORE INDEX)
;
