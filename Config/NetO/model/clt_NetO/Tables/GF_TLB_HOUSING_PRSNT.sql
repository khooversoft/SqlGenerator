-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

CREATE TABLE [clt_NetO].[GF_TLB_HOUSING_PRSNT]
(
   [LNUM]                             nchar(20)            NOT NULL,
   [BNUM]                             smallint             NOT NULL,
   [DBID]                             nchar(5)             NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              datetime2(7)         NULL,
   [GROUND_RENT_AMT]                  decimal(16,6)        NULL,
   [HAZARD_INS_AMT]                   decimal(18,3)        NULL,
   [HOA_DUES_AMT]                     decimal(18,3)        NULL,
   [LEASEHOLD_PMT_AMT]                decimal(18,3)        NULL,
   [MAINT_MISC_AMT]                   decimal(18,3)        NULL,
   [MI_AMT]                           decimal(18,3)        NULL,
   [MTG_PITI_AMT]                     decimal(16,6)        NULL,
   [MTG_PRIN_INT_AMT]                 decimal(18,3)        NULL,
   [OTHER_HOUSING_AMT]                decimal(16,6)        NULL,
   [OTHER_MTG_PITI_AMT]               decimal(16,6)        NULL,
   [OTHER_MTG_PRIN_INT_AMT]           decimal(18,3)        NULL,
   [REAL_ESTATE_TAX_AMT]              decimal(18,3)        NULL,
   [RENT_AMT]                         decimal(18,3)        NULL,
   [UTILITIES_AMT]                    decimal(18,3)        NULL,
   [OTHER_EXP_TOTAL]                  decimal(18,3)        NULL,
   [FLOOD_INS_AMT]                    numeric(18,3)        NULL,
   [ASSESSMENT_AMT]                   numeric(18,3)        NULL,
   [WATER_PURI_AMT]                   numeric(18,3)        NULL,
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
