-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_restricted].[VwGF_TLBC_TU_RES_PUB_REC]
AS
   SELECT
      x.[LNUM],
      x.[BNUM],
      x.[DBID],
      x.[ROWCOUNTER],
      x.[RESPONSEID],
      HASHBYTES('SHA2_256', CAST(x.[CREDITRESPONSEID] AS NVARCHAR(50))) AS [CREDITRESPONSEID],
      x.[FILED_DT],
      x.[ASSETS],
      x.[PLAINTIFF],
      x.[ECOA],
      x.[INDUSTRY_CODE],
      x.[MEMBER_CODE],
      x.[PR_TYPE],
      HASHBYTES('SHA2_256', x.[DOCKET_NUMBER]) AS [DOCKET_NUMBER],
      x.[ATTORNEY],
      x.[REPORTED_DT],
      x.[PAID_DT],
      x.[LIABILITIES_AMOUNT],
      x.[ORIGINAL_BALANCE],
      HASHBYTES('SHA2_256', CAST(x.[CURRENT_BALANCE] AS NVARCHAR(50))) AS [CURRENT_BALANCE],
      x.[PR_SOURCE_CODE],
      x.[SOURCE_CITY],
      HASHBYTES('SHA2_256', x.[SOURCE_STATE]) AS [SOURCE_STATE]
   FROM [clt_NetO].[GF_TLBC_TU_RES_PUB_REC] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
