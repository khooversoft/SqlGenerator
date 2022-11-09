-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas].[VwMISC1003]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[APPNUM] AS [APPNUM],
      x.[OTHINCM] AS [OTHINCM],
      x.[COMMUNTY] AS [COMMUNTY],
      x.[JOINTLY] AS [JOINTLY],
      x.[PROF_MERGE_BWRS] AS [PROF_MERGE_BWRS]
   FROM [clt_NetO].[MISC1003] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;
