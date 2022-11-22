-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

CREATE TABLE [clt_NetO].[GF_TLB_EQ_RES_SUMMARY]
(
   [LNUM]                             nchar(20)            NOT NULL,
   [BNUM]                             smallint             NOT NULL,
   [DBID]                             nchar(5)             NOT NULL,
   [RESPONSEID]                       int                  NOT NULL,
   [CREDITRESPONSEID]                 int                  NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              datetime2(7)         NULL,
   [BEGIN_DT]                         datetime             NULL,
   [END_DT]                           datetime             NULL,
   [PR_SEG_NUM]                       smallint             NULL,
   [COLL_SEG_NUM]                     smallint             NULL,
   [LOW_HIGH_CRED_AMT]                decimal(18,3)        NULL,
   [HIGH_HIGH_CRED_AMT]               decimal(18,3)        NULL,
   [ACCTS_NUM]                        smallint             NULL,
   [MOP_RT_ONES_NUM]                  smallint             NULL,
   [MOP_RT_SIXES_NUM]                 smallint             NULL,
   [MOP_RT_TWOS_NUM]                  smallint             NULL,
   [MOP_RT_SEVENS_NUM]                smallint             NULL,
   [MOP_RT_THREES_NUM]                smallint             NULL,
   [MOP_RT_EIGHTS_NUM]                smallint             NULL,
   [MOP_RT_FOURS_NUM]                 smallint             NULL,
   [MOP_RT_NINES_NUM]                 smallint             NULL,
   [MOP_RT_FIVES_NUM]                 smallint             NULL,
   [MOP_RT_OTHERS_NUM]                smallint             NULL,
   [HIST_RT_TWOS_NUM]                 smallint             NULL,
   [HIST_RT_SEVENS_NUM]               smallint             NULL,
   [HIST_RT_THREES_NUM]               smallint             NULL,
   [HIST_RT_EIGHTS_NUM]               smallint             NULL,
   [HIST_RT_FOURS_NUM]                smallint             NULL,
   [HIST_RT_NINES_NUM]                smallint             NULL,
   [HIST_RT_FIVES_NUM]                smallint             NULL,
   [HIST_RT_SIXES_NUM]                smallint             NULL,
   [INQUIRY_ALERT_IND]                nchar(1)             NULL,
   [INQUIRY_NUM]                      smallint             NULL,
   [SINCE_DT]                         datetime             NULL,
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
