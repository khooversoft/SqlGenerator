-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

CREATE TABLE [clt_NetO].[GF_TLR_RES_CREDIT_FILE]
(
   [LNUM]                             nchar(20)            NOT NULL,
   [DBID]                             nchar(5)             NOT NULL,
   [RESPONSEID]                       int                  NOT NULL,
   [CREDITRESPONSEID]                 int                  NOT NULL,
   [CREDITFILEID]                     nvarchar(50)         NOT NULL,
   [BORROWER_ID]                      nvarchar(20)         NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              datetime2(7)         NULL,
   [CREDITSCOREID]                    nvarchar(20)         NULL,
   [REPOSITORY_SOURCE_TYPE]           nvarchar(10)         NULL,
   [INFILE_DATE]                      datetime             NULL,
   [BNUM]                             smallint             NULL,
   [S_RESULTSTATUSTYPE]               nvarchar(8)          NULL,
   [RESULTSTATUSTTHERDESC]            nvarchar(50)         NULL,
   [CREDREPOSSRCTYPEOTHERDESC]        nvarchar(50)         NULL,
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
