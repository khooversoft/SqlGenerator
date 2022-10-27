-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_pii].[VwWG_SC_ATTRIBUTES]
AS
   SELECT
      x.[LNUM],
      x.[DEPTHOF_FILE_IND_SRC],
      x.[BANKRUPTCY_IND_SRC],
      x.[REPO_FCLS_IND_SRC],
      x.[DELQ_CRED_POL_CNT_SRC],
      x.[DEROG_OBLIG_CNT_SRC],
      x.[DEROG_OBLIG_AMT_SRC],
      x.[UNPAID_MED_AMT_SRC],
      x.[LENDER_CHGOFF_IND_SRC],
      x.[EXCL_DECIS_RSLT_SRC],
      x.[PROP_TYPE_IND_SRC],
      x.[STATE_IND_SRC],
      x.[LTV_VAL_SRC],
      x.[CLTV_VAL_SRC],
      x.[DTI_VAL_SRC],
      x.[LA_VAL_SRC],
      x.[CSCORE_VAL_SRC],
      x.[DEPTHOF_FILE_IND_OVR],
      x.[BANKRUPTCY_IND_OVR],
      x.[REPO_FCLS_IND_OVR],
      x.[DELQ_CRED_POL_CNT_OVR],
      x.[DEROG_OBLIG_CNT_OVR],
      x.[DEROG_OBLIG_AMT_OVR],
      x.[UNPAID_MED_AMT_OVR],
      x.[LENDER_CHGOFF_IND_OVR],
      x.[EXCL_DECIS_RSLT_OVR],
      x.[PROP_TYPE_IND_OVR],
      x.[STATE_IND_OVR],
      x.[LTV_VAL_OVR],
      x.[CLTV_VAL_OVR],
      x.[DTI_VAL_OVR],
      x.[LA_VAL_OVR],
      x.[CSCORE_VAL_OVR],
      x.[DEPTHOF_FILE_IND_ATT],
      x.[BANKRUPTCY_IND_ATT],
      x.[REPO_FCLS_IND_ATT],
      x.[DELQ_CRED_POL_CNT_ATT],
      x.[DEROG_OBLIG_CNT_ATT],
      x.[DEROG_OBLIG_AMT_ATT],
      x.[UNPAID_MED_AMT_ATT],
      x.[LENDER_CHGOFF_IND_ATT],
      x.[EXCL_DECIS_RSLT_ATT],
      x.[PROP_TYPE_IND_ATT],
      x.[STATE_IND_ATT],
      x.[LTV_VAL_ATT],
      x.[CLTV_VAL_ATT],
      x.[DTI_VAL_ATT],
      x.[LA_VAL_ATT],
      x.[CSCORE_VAL_ATT],
      x.[TRDNBR_OPEN_OVR],
      x.[TRDMOS_OLD_OVR],
      x.[BKANY_CNT_OVR],
      x.[BKANYMOS_NEW_OVR],
      x.[REPO_CNT_OVR],
      x.[FCLS_CNT_OVR],
      x.[COLMDUNP_AMT_OVR],
      x.[DELQ500_CNT_OVR],
      x.[DELQ306MOS_CNT_OVR],
      x.[DELQ6012MOS_CNT_OVR],
      x.[DELQ90P24MOS_CNT_OVR],
      x.[COFUNP500_CNT_OVR],
      x.[JUDUNP500_CNT_OVR],
      x.[TAXUNP500_CNT_OVR],
      x.[COLNMDUNP500_CNT_OVR],
      x.[COFUNP500_AMT_OVR],
      x.[JUDUNP500_AMT_OVR],
      x.[TAXUNP500_AMT_OVR],
      x.[COLNMDUNP500_AMT_OVR],
      x.[THINLIMIT_IND_ATT],
      x.[THINLIMIT_IND_SRC],
      x.[THINLIMIT_IND_OVR],
      x.[TIERLIMIT_IND_ATT],
      x.[TIERLIMIT_IND_SRC],
      x.[TIERLIMIT_IND_OVR],
      x.[THRESHOLD_IND_ATT],
      x.[THRESHOLD_IND_SRC],
      x.[THRESHOLD_IND_OVR],
      x.[PTI_VAL_ATT],
      x.[PTI_VAL_SRC],
      x.[PTI_VAL_OVR],
      x.[CREDIT_TIER_ATT],
      x.[CREDIT_TIER_SRC],
      x.[CREDIT_TIER_OVR],
      x.[PRIM_BORR_DECS_ATT],
      x.[PRIM_BORR_DECS_SRC],
      x.[PRIM_BORR_DECS_OVR],
      x.[CO_BORR_DECS_ATT],
      x.[CO_BORR_DECS_SRC],
      x.[CO_BORR_DECS_OVR],
      x.[PRI_BOR_TRD_DESC_ATT],
      x.[PRI_BOR_TRD_DESC_SRC],
      x.[PRI_BOR_TRD_DESC_OVR],
      x.[CO_BOR_TRD_DESC_ATT],
      x.[CO_BOR_TRD_DESC_SRC],
      x.[CO_BOR_TRD_DESC_OVR],
      x.[PRI_BOR_BK_DESC_ATT],
      x.[PRI_BOR_BK_DESC_SRC],
      x.[PRI_BOR_BK_DESC_OVR],
      x.[CO_BOR_BK_DESC_ATT],
      x.[CO_BOR_BK_DESC_SRC],
      x.[CO_BOR_BK_DESC_OVR],
      x.[PRI_BOR_TRD_AGE_DESC_ATT],
      x.[PRI_BOR_TRD_AGE_DESC_SRC],
      x.[PRI_BOR_TRD_AGE_DESC_OVR],
      x.[PRI_BOR_TIRE_SCORE_ATT],
      x.[PRI_BOR_TIRE_SCORE_SRC],
      x.[PRI_BOR_TIRE_SCORE_OVR],
      x.[DTI_SCORE_ATT],
      x.[DTI_SCORE_SRC],
      x.[DTI_SCORE_OVR],
      x.[LOAN_TRM_RULE_DECS_ATT],
      x.[LOAN_TRM_RULE_DECS_SRC],
      x.[LOAN_TRM_RULE_DECS_OVR],
      x.[LOAN_FACTOR_DECS_ATT],
      x.[LOAN_FACTOR_DECS_SRC],
      x.[LOAN_FACTOR_DECS_OVR],
      x.[PRI_BOR_NO_OF_TRDS_OVR],
      x.[CO_BOR_NO_OF_TRDS_OVR],
      x.[PRI_BOR_IS_MEM_OVR],
      x.[CO_BOR_IS_MEM_OVR],
      x.[PRI_BOR_BK_SCR_OVR],
      x.[CO_BOR_BK_SCR_OVR],
      x.[PRI_BOR_MEM_MNTH_OVR],
      x.[CO_BOR_MEM_MNTH_OVR],
      x.[PRI_BOR_OLD_TRD_AGE_OVR],
      x.[CO_BOR_OLD_TRD_AGE_OVR],
      x.[COLLAT_VEHICLE_AGE_OVR],
      x.[LOAN_ELIGIBILITY_ATT],
      x.[LOAN_ELIGIBILITY_SRC],
      x.[LOAN_ELIGIBILITY_OVR],
      x.[COLLATERAL_ATT],
      x.[COLLATERAL_SRC],
      x.[COLLATERAL_OVR]
   FROM [clt_NetO].[WG_SC_ATTRIBUTES] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;
