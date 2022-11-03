-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_pii].[VwPOA]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[BNUM] AS [BNUM],
      x.[DBID] AS [DBID],
      x.[POADBID] AS [POADBID],
      x.[POASN] AS [POASN],
      x.[POA_SIGN_NAME] AS [POA_SIGN_NAME],
      x.[POA_TITLE] AS [POA_TITLE],
      x.[POA_CAPACITY] AS [POA_CAPACITY],
      x.[POA_DESC_TEXT] AS [POA_DESC_TEXT],
      x.[POA_EMAIL] AS [POA_EMAIL],
      x.[POA_TELEPHONE] AS [POA_TELEPHONE],
      x.[POA_MOBILE] AS [POA_MOBILE]
   FROM [clt_NetO].[POA] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;
