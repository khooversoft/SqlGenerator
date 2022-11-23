-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_pii].[VwGF_TS_AUDIT_LOAN_DELETE]
AS
   SELECT
      x.[DELETED_LNUM] AS [DELETED_LNUM],
      x.[USRID] AS [USRID],
      x.[DELETED_CLNUM] AS [DELETED_CLNUM],
      x.[ACTIVITY] AS [ACTIVITY],
      x.[TERMINAL] AS [TERMINAL],
      x.[OS_USER] AS [OS_USER],
      x.[DELETED_DATE] AS [DELETED_DATE]
   FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
;
