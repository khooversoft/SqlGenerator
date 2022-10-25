-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_pii].[VwGF_TLB_EX_RES_TRENDS_SUM]
AS
   SELECT
      x.[LNUM],
      x.[BNUM],
      x.[DBID],
      x.[RESPONSEID],
      x.[CREDITRESPONSEID],
      x.[VARIATION_IND],
      x.[MONTH_IND],
      x.[REVOLVE_BAL_TTL],
      x.[REVOLVE_BAL_AVG],
      x.[PERCENT_UTILIZED],
      x.[BANK_NAT_CARDS],
      x.[RETAIL_CARDS],
      x.[CARD_WITH_BALANCE]
   FROM [clt_NetO].[GF_TLB_EX_RES_TRENDS_SUM] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;
