-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO].[VwPREDCTRS]
AS
   SELECT
      x.[LNUM],
      x.[BNUM],
      x.[DBID],
      x.[SOURCE],
      HASHBYTES('SHA2_256', x.[NAME]) AS [NAME],
      x.[CTR],
      x.[CQOPER],
      x.[ORGORRES],
      x.[SCORES],
      x.[FACTORS],
      x.[EXCLUSION],
      x.[RECORD_CREATED]
   FROM [clt_NetO].[PREDCTRS] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
