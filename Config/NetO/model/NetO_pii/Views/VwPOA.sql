-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_pii].[VwPOA]
AS
   SELECT
      x.[LNUM],
      x.[BNUM],
      x.[DBID],
      x.[POADBID],
      x.[POASN],
      x.[POA_SIGN_NAME],
      x.[POA_TITLE],
      x.[POA_CAPACITY],
      x.[POA_DESC_TEXT],
      x.[POA_EMAIL],
      x.[POA_TELEPHONE],
      x.[POA_MOBILE]
   FROM [clt_NetO].[POA] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
