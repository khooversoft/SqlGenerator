-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas].[VwVESTING]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[VDBID] AS [VDBID],
      x.[VSN] AS [VSN],
      x.[STATUS] AS [STATUS],
      x.[MANUAL] AS [MANUAL]
   FROM [clt_NetO].[VESTING] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
