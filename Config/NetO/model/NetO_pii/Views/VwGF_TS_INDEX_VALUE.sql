-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_pii].[VwGF_TS_INDEX_VALUE]
AS
   SELECT
      x.[S_INDEX],
      A0.Descript AS [S_INDEX_Description],
      x.[INDEX_ID],
      x.[EFFECTIVE_DATE],
      x.[INDEX_VALUE]
   FROM [clt_NetO].[GF_TS_INDEX_VALUE] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.S_INDEX = A0.DBSYMBOL AND A0.[TableName] = 'GF_TS_INDEX_VALUE' and A0.[COLUMNNAME] = 'S_INDEX'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
   ;
