-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

CREATE TABLE [clt_NetO].[WG_HOEPA_DATA]
(
   [LNUM]                             nchar(20)            NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              datetime2(7)         NULL,
   [VERIFIED_INCOME]                  numeric(16,6)        NULL,
   [VERIFIED_DEBTS]                   numeric(16,6)        NULL,
   [DISCOUNT_AMT]                     numeric(16,6)        NULL,
   [PROD_HAS_NEGAM]                   nchar(1)             NULL,
   [TOTAL_LOAN_COSTS]                 numeric(16,6)        NULL,
   [MAX_BONAFIDE_AMT]                 numeric(16,6)        NULL,
   [QM_QUALIFY_DTI]                   numeric(16,6)        NULL,
   [QM_QUALIFY_RATE]                  numeric(16,6)        NULL,
   [QM_QUALIFY_PIPMT]                 numeric(16,6)        NULL,
   [QM_QUALIFY_PITI]                  numeric(16,6)        NULL,
   [QM_RESIDUAL_INC]                  numeric(16,6)        NULL,
   [HOEPA_APR]                        numeric(16,6)        NULL,
   [PREPAY_PEN_PASSES_QMS]            nchar(1)             NULL,
   [PREPAY_PEN_PASSES_QMR]            nchar(1)             NULL,
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
