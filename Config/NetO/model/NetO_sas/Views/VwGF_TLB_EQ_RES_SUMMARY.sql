-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas].[VwGF_TLB_EQ_RES_SUMMARY]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[BNUM] AS [BNUM],
      x.[DBID] AS [DBID],
      x.[RESPONSEID] AS [RESPONSEID],
      x.[CREDITRESPONSEID] AS [CREDITRESPONSEID],
      x.[BEGIN_DT] AS [BEGIN_DT],
      x.[END_DT] AS [END_DT],
      x.[PR_SEG_NUM] AS [PR_SEG_NUM],
      x.[COLL_SEG_NUM] AS [COLL_SEG_NUM],
      x.[LOW_HIGH_CRED_AMT] AS [LOW_HIGH_CRED_AMT],
      x.[HIGH_HIGH_CRED_AMT] AS [HIGH_HIGH_CRED_AMT],
      x.[ACCTS_NUM] AS [ACCTS_NUM],
      x.[MOP_RT_ONES_NUM] AS [MOP_RT_ONES_NUM],
      x.[MOP_RT_SIXES_NUM] AS [MOP_RT_SIXES_NUM],
      x.[MOP_RT_TWOS_NUM] AS [MOP_RT_TWOS_NUM],
      x.[MOP_RT_SEVENS_NUM] AS [MOP_RT_SEVENS_NUM],
      x.[MOP_RT_THREES_NUM] AS [MOP_RT_THREES_NUM],
      x.[MOP_RT_EIGHTS_NUM] AS [MOP_RT_EIGHTS_NUM],
      x.[MOP_RT_FOURS_NUM] AS [MOP_RT_FOURS_NUM],
      x.[MOP_RT_NINES_NUM] AS [MOP_RT_NINES_NUM],
      x.[MOP_RT_FIVES_NUM] AS [MOP_RT_FIVES_NUM],
      x.[MOP_RT_OTHERS_NUM] AS [MOP_RT_OTHERS_NUM],
      x.[HIST_RT_TWOS_NUM] AS [HIST_RT_TWOS_NUM],
      x.[HIST_RT_SEVENS_NUM] AS [HIST_RT_SEVENS_NUM],
      x.[HIST_RT_THREES_NUM] AS [HIST_RT_THREES_NUM],
      x.[HIST_RT_EIGHTS_NUM] AS [HIST_RT_EIGHTS_NUM],
      x.[HIST_RT_FOURS_NUM] AS [HIST_RT_FOURS_NUM],
      x.[HIST_RT_NINES_NUM] AS [HIST_RT_NINES_NUM],
      x.[HIST_RT_FIVES_NUM] AS [HIST_RT_FIVES_NUM],
      x.[HIST_RT_SIXES_NUM] AS [HIST_RT_SIXES_NUM],
      x.[INQUIRY_ALERT_IND] AS [INQUIRY_ALERT_IND],
      x.[INQUIRY_NUM] AS [INQUIRY_NUM],
      x.[SINCE_DT] AS [SINCE_DT]
   FROM [clt_NetO].[GF_TLB_EQ_RES_SUMMARY] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;
