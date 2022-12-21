-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO].[VwVESTING]
AS
   SELECT
      x.[LNUM],
      x.[VDBID],
      HASHBYTES('SHA2_256', CAST(x.[VSN] AS NVARCHAR(50))) AS [VSN],
      x.[STATUS],
      x.[MANUAL]
   FROM [clt_NetO].[VESTING] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
