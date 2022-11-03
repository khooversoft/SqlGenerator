-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

CREATE TABLE [clt_NetO].[PREVRES]
(
   [LNUM]                             nchar(20)            NOT NULL,
   [BNUM]                             smallint             NOT NULL,
   [DBID]                             nchar(5)             NOT NULL,
   [RESCTR]                           smallint             NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              datetime2(7)         NULL,
   [RESADD1]                          nvarchar(100)        NULL,
   [RESADD2]                          nvarchar(100)        NULL,
   [RESCITY]                          nvarchar(25)         NULL,
   [RESST]                            nchar(2)             NULL,
   [RESZIP]                           nvarchar(10)         NULL,
   [S_OWNRNT]                         nvarchar(8)          NULL,
   [RESNMYRS]                         decimal(16,6)        NULL,
   [ACCTPREV]                         nvarchar(20)         NULL,
   [ACCTHLDR]                         nvarchar(35)         NULL,
   [RESCNTRY]                         nvarchar(35)         NULL,
   [LANDCTR]                          smallint             NULL,
   [RESCNTY]                          nvarchar(35)         NULL,
   [RES_FADDR_INDICATOR]              nchar(1)             NULL,
   [RECORD_CREATED]                   nvarchar(35)         NULL,
   [YRS_AT_PREV]                      int                  NULL,
   [MNTHS_AT_PREV]                    int                  NULL,
   [S_RES_UNIT_TYPE]                  nvarchar(8)          NULL,
   [RES_UNIT_NUM]                     nvarchar(12)         NULL,
   [RES_CNTRY_CODE]                   nvarchar(2)          NULL,
   [PREV_STATE_FOREIN]                nvarchar(35)         NULL,
   [PREV_POSTCODE]                    nvarchar(12)         NULL,
   [S_LIVE_RENT_FREE_ENUMS]           nvarchar(8)          NULL,
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
