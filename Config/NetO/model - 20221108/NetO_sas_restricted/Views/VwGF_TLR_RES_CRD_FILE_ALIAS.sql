-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_restricted].[VwGF_TLR_RES_CRD_FILE_ALIAS]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[DBID] AS [DBID],
      x.[RESPONSEID] AS [RESPONSEID],
      x.[CREDITRESPONSEID] AS [CREDITRESPONSEID],
      x.[CREDITFILEID] AS [CREDITFILEID],
      x.[BORROWER_ID] AS [BORROWER_ID],
      x.[ALIAS_ID] AS [ALIAS_ID],
      HASHBYTES('SHA2_256', x.[FIRSTNAME]) AS [FIRSTNAME],
      HASHBYTES('SHA2_256', x.[MIDDLENAME]) AS [MIDDLENAME],
      HASHBYTES('SHA2_256', x.[LASTNAME]) AS [LASTNAME],
      x.[NAMESUFFIX] AS [NAMESUFFIX],
      x.[UNPARSEDNAME] AS [UNPARSEDNAME]
   FROM [clt_NetO].[GF_TLR_RES_CRD_FILE_ALIAS] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;
