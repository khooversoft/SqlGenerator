-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO].[VwGF_TLR_SUBJPRP_INSURANCE]
AS
   SELECT
      x.[LNUM],
      x.[DBID],
      x.[ROWSERIALNO]
   FROM [clt_NetO].[GF_TLR_SUBJPRP_INSURANCE] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;
