-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_creditScore].[VwGF_TLB_EQ_RES_SUMMARY]
AS
   SELECT
      x.[LNUM],
      x.[BNUM],
      x.[DBID],
      x.[RESPONSEID],
      HASHBYTES('SHA2_256', CAST(x.[CREDITRESPONSEID] AS NVARCHAR(50))) AS [CREDITRESPONSEID],
      x.[BEGIN_DT],
      x.[END_DT],
      x.[PR_SEG_NUM],
      x.[COLL_SEG_NUM],
      HASHBYTES('SHA2_256', CAST(x.[LOW_HIGH_CRED_AMT] AS NVARCHAR(50))) AS [LOW_HIGH_CRED_AMT],
      HASHBYTES('SHA2_256', CAST(x.[HIGH_HIGH_CRED_AMT] AS NVARCHAR(50))) AS [HIGH_HIGH_CRED_AMT],
      x.[ACCTS_NUM],
      x.[MOP_RT_ONES_NUM],
      x.[MOP_RT_SIXES_NUM],
      x.[MOP_RT_TWOS_NUM],
      x.[MOP_RT_SEVENS_NUM],
      x.[MOP_RT_THREES_NUM],
      x.[MOP_RT_EIGHTS_NUM],
      x.[MOP_RT_FOURS_NUM],
      x.[MOP_RT_NINES_NUM],
      x.[MOP_RT_FIVES_NUM],
      x.[MOP_RT_OTHERS_NUM],
      x.[HIST_RT_TWOS_NUM],
      x.[HIST_RT_SEVENS_NUM],
      x.[HIST_RT_THREES_NUM],
      x.[HIST_RT_EIGHTS_NUM],
      x.[HIST_RT_FOURS_NUM],
      x.[HIST_RT_NINES_NUM],
      x.[HIST_RT_FIVES_NUM],
      x.[HIST_RT_SIXES_NUM],
      x.[INQUIRY_ALERT_IND],
      x.[INQUIRY_NUM],
      x.[SINCE_DT]
   FROM [clt_NetO].[GF_TLB_EQ_RES_SUMMARY] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
