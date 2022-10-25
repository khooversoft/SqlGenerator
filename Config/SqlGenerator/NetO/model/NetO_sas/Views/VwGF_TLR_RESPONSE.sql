-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas].[VwGF_TLR_RESPONSE]
AS
   SELECT
      x.[LNUM],
      x.[RESPONSEID],
      x.[DBID],
      HASHBYTES('SHA2_256', x.[INTERNAL_ACCOUNT]) AS [INTERNAL_ACCOUNT],
      x.[TIMESTAMP],
      x.[DISPLAYFORLOAN],
      x.[CONTEXTNAME],
      x.[REQUESTID],
      x.[VENDOR_NAME]
   FROM [clt_NetO].[GF_TLR_RESPONSE] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;
