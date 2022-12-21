-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas].[VwGF_TLBR_DEPENDENTS]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[BNUM] AS [BNUM],
      x.[DBID] AS [DBID],
      HASHBYTES('SHA2_256', CAST(x.[ROWSERIALNO] AS NVARCHAR(50))) AS [ROWSERIALNO],
      HASHBYTES('SHA2_256', x.[FIRST_NAME]) AS [FIRST_NAME],
      HASHBYTES('SHA2_256', x.[MIDDLE_NAME]) AS [MIDDLE_NAME],
      HASHBYTES('SHA2_256', x.[LAST_NAME]) AS [LAST_NAME],
      x.[AGE] AS [AGE],
      HASHBYTES('SHA2_256', x.[SSN]) AS [SSN],
      HASHBYTES('SHA2_256', CAST(x.[DOB] AS NVARCHAR(50))) AS [DOB]
   FROM [clt_NetO].[GF_TLBR_DEPENDENTS] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
