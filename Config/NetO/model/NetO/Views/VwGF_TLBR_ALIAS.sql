-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO].[VwGF_TLBR_ALIAS]
AS
   SELECT
      x.[LNUM],
      x.[BNUM],
      x.[DBID],
      HASHBYTES('SHA2_256', CAST(x.[ROWSERIALNO] AS NVARCHAR(50))) AS [ROWSERIALNO],
      HASHBYTES('SHA2_256', x.[FIRST_NAME]) AS [FIRST_NAME],
      HASHBYTES('SHA2_256', x.[MID_NAME]) AS [MID_NAME],
      HASHBYTES('SHA2_256', x.[LAST_NAME]) AS [LAST_NAME],
      x.[S_BORR_ALIAS],
      A0.[Descript] AS [S_BORR_ALIAS_X],
      HASHBYTES('SHA2_256', x.[NAME_SUFFIX]) AS [NAME_SUFFIX],
      HASHBYTES('SHA2_256', x.[ALIAS_TYPE_OTH_DESC]) AS [ALIAS_TYPE_OTH_DESC],
      HASHBYTES('SHA2_256', x.[CREDITORNAME]) AS [CREDITORNAME],
      HASHBYTES('SHA2_256', x.[ALIASACCTNUM]) AS [ALIASACCTNUM],
      x.[RECORD_CREATED]
   FROM [clt_NetO].[GF_TLBR_ALIAS] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.[S_BORR_ALIAS] = A0.[DBSYMBOL] AND A0.[TableName] = 'GF_TLBR_ALIAS' and A0.[COLUMNNAME] = 'S_BORR_ALIAS'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
