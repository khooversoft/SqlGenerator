-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

CREATE TABLE [clt_NetO].[GF_TL_UWAPPREXT]
(
   [LNUM]                             nchar(20)            NOT NULL,
   [CNTR]                             smallint             NOT NULL,
   [DBID]                             nchar(5)             NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              datetime2(7)         NULL,
   [FLOODMAPDATE]                     datetime             NULL,
   [FLOODMAPNUMBER]                   nvarchar(40)         NULL,
   [NOTFLOODAREA]                     nchar(1)             NULL,
   [PRIMARYAPPRAISAL]                 nchar(1)             NULL,
   [REPAIRAMOUNT]                     decimal(18,3)        NULL,
   [REPLACEMENTAMOUNT]                decimal(18,3)        NULL,
   [S_FLOODMAPZONE]                   nvarchar(8)          NULL,
   [APP_SENT_BORROWER]                datetime             NULL,
   [APPRAISAL_DELIVERED]              datetime             NULL,
   [APP_TIME_WAIVE]                   datetime             NULL,
   [SELLER_ACQUIRED_PRC]              numeric(16,6)        NULL,
   [APP_DELIVERED_DATETYPE]           nvarchar(8)          NULL,
   [APP_WAIVED_OK]                    nchar(1)             NULL,
   [UW_APPR_DOC_ID]                   nvarchar(20)         NULL,
   [APPRSL_CENTRAL_AIR]               nchar(1)             NULL,
   [PERCENT_SINGLE_FAM]               int                  NULL,
   [PERCENT_TWO_FOUR_UNIT]            int                  NULL,
   [PERCENT_MULTI_FAM]                int                  NULL,
   [PERCENT_COMMERCIAL]               int                  NULL,
   [S_PROP_LOC_TYPE]                  nvarchar(8)          NULL,
   [PROP_LTN_TYP_OTHDESC]             nvarchar(80)         NULL,
   [S_CAR_STORAGE_TYPE]               nvarchar(8)          NULL,
   [CARSTORAGE_TYPE_OTHR_DESC]        nvarchar(80)         NULL,
   [CARSTORAGE_NBR_CARS]              int                  NULL,
   [S_FOUNDATION_TYPE]                nvarchar(8)          NULL,
   [FNDN_TYPE_OTHER_DESC]             nvarchar(80)         NULL,
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
