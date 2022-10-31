-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

CREATE TABLE [clt_NetO].[WG_ASSET_VHCL_OPTIONS]
(
   [LNUM]                             nchar(20)            NOT NULL,
   [ASSETID]                          int                  NOT NULL,
   [ROWCOUNTER]                       int                  NOT NULL,
   [VALUATION_CNTR]                   int                  NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              datetime2(7)         NULL,
   [S_OPTION_TYPE]                    nvarchar(8)          NULL,
   [VHCL_OPTION_VALUE]                numeric(16,6)        NULL,
   [SELECTED_YN]                      nchar(1)             NULL,
   [VHCL_OPTION]                      nvarchar(50)         NULL,
   [OPTIONS_PRICING_VALUE]            nchar(1)             NULL,
   [VHCL_OPTION_PRICE]                numeric(18,3)        NULL,
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
