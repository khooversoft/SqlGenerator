-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

CREATE TABLE [clt_NetO].[WG_SC_ATTRIBUTES]
(
   [LNUM]                             nchar(20)            NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              datetime2(7)         NULL,
   [DEPTHOF_FILE_IND_SRC]             nvarchar(20)         NULL,
   [BANKRUPTCY_IND_SRC]               nvarchar(20)         NULL,
   [REPO_FCLS_IND_SRC]                nvarchar(20)         NULL,
   [DELQ_CRED_POL_CNT_SRC]            int                  NULL,
   [DEROG_OBLIG_CNT_SRC]              int                  NULL,
   [DEROG_OBLIG_AMT_SRC]              decimal(18,3)        NULL,
   [UNPAID_MED_AMT_SRC]               decimal(18,3)        NULL,
   [LENDER_CHGOFF_IND_SRC]            nvarchar(20)         NULL,
   [EXCL_DECIS_RSLT_SRC]              nvarchar(20)         NULL,
   [PROP_TYPE_IND_SRC]                nvarchar(20)         NULL,
   [STATE_IND_SRC]                    nvarchar(20)         NULL,
   [LTV_VAL_SRC]                      decimal(16,6)        NULL,
   [CLTV_VAL_SRC]                     decimal(16,6)        NULL,
   [DTI_VAL_SRC]                      decimal(16,6)        NULL,
   [LA_VAL_SRC]                       decimal(18,3)        NULL,
   [CSCORE_VAL_SRC]                   int                  NULL,
   [DEPTHOF_FILE_IND_OVR]             nvarchar(20)         NULL,
   [BANKRUPTCY_IND_OVR]               nvarchar(20)         NULL,
   [REPO_FCLS_IND_OVR]                nvarchar(20)         NULL,
   [DELQ_CRED_POL_CNT_OVR]            int                  NULL,
   [DEROG_OBLIG_CNT_OVR]              int                  NULL,
   [DEROG_OBLIG_AMT_OVR]              decimal(18,3)        NULL,
   [UNPAID_MED_AMT_OVR]               decimal(18,3)        NULL,
   [LENDER_CHGOFF_IND_OVR]            nvarchar(20)         NULL,
   [EXCL_DECIS_RSLT_OVR]              nvarchar(20)         NULL,
   [PROP_TYPE_IND_OVR]                nvarchar(20)         NULL,
   [STATE_IND_OVR]                    nvarchar(20)         NULL,
   [LTV_VAL_OVR]                      decimal(16,6)        NULL,
   [CLTV_VAL_OVR]                     decimal(16,6)        NULL,
   [DTI_VAL_OVR]                      decimal(16,6)        NULL,
   [LA_VAL_OVR]                       decimal(18,3)        NULL,
   [CSCORE_VAL_OVR]                   int                  NULL,
   [DEPTHOF_FILE_IND_ATT]             nvarchar(20)         NULL,
   [BANKRUPTCY_IND_ATT]               nvarchar(20)         NULL,
   [REPO_FCLS_IND_ATT]                nvarchar(20)         NULL,
   [DELQ_CRED_POL_CNT_ATT]            int                  NULL,
   [DEROG_OBLIG_CNT_ATT]              int                  NULL,
   [DEROG_OBLIG_AMT_ATT]              decimal(16,6)        NULL,
   [UNPAID_MED_AMT_ATT]               decimal(16,6)        NULL,
   [LENDER_CHGOFF_IND_ATT]            nvarchar(20)         NULL,
   [EXCL_DECIS_RSLT_ATT]              nvarchar(20)         NULL,
   [PROP_TYPE_IND_ATT]                nvarchar(20)         NULL,
   [STATE_IND_ATT]                    nvarchar(20)         NULL,
   [LTV_VAL_ATT]                      decimal(16,6)        NULL,
   [CLTV_VAL_ATT]                     decimal(16,6)        NULL,
   [DTI_VAL_ATT]                      decimal(16,6)        NULL,
   [LA_VAL_ATT]                       decimal(18,3)        NULL,
   [CSCORE_VAL_ATT]                   int                  NULL,
   [TRDNBR_OPEN_OVR]                  int                  NULL,
   [TRDMOS_OLD_OVR]                   int                  NULL,
   [BKANY_CNT_OVR]                    int                  NULL,
   [BKANYMOS_NEW_OVR]                 int                  NULL,
   [REPO_CNT_OVR]                     int                  NULL,
   [FCLS_CNT_OVR]                     int                  NULL,
   [COLMDUNP_AMT_OVR]                 decimal(18,3)        NULL,
   [DELQ500_CNT_OVR]                  int                  NULL,
   [DELQ306MOS_CNT_OVR]               int                  NULL,
   [DELQ6012MOS_CNT_OVR]              int                  NULL,
   [DELQ90P24MOS_CNT_OVR]             int                  NULL,
   [COFUNP500_CNT_OVR]                int                  NULL,
   [JUDUNP500_CNT_OVR]                int                  NULL,
   [TAXUNP500_CNT_OVR]                int                  NULL,
   [COLNMDUNP500_CNT_OVR]             int                  NULL,
   [COFUNP500_AMT_OVR]                decimal(18,3)        NULL,
   [JUDUNP500_AMT_OVR]                decimal(18,3)        NULL,
   [TAXUNP500_AMT_OVR]                decimal(18,3)        NULL,
   [COLNMDUNP500_AMT_OVR]             decimal(18,3)        NULL,
   [THINLIMIT_IND_ATT]                nvarchar(20)         NULL,
   [THINLIMIT_IND_SRC]                nvarchar(20)         NULL,
   [THINLIMIT_IND_OVR]                nvarchar(20)         NULL,
   [TIERLIMIT_IND_ATT]                nvarchar(20)         NULL,
   [TIERLIMIT_IND_SRC]                nvarchar(20)         NULL,
   [TIERLIMIT_IND_OVR]                nvarchar(20)         NULL,
   [THRESHOLD_IND_ATT]                nvarchar(20)         NULL,
   [THRESHOLD_IND_SRC]                nvarchar(20)         NULL,
   [THRESHOLD_IND_OVR]                nvarchar(20)         NULL,
   [PTI_VAL_ATT]                      decimal(8,3)         NULL,
   [PTI_VAL_SRC]                      decimal(8,3)         NULL,
   [PTI_VAL_OVR]                      decimal(8,3)         NULL,
   [CREDIT_TIER_ATT]                  nvarchar(20)         NULL,
   [CREDIT_TIER_SRC]                  nvarchar(20)         NULL,
   [CREDIT_TIER_OVR]                  nvarchar(20)         NULL,
   [PRIM_BORR_DECS_ATT]               nvarchar(20)         NULL,
   [PRIM_BORR_DECS_SRC]               nvarchar(20)         NULL,
   [PRIM_BORR_DECS_OVR]               nvarchar(20)         NULL,
   [CO_BORR_DECS_ATT]                 nvarchar(20)         NULL,
   [CO_BORR_DECS_SRC]                 nvarchar(20)         NULL,
   [CO_BORR_DECS_OVR]                 nvarchar(20)         NULL,
   [PRI_BOR_TRD_DESC_ATT]             nvarchar(20)         NULL,
   [PRI_BOR_TRD_DESC_SRC]             nvarchar(20)         NULL,
   [PRI_BOR_TRD_DESC_OVR]             nvarchar(20)         NULL,
   [CO_BOR_TRD_DESC_ATT]              nvarchar(20)         NULL,
   [CO_BOR_TRD_DESC_SRC]              nvarchar(20)         NULL,
   [CO_BOR_TRD_DESC_OVR]              nvarchar(20)         NULL,
   [PRI_BOR_BK_DESC_ATT]              nvarchar(20)         NULL,
   [PRI_BOR_BK_DESC_SRC]              nvarchar(20)         NULL,
   [PRI_BOR_BK_DESC_OVR]              nvarchar(20)         NULL,
   [CO_BOR_BK_DESC_ATT]               nvarchar(20)         NULL,
   [CO_BOR_BK_DESC_SRC]               nvarchar(20)         NULL,
   [CO_BOR_BK_DESC_OVR]               nvarchar(20)         NULL,
   [PRI_BOR_TRD_AGE_DESC_ATT]         nvarchar(20)         NULL,
   [PRI_BOR_TRD_AGE_DESC_SRC]         nvarchar(20)         NULL,
   [PRI_BOR_TRD_AGE_DESC_OVR]         nvarchar(20)         NULL,
   [PRI_BOR_TIRE_SCORE_ATT]           nvarchar(20)         NULL,
   [PRI_BOR_TIRE_SCORE_SRC]           nvarchar(20)         NULL,
   [PRI_BOR_TIRE_SCORE_OVR]           nvarchar(20)         NULL,
   [DTI_SCORE_ATT]                    nvarchar(20)         NULL,
   [DTI_SCORE_SRC]                    nvarchar(20)         NULL,
   [DTI_SCORE_OVR]                    nvarchar(20)         NULL,
   [LOAN_TRM_RULE_DECS_ATT]           nvarchar(20)         NULL,
   [LOAN_TRM_RULE_DECS_SRC]           nvarchar(20)         NULL,
   [LOAN_TRM_RULE_DECS_OVR]           nvarchar(20)         NULL,
   [LOAN_FACTOR_DECS_ATT]             nvarchar(20)         NULL,
   [LOAN_FACTOR_DECS_SRC]             nvarchar(20)         NULL,
   [LOAN_FACTOR_DECS_OVR]             nvarchar(20)         NULL,
   [PRI_BOR_NO_OF_TRDS_OVR]           int                  NULL,
   [CO_BOR_NO_OF_TRDS_OVR]            int                  NULL,
   [PRI_BOR_IS_MEM_OVR]               nvarchar(20)         NULL,
   [CO_BOR_IS_MEM_OVR]                nvarchar(20)         NULL,
   [PRI_BOR_BK_SCR_OVR]               int                  NULL,
   [CO_BOR_BK_SCR_OVR]                int                  NULL,
   [PRI_BOR_MEM_MNTH_OVR]             int                  NULL,
   [CO_BOR_MEM_MNTH_OVR]              int                  NULL,
   [PRI_BOR_OLD_TRD_AGE_OVR]          int                  NULL,
   [CO_BOR_OLD_TRD_AGE_OVR]           int                  NULL,
   [COLLAT_VEHICLE_AGE_OVR]           int                  NULL,
   [LOAN_ELIGIBILITY_ATT]             nvarchar(20)         NULL,
   [LOAN_ELIGIBILITY_SRC]             nvarchar(20)         NULL,
   [LOAN_ELIGIBILITY_OVR]             nvarchar(20)         NULL,
   [COLLATERAL_ATT]                   nvarchar(20)         NULL,
   [COLLATERAL_SRC]                   nvarchar(20)         NULL,
   [COLLATERAL_OVR]                   nvarchar(20)         NULL,
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
