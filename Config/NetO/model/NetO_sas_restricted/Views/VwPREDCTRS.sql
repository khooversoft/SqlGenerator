-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_restricted].[VwPREDCTRS]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[BNUM] AS [BNUM],
      x.[DBID] AS [DBID],
      x.[SOURCE] AS [SOURCE],
      HASHBYTES('SHA2_256', x.[NAME]) AS [NAME],
      x.[CTR] AS [CTR],
      x.[CQOPER] AS [CQOPER],
      x.[ORGORRES] AS [ORGORRES],
      HASHBYTES('SHA2_256', x.[SCORES]) AS [SCORES],
      x.[FACTORS] AS [FACTORS],
      x.[EXCLUSION] AS [EXCLUSION],
      x.[RECORD_CREATED] AS [RECORD_CREATED]
   FROM [clt_NetO].[PREDCTRS] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
