-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_restricted].[VwGF_TLBC_TU_RES_PUB_REC]
AS
   SELECT
      x.[LNUM],
      x.[BNUM],
      x.[DBID],
      x.[ROWCOUNTER],
      x.[RESPONSEID],
      x.[CREDITRESPONSEID],
      x.[FILED_DT],
      x.[ASSETS],
      x.[PLAINTIFF],
      x.[ECOA],
      x.[INDUSTRY_CODE],
      x.[MEMBER_CODE],
      x.[PR_TYPE],
      x.[DOCKET_NUMBER],
      x.[ATTORNEY],
      x.[REPORTED_DT],
      x.[PAID_DT],
      x.[LIABILITIES_AMOUNT],
      x.[ORIGINAL_BALANCE],
      HASHBYTES('SHA2_256', CAST(x.[CURRENT_BALANCE] AS NVARCHAR(50))) AS [CURRENT_BALANCE],
      x.[PR_SOURCE_CODE],
      x.[SOURCE_CITY],
      x.[SOURCE_STATE]
   FROM [clt_NetO].[GF_TLBC_TU_RES_PUB_REC] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;
