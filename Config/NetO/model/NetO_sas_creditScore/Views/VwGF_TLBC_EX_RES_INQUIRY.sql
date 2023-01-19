-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_creditScore].[VwGF_TLBC_EX_RES_INQUIRY]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[BNUM] AS [BNUM],
      x.[DBID] AS [DBID],
      x.[ROWCOUNTER] AS [ROWCOUNTER],
      x.[RESPONSEID] AS [RESPONSEID],
      HASHBYTES('SHA2_256', CAST(x.[CREDITRESPONSEID] AS NVARCHAR(50))) AS [CREDITRESPONSEID],
      x.[ACCT_TYPE] AS [ACCT_TYPE],
      HASHBYTES('SHA2_256', x.[SUBSCRIBER_NAME]) AS [SUBSCRIBER_NAME],
      x.[INQUIRY_DT] AS [INQUIRY_DT],
      x.[AMOUNT] AS [AMOUNT],
      x.[TERMS] AS [TERMS],
      HASHBYTES('SHA2_256', x.[ACCT_NUM]) AS [ACCT_NUM],
      x.[SUBCODE] AS [SUBCODE],
      x.[KOB] AS [KOB]
   FROM [clt_NetO].[GF_TLBC_EX_RES_INQUIRY] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
