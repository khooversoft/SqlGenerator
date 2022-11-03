-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

CREATE TABLE [clt_NetO].[HMDAXPRT]
(
   [PRI_DBID]                         nchar(5)             NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              datetime2(7)         NULL,
   [ACODE]                            nchar(1)             NULL,
   [RNAME]                            nvarchar(30)         NULL,
   [RID]                              nvarchar(10)         NULL,
   [RADDR]                            nvarchar(40)         NULL,
   [RCITY]                            nvarchar(25)         NULL,
   [RSTATE]                           nchar(2)             NULL,
   [RZIP]                             nvarchar(10)         NULL,
   [PNAME]                            nvarchar(30)         NULL,
   [PADDR]                            nvarchar(40)         NULL,
   [PCITY]                            nvarchar(25)         NULL,
   [PSTATE]                           nchar(2)             NULL,
   [PZIP]                             nvarchar(10)         NULL,
   [CNAME]                            nvarchar(30)         NULL,
   [CPNUM]                            nvarchar(12)         NULL,
   [SOFCR]                            nvarchar(40)         NULL,
   [RGNUM]                            nvarchar(2)          NULL,
   [TAXID]                            nvarchar(10)         NULL,
   [FROMD]                            datetime             NULL,
   [TODATE]                           datetime             NULL,
   [FTYPE]                            nchar(1)             NULL,
   [DBID]                             nchar(5)             NULL,
   [QSERNUM]                          int                  NULL,
   [DENLRSN]                          nchar(1)             NULL,
   [SUBMITNA]                         nchar(1)             NULL,
   [RPTYEAR]                          nvarchar(4)          NULL,
   [CFPNUM]                           nvarchar(12)         NULL,
   [S_CUSTOMQRY]                      nvarchar(8)          NULL,
   [CEMAIL]                           nvarchar(45)         NULL,
   [HMDA_LAR_LEI]                     nvarchar(20)         NULL,
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
WITH (DISTRIBUTION = HASH ([PRI_DBID]), CLUSTERED COLUMNSTORE INDEX)
;
