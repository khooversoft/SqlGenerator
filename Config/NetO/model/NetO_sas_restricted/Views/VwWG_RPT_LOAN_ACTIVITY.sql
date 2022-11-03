-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_restricted].[VwWG_RPT_LOAN_ACTIVITY]
AS
   SELECT
      x.[LNUM],
      x.[S_LOAN_ACTIVITY],
      x.[LOAN_ACTIVITY],
      x.[INITIAL_DATE],
      x.[LAST_DATE]
   FROM [clt_NetO].[WG_RPT_LOAN_ACTIVITY] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;
