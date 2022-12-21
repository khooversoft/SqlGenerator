-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO].[VwGF_TLR_REOWNED_BORROWERS]
AS
   SELECT
      x.[LNUM],
      x.[BNUM],
      x.[DBID],
      HASHBYTES('SHA2_256', CAST(x.[REOCNTR] AS NVARCHAR(50))) AS [REOCNTR],
      x.[REL_DBID],
      x.[REL_BNUM]
   FROM [clt_NetO].[GF_TLR_REOWNED_BORROWERS] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
