-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_creditScore].[VwVARTXT]
AS
   SELECT
      x.[DBID] AS [DBID],
      HASHBYTES('SHA2_256', CAST(x.[SERIALNO] AS NVARCHAR(50))) AS [SERIALNO],
      x.[SEQNO] AS [SEQNO],
      x.[TEXTSEG] AS [TEXTSEG],
      x.[LNUM] AS [LNUM]
   FROM [clt_NetO].[VARTXT] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
