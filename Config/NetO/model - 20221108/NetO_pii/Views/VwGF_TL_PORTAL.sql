-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_pii].[VwGF_TL_PORTAL]
AS
   SELECT
      x.[LNUM],
      x.[PORTAL_LNUM],
      x.[PORTAL_SOURCE],
      x.[PORTAL_VENDER],
      x.[PORTAL_VERSION],
      x.[PORTAL_DEALER]
   FROM [clt_NetO].[GF_TL_PORTAL] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;
