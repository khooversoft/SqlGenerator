-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_restricted].[VwGF_TLBC_TU_RES_PUB_REC]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[BNUM] AS [BNUM],
      x.[DBID] AS [DBID],
      x.[ROWCOUNTER] AS [ROWCOUNTER],
      x.[RESPONSEID] AS [RESPONSEID],
      x.[CREDITRESPONSEID] AS [CREDITRESPONSEID],
      x.[FILED_DT] AS [FILED_DT],
      x.[ASSETS] AS [ASSETS],
      x.[PLAINTIFF] AS [PLAINTIFF],
      x.[ECOA] AS [ECOA],
      x.[INDUSTRY_CODE] AS [INDUSTRY_CODE],
      x.[MEMBER_CODE] AS [MEMBER_CODE],
      x.[PR_TYPE] AS [PR_TYPE],
      x.[DOCKET_NUMBER] AS [DOCKET_NUMBER],
      x.[ATTORNEY] AS [ATTORNEY],
      x.[REPORTED_DT] AS [REPORTED_DT],
      x.[PAID_DT] AS [PAID_DT],
      x.[LIABILITIES_AMOUNT] AS [LIABILITIES_AMOUNT],
      x.[ORIGINAL_BALANCE] AS [ORIGINAL_BALANCE],
      HASHBYTES('SHA2_256', CAST(x.[CURRENT_BALANCE] AS NVARCHAR(50))) AS [CURRENT_BALANCE],
      x.[PR_SOURCE_CODE] AS [PR_SOURCE_CODE],
      x.[SOURCE_CITY] AS [SOURCE_CITY],
      x.[SOURCE_STATE] AS [SOURCE_STATE]
   FROM [clt_NetO].[GF_TLBC_TU_RES_PUB_REC] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
