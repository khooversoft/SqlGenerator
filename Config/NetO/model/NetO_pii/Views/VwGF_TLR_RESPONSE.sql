-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_pii].[VwGF_TLR_RESPONSE]
AS
   SELECT
      x.[LNUM],
      x.[RESPONSEID],
      x.[DBID],
      x.[INTERNAL_ACCOUNT],
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
