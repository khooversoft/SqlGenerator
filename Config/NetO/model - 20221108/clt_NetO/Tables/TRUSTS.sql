-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

CREATE TABLE [clt_NetO].[TRUSTS]
(
   [LNUM]                             nchar(20)            NOT NULL,
   [TRUSTCNT]                         int                  NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              datetime2(7)         NULL,
   [TRSTDBID]                         nchar(5)             NULL,
   [TRSTSERI]                         int                  NULL,
   [TRSTNAME]                         nvarchar(45)         NULL,
   [TRSTDATE]                         datetime             NULL,
   [TRSTTXID]                         nvarchar(9)          NULL,
   [TRSTADT1]                         datetime             NULL,
   [TRSTADT2]                         datetime             NULL,
   [TRSTNUMB]                         nvarchar(20)         NULL,
   [S_TRSTYP]                         nvarchar(8)          NULL,
   [TRSTINST]                         nvarchar(40)         NULL,
   [TRSTREV]                          nchar(1)             NULL,
   [STATE]                            nchar(2)             NULL,
   [TRSTNOMINEE]                      nchar(1)             NULL,
   [IDENTIFICATION_NUM]               nvarchar(40)         NULL,
   [QPRT_IND]                         nchar(1)             NULL,
   [QPRT_EXP_DATE]                    datetime             NULL,
   [QPRT_BEN_WAIVER]                  nchar(1)             NULL,
   [LIVTRST]                          nchar(1)             NULL,
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
