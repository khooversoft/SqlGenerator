-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

CREATE TABLE [clt_NetO].[RATECODE]
(
   [USEKEY]                           nvarchar(10)         NOT NULL,
   [CURRENTCODE]                      nchar(1)             NOT NULL,
   [RATECODE]                         nvarchar(10)         NOT NULL,
   [COUNTER]                          int                  NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              datetime2(7)         NULL,
   [LOCKDATE]                         datetime             NOT NULL,
   [BEGINTIME]                        datetime             NOT NULL,
   [ENDTIME]                          datetime             NULL,
   [PRICING_CHANNEL]                  nvarchar(8)          NULL,
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
WITH (DISTRIBUTION = HASH ([USEKEY]), CLUSTERED COLUMNSTORE INDEX)
;
