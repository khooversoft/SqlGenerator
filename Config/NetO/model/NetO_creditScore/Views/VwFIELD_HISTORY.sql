-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_creditScore].[VwFIELD_HISTORY]
AS
   SELECT
      x.[LNUM],
      x.[PKFIX],
      x.[FLDNAME],
      x.[USRID],
      x.[MODIFY_DATE],
      x.[TEXT_VALUE],
      x.[P_TEXT_VALUE]
   FROM [clt_NetO].[FIELD_HISTORY] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
