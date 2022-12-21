-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_restricted].[VwGF_TLR_RES_CRD_FILE_ALIAS]
AS
   SELECT
      x.[LNUM],
      x.[DBID],
      x.[RESPONSEID],
      HASHBYTES('SHA2_256', CAST(x.[CREDITRESPONSEID] AS NVARCHAR(50))) AS [CREDITRESPONSEID],
      HASHBYTES('SHA2_256', x.[CREDITFILEID]) AS [CREDITFILEID],
      HASHBYTES('SHA2_256', x.[BORROWER_ID]) AS [BORROWER_ID],
      HASHBYTES('SHA2_256', CAST(x.[ALIAS_ID] AS NVARCHAR(50))) AS [ALIAS_ID],
      HASHBYTES('SHA2_256', x.[FIRSTNAME]) AS [FIRSTNAME],
      HASHBYTES('SHA2_256', x.[MIDDLENAME]) AS [MIDDLENAME],
      HASHBYTES('SHA2_256', x.[LASTNAME]) AS [LASTNAME],
      HASHBYTES('SHA2_256', x.[NAMESUFFIX]) AS [NAMESUFFIX],
      x.[UNPARSEDNAME]
   FROM [clt_NetO].[GF_TLR_RES_CRD_FILE_ALIAS] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
