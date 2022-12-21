-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_restricted].[VwPOA]
AS
   SELECT
      x.[LNUM],
      x.[BNUM],
      x.[DBID],
      x.[POADBID],
      HASHBYTES('SHA2_256', CAST(x.[POASN] AS NVARCHAR(50))) AS [POASN],
      HASHBYTES('SHA2_256', x.[POA_SIGN_NAME]) AS [POA_SIGN_NAME],
      HASHBYTES('SHA2_256', x.[POA_TITLE]) AS [POA_TITLE],
      x.[POA_CAPACITY],
      x.[POA_DESC_TEXT],
      HASHBYTES('SHA2_256', x.[POA_EMAIL]) AS [POA_EMAIL],
      HASHBYTES('SHA2_256', x.[POA_TELEPHONE]) AS [POA_TELEPHONE],
      HASHBYTES('SHA2_256', x.[POA_MOBILE]) AS [POA_MOBILE]
   FROM [clt_NetO].[POA] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
