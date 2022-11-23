-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_pii].[VwGF_TLB_EX_RES_TRENDS_SUM]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[BNUM] AS [BNUM],
      x.[DBID] AS [DBID],
      x.[RESPONSEID] AS [RESPONSEID],
      x.[CREDITRESPONSEID] AS [CREDITRESPONSEID],
      x.[VARIATION_IND] AS [VARIATION_IND],
      x.[MONTH_IND] AS [MONTH_IND],
      x.[REVOLVE_BAL_TTL] AS [REVOLVE_BAL_TTL],
      x.[REVOLVE_BAL_AVG] AS [REVOLVE_BAL_AVG],
      x.[PERCENT_UTILIZED] AS [PERCENT_UTILIZED],
      x.[BANK_NAT_CARDS] AS [BANK_NAT_CARDS],
      x.[RETAIL_CARDS] AS [RETAIL_CARDS],
      x.[CARD_WITH_BALANCE] AS [CARD_WITH_BALANCE]
   FROM [clt_NetO].[GF_TLB_EX_RES_TRENDS_SUM] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
