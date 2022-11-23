-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_pii].[VwGF_TLBR_DEPENDENTS]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[BNUM] AS [BNUM],
      x.[DBID] AS [DBID],
      x.[ROWSERIALNO] AS [ROWSERIALNO],
      x.[FIRST_NAME] AS [FIRST_NAME],
      x.[MIDDLE_NAME] AS [MIDDLE_NAME],
      x.[LAST_NAME] AS [LAST_NAME],
      x.[AGE] AS [AGE],
      x.[SSN] AS [SSN],
      x.[DOB] AS [DOB]
   FROM [clt_NetO].[GF_TLBR_DEPENDENTS] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
