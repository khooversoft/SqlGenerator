-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_restricted].[VwVARTXT]
AS
   SELECT
      x.[DBID],
      HASHBYTES('SHA2_256', CAST(x.[SERIALNO] AS NVARCHAR(50))) AS [SERIALNO],
      x.[SEQNO],
      x.[TEXTSEG],
      x.[LNUM]
   FROM [clt_NetO].[VARTXT] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
