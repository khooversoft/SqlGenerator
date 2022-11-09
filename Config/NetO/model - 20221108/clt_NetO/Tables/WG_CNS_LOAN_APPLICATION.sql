-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

CREATE TABLE [clt_NetO].[WG_CNS_LOAN_APPLICATION]
(
   [LNUM]                             nchar(20)            NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              datetime2(7)         NULL,
   [CID_BRANCH]                       int                  NULL,
   [S_BUSINESS_CHANNEL]               nvarchar(8)          NULL,
   [S_LOAN_TYPE]                      nvarchar(8)          NULL,
   [S_LOAN_CATEGORY]                  nvarchar(8)          NULL,
   [S_REFERRAL_SOURCE]                nvarchar(8)          NULL,
   [S_LOAN_PURPOSE]                   nvarchar(8)          NULL,
   [EMP_LOAN_YN]                      nchar(1)             NULL,
   [REG_O_LOAN_YN]                    nchar(1)             NULL,
   [TSWE_EXPECTED_YN]                 nchar(1)             NULL,
   [TSWE_EXISTS_YN]                   nchar(1)             NULL,
   [TSWE_GUIDELINES_MET_YN]           nchar(1)             NULL,
   [PRE_APPR_REQ_YN]                  nchar(1)             NULL,
   [PRE_APPR_DATE]                    datetime             NULL,
   [MBA_YN]                           nchar(1)             NULL,
   [IS_PERSONALUSE_YN]                char(1)              NULL,
   [S_PRIMARY_COLLATERAL_TYPE]        nvarchar(8)          NULL,
   [COLLATERAL_STATE]                 nchar(2)             NULL,
   [VENDOR_VAL_METHOD]                nvarchar(10)         NULL,
   [VALUATION_SOURCE]                 nvarchar(25)         NULL,
   [VEHICLE_FUEL_TYPE]                nvarchar(10)         NULL,
   [VEHICLE_MILEAGE]                  int                  NULL,
   [CURRENTMODELYR]                   int                  NULL,
   [COLLAGEYRS]                       int                  NULL,
   [S_TITLE_TRANSFER]                 nvarchar(8)          NULL,
   [S_SECONDARY_COLLATERAL_TYPE]      nvarchar(8)          NULL,
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
