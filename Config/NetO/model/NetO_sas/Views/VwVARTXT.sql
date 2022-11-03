-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas].[VwVARTXT]
AS
   SELECT
      x.[DBID] AS [DBID],
      x.[SERIALNO] AS [SERIALNO],
      x.[SEQNO] AS [SEQNO],
      x.[TEXTSEG] AS [TEXTSEG],
      x.[LNUM] AS [LNUM]
   FROM [clt_NetO].[VARTXT] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;
