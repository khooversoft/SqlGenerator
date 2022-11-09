-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

CREATE TABLE [clt_NetO].[FLOOD]
(
   [LNUM]                             nchar(20)            NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              datetime2(7)         NULL,
   [INSREQ]                           nchar(1)             NULL,
   [FLDZNCRT]                         nchar(1)             NULL,
   [LIFELOAN]                         nchar(1)             NULL,
   [DETMNNUM]                         nvarchar(14)         NULL,
   [DETMNDAT]                         datetime             NULL,
   [S_FIRM]                           nvarchar(8)          NULL,
   [S_FLDZON]                         nvarchar(8)          NULL,
   [FLDMAPDT]                         datetime             NULL,
   [COMMNUMB]                         nvarchar(40)         NULL,
   [SFHAREA]                          nchar(1)             NULL,
   [NOTMAPD]                          nchar(1)             NULL,
   [OBTNINS]                          nchar(1)             NULL,
   [NOTFLOOD]                         nchar(1)             NULL,
   [MAPNUMB]                          nvarchar(40)         NULL,
   [NFIP_MAP_PANEL_DATE]              datetime             NULL,
   [COMMNAME]                         nvarchar(50)         NULL,
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
