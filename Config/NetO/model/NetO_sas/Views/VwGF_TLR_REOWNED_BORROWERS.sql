-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas].[VwGF_TLR_REOWNED_BORROWERS]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[BNUM] AS [BNUM],
      x.[DBID] AS [DBID],
      x.[REOCNTR] AS [REOCNTR],
      x.[REL_DBID] AS [REL_DBID],
      x.[REL_BNUM] AS [REL_BNUM]
   FROM [clt_NetO].[GF_TLR_REOWNED_BORROWERS] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
