-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

CREATE TABLE [clt_NetO].[GSSGRP]
(
   [GRPID]                            int                  NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              datetime2(7)         NULL,
   [GRPNAME]                          nvarchar(30)         NOT NULL,
   [DESCRIPT]                         nvarchar(80)         NULL,
   [GRPABBR]                          nvarchar(8)          NULL,
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
WITH (DISTRIBUTION = HASH ([GRPID]), CLUSTERED COLUMNSTORE INDEX)
;
