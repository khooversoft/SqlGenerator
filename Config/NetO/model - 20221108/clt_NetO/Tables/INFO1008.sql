-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

CREATE TABLE [clt_NetO].[INFO1008]
(
   [LNUM]                             nchar(20)            NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              datetime2(7)         NULL,
   [BASEINC]                          numeric(18,3)        NULL,
   [OTHERINC]                         numeric(18,3)        NULL,
   [POSINC]                           decimal(16,6)        NULL,
   [C_BASEINC]                        numeric(18,3)        NULL,
   [C_OTHERINC]                       numeric(18,3)        NULL,
   [C_POSINC]                         decimal(16,6)        NULL,
   [TBASEINC]                         numeric(18,3)        NULL,
   [TOTHERINC]                        numeric(18,3)        NULL,
   [TPOSINC]                          decimal(16,6)        NULL,
   [TBORINC]                          numeric(18,3)        NULL,
   [TCBORINC]                         numeric(18,3)        NULL,
   [ALLINC]                           numeric(18,3)        NULL,
   [FIRSTMORT]                        decimal(18,3)        NULL,
   [SECMORT]                          decimal(18,3)        NULL,
   [HAZINS]                           decimal(18,3)        NULL,
   [TAXES]                            decimal(18,3)        NULL,
   [MORTINS]                          decimal(18,3)        NULL,
   [ASSDUES]                          decimal(18,3)        NULL,
   [LEASE]                            decimal(16,6)        NULL,
   [OTHEREXP]                         decimal(18,3)        NULL,
   [THOUSEXP]                         decimal(18,3)        NULL,
   [NEGCASH]                          decimal(18,3)        NULL,
   [OTHERMTHY]                        decimal(18,3)        NULL,
   [ALLPMT]                           decimal(18,3)        NULL,
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
