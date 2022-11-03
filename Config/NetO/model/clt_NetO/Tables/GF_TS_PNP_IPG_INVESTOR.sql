-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

CREATE TABLE [clt_NetO].[GF_TS_PNP_IPG_INVESTOR]
(
   [INVESTORCODE]                     nvarchar(4)          NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              datetime2(7)         NULL,
   [INVESTORNAME]                     nvarchar(80)         NULL,
   [MERITCODE]                        nvarchar(4)          NULL,
   [INVESTORDESC]                     nvarchar(80)         NULL,
   [ENABLED]                          nchar(1)             NULL,
   [DELFROMMERITDATE]                 datetime             NULL,
   [CID]                              nvarchar(20)         NULL,
   [RATECODE_PFX]                     nvarchar(2)          NULL,
   [SRCENV]                           nvarchar(5)          NULL,
   [REC_CUSTOM]                       nchar(1)             NULL,
   [CREATE_DATE]                      datetime             NULL,
   [MODIFY_DATE]                      datetime             NULL,
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
WITH (DISTRIBUTION = HASH ([INVESTORCODE]), CLUSTERED COLUMNSTORE INDEX)
;
