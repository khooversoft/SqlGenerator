-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_restricted].[VwFIELD_HISTORY]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[PKFIX] AS [PKFIX],
      x.[FLDNAME] AS [FLDNAME],
      x.[USRID] AS [USRID],
      x.[MODIFY_DATE] AS [MODIFY_DATE],
      x.[TEXT_VALUE] AS [TEXT_VALUE],
      x.[P_TEXT_VALUE] AS [P_TEXT_VALUE]
   FROM [clt_NetO].[FIELD_HISTORY] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
