-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

CREATE TABLE [clt_NetO].[PRTFOLIO]
(
   [LNUM]                             nchar(20)            NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              datetime2(7)         NULL,
   [PNUM]                             nvarchar(15)         NULL,
   [NOTERATE]                         decimal(16,6)        NULL,
   [UPB]                              decimal(18,3)        NULL,
   [OMA]                              decimal(18,3)        NULL,
   [OIR]                              decimal(16,6)        NULL,
   [OICD]                             datetime             NULL,
   [OPCD]                             datetime             NULL,
   [FPDD]                             datetime             NULL,
   [IRCP]                             smallint             NULL,
   [IRCD]                             datetime             NULL,
   [MARGIN]                           decimal(16,6)        NULL,
   [TP]                               smallint             NULL,
   [FLOOR]                            decimal(16,6)        NULL,
   [RMNGTERM]                         smallint             NULL,
   [BALLDATE]                         datetime             NULL,
   [PCD]                              datetime             NULL,
   [PCP]                              smallint             NULL,
   [UNITS]                            smallint             NULL,
   [LOANTERM]                         smallint             NULL,
   [AMTERM]                           smallint             NULL,
   [RF]                               nchar(1)             NULL,
   [TYPEAQ]                           nchar(1)             NULL,
   [MATDATE]                          datetime             NULL,
   [REFIAMT]                          decimal(18,3)        NULL,
   [RDF]                              nchar(1)             NULL,
   [ORIGDATE]                         datetime             NULL,
   [DUEDATE]                          datetime             NULL,
   [MATTERM]                          smallint             NULL,
   [OLTV]                             decimal(16,6)        NULL,
   [CLTV]                             decimal(16,6)        NULL,
   [MKT]                              decimal(18,3)        NULL,
   [COMDATE]                          datetime             NULL,
   [NAC]                              decimal(16,6)        NULL,
   [LCA]                              decimal(16,6)        NULL,
   [SPST]                             nchar(2)             NULL,
   [MTHPYMT]                          decimal(18,3)        NULL,
   [NEWPIPMT]                         decimal(18,3)        NULL,
   [NEWIRATE]                         decimal(16,6)        NULL,
   [SRP]                              decimal(16,6)        NULL,
   [ICO]                              nvarchar(5)          NULL,
   [EXCS]                             decimal(16,6)        NULL,
   [BUYUPDN]                          decimal(16,6)        NULL,
   [COCODE]                           nvarchar(3)          NULL,
   [ARMFLAG]                          nchar(1)             NULL,
   [CEILING]                          decimal(16,6)        NULL,
   [COMDT]                            datetime             NULL,
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
