-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_pii].[VwVARTXT]
AS
   SELECT
      x.[DBID],
      x.[SERIALNO],
      x.[SEQNO],
      x.[TEXTSEG],
      x.[LNUM]
   FROM [clt_NetO].[VARTXT] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;
