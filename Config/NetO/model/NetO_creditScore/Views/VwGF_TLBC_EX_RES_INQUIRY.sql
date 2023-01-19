-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_creditScore].[VwGF_TLBC_EX_RES_INQUIRY]
AS
   SELECT
      x.[LNUM],
      x.[BNUM],
      x.[DBID],
      x.[ROWCOUNTER],
      x.[RESPONSEID],
      HASHBYTES('SHA2_256', CAST(x.[CREDITRESPONSEID] AS NVARCHAR(50))) AS [CREDITRESPONSEID],
      x.[ACCT_TYPE],
      HASHBYTES('SHA2_256', x.[SUBSCRIBER_NAME]) AS [SUBSCRIBER_NAME],
      x.[INQUIRY_DT],
      x.[AMOUNT],
      x.[TERMS],
      HASHBYTES('SHA2_256', x.[ACCT_NUM]) AS [ACCT_NUM],
      x.[SUBCODE],
      x.[KOB]
   FROM [clt_NetO].[GF_TLBC_EX_RES_INQUIRY] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
