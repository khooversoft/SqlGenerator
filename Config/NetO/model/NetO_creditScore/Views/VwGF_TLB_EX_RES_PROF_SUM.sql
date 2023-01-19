-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_creditScore].[VwGF_TLB_EX_RES_PROF_SUM]
AS
   SELECT
      x.[LNUM],
      x.[BNUM],
      x.[DBID],
      x.[RESPONSEID],
      HASHBYTES('SHA2_256', CAST(x.[CREDITRESPONSEID] AS NVARCHAR(50))) AS [CREDITRESPONSEID],
      x.[DISPUTED_ACCTS_EXCLUDED],
      x.[PUB_REC_NUM],
      x.[INSTALLMENT_AMT],
      x.[REAL_ESTATE_AMT],
      x.[REVOLVING_AMT],
      x.[PAST_DUE_AMT],
      x.[MONTHLY_PMT],
      x.[MONTHLY_PMT_PART_FLAG],
      x.[REAL_ESTATE_PMT],
      x.[RE_PMT_PART_FLAG],
      x.[REVOLVE_AVAIL_PCT],
      x.[REVOLVE_AVAIL_PART_FLAG],
      x.[INQUIRIES_TTL],
      x.[INQUIRIES_LAST_6_MOS],
      x.[TRADE_ITEMS_TTL],
      x.[PAID_ACCTS],
      x.[SATISFACTORY_ACCTS],
      x.[NOW_DELINQUENT],
      x.[WAS_DELINQUENT],
      x.[OLDEST_TRADE_OPEN_DT],
      HASHBYTES('SHA2_256', CAST(x.[DELINQUENCIES_30_DAYS] AS NVARCHAR(50))) AS [DELINQUENCIES_30_DAYS],
      HASHBYTES('SHA2_256', CAST(x.[DELINQUENCIES_60_DAYS] AS NVARCHAR(50))) AS [DELINQUENCIES_60_DAYS],
      HASHBYTES('SHA2_256', CAST(x.[DELINQUENCIES_90_DAYS] AS NVARCHAR(50))) AS [DELINQUENCIES_90_DAYS],
      HASHBYTES('SHA2_256', CAST(x.[DEROG_COUNTER] AS NVARCHAR(50))) AS [DEROG_COUNTER]
   FROM [clt_NetO].[GF_TLB_EX_RES_PROF_SUM] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;