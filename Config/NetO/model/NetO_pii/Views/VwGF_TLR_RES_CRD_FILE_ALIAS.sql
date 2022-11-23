-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_pii].[VwGF_TLR_RES_CRD_FILE_ALIAS]
AS
   SELECT
      x.[LNUM],
      x.[DBID],
      x.[RESPONSEID],
      x.[CREDITRESPONSEID],
      x.[CREDITFILEID],
      x.[BORROWER_ID],
      x.[ALIAS_ID],
      x.[FIRSTNAME],
      x.[MIDDLENAME],
      x.[LASTNAME],
      x.[NAMESUFFIX],
      x.[UNPARSEDNAME]
   FROM [clt_NetO].[GF_TLR_RES_CRD_FILE_ALIAS] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
