-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_restricted].[VwGF_TLB_EX_RES_PROF_SUM]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[BNUM] AS [BNUM],
      x.[DBID] AS [DBID],
      x.[RESPONSEID] AS [RESPONSEID],
      HASHBYTES('SHA2_256', CAST(x.[CREDITRESPONSEID] AS NVARCHAR(50))) AS [CREDITRESPONSEID],
      x.[DISPUTED_ACCTS_EXCLUDED] AS [DISPUTED_ACCTS_EXCLUDED],
      x.[PUB_REC_NUM] AS [PUB_REC_NUM],
      x.[INSTALLMENT_AMT] AS [INSTALLMENT_AMT],
      x.[REAL_ESTATE_AMT] AS [REAL_ESTATE_AMT],
      x.[REVOLVING_AMT] AS [REVOLVING_AMT],
      x.[PAST_DUE_AMT] AS [PAST_DUE_AMT],
      x.[MONTHLY_PMT] AS [MONTHLY_PMT],
      x.[MONTHLY_PMT_PART_FLAG] AS [MONTHLY_PMT_PART_FLAG],
      x.[REAL_ESTATE_PMT] AS [REAL_ESTATE_PMT],
      x.[RE_PMT_PART_FLAG] AS [RE_PMT_PART_FLAG],
      x.[REVOLVE_AVAIL_PCT] AS [REVOLVE_AVAIL_PCT],
      x.[REVOLVE_AVAIL_PART_FLAG] AS [REVOLVE_AVAIL_PART_FLAG],
      x.[INQUIRIES_TTL] AS [INQUIRIES_TTL],
      x.[INQUIRIES_LAST_6_MOS] AS [INQUIRIES_LAST_6_MOS],
      x.[TRADE_ITEMS_TTL] AS [TRADE_ITEMS_TTL],
      x.[PAID_ACCTS] AS [PAID_ACCTS],
      x.[SATISFACTORY_ACCTS] AS [SATISFACTORY_ACCTS],
      x.[NOW_DELINQUENT] AS [NOW_DELINQUENT],
      x.[WAS_DELINQUENT] AS [WAS_DELINQUENT],
      x.[OLDEST_TRADE_OPEN_DT] AS [OLDEST_TRADE_OPEN_DT],
      HASHBYTES('SHA2_256', CAST(x.[DELINQUENCIES_30_DAYS] AS NVARCHAR(50))) AS [DELINQUENCIES_30_DAYS],
      HASHBYTES('SHA2_256', CAST(x.[DELINQUENCIES_60_DAYS] AS NVARCHAR(50))) AS [DELINQUENCIES_60_DAYS],
      HASHBYTES('SHA2_256', CAST(x.[DELINQUENCIES_90_DAYS] AS NVARCHAR(50))) AS [DELINQUENCIES_90_DAYS],
      HASHBYTES('SHA2_256', CAST(x.[DEROG_COUNTER] AS NVARCHAR(50))) AS [DEROG_COUNTER]
   FROM [clt_NetO].[GF_TLB_EX_RES_PROF_SUM] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
