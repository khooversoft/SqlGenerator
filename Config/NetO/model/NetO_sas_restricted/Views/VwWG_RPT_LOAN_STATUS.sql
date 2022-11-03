-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_restricted].[VwWG_RPT_LOAN_STATUS]
AS
   SELECT
      x.[ROWCNTR] AS [ROWCNTR],
      x.[LNUM] AS [LNUM],
      x.[S_LOAN_STATUS] AS [S_LOAN_STATUS],
      x.[LOAN_STATUS] AS [LOAN_STATUS],
      x.[STATUS_DATE] AS [STATUS_DATE]
   FROM [clt_NetO].[WG_RPT_LOAN_STATUS] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;
