-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_restricted].[VwGF_TLR_RESPONSE]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[RESPONSEID] AS [RESPONSEID],
      x.[DBID] AS [DBID],
      HASHBYTES('SHA2_256', x.[INTERNAL_ACCOUNT]) AS [INTERNAL_ACCOUNT],
      x.[TIMESTAMP] AS [TIMESTAMP],
      x.[DISPLAYFORLOAN] AS [DISPLAYFORLOAN],
      x.[CONTEXTNAME] AS [CONTEXTNAME],
      x.[REQUESTID] AS [REQUESTID],
      x.[VENDOR_NAME] AS [VENDOR_NAME]
   FROM [clt_NetO].[GF_TLR_RESPONSE] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;
