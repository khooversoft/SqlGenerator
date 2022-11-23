-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_restricted].[VwGF_TL_PORTAL]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[PORTAL_LNUM] AS [PORTAL_LNUM],
      x.[PORTAL_SOURCE] AS [PORTAL_SOURCE],
      x.[PORTAL_VENDER] AS [PORTAL_VENDER],
      x.[PORTAL_VERSION] AS [PORTAL_VERSION],
      x.[PORTAL_DEALER] AS [PORTAL_DEALER]
   FROM [clt_NetO].[GF_TL_PORTAL] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
