-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_restricted].[VwGF_TS_AUDIT_LOAN_DELETE]
AS
   SELECT
      x.[DELETED_LNUM],
      x.[DELETED_CLNUM],
      x.[USRID],
      x.[ACTIVITY],
      x.[TERMINAL],
      x.[OS_USER],
      x.[DELETED_DATE]
   FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
   ;
