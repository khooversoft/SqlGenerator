-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_pii].[VwMISC1003]
AS
   SELECT
      x.[LNUM],
      x.[APPNUM],
      x.[OTHINCM],
      x.[COMMUNTY],
      x.[JOINTLY],
      x.[PROF_MERGE_BWRS]
   FROM [clt_NetO].[MISC1003] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;
