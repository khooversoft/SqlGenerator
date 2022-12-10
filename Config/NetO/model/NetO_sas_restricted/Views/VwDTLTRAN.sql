-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_restricted].[VwDTLTRAN]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[DBID] AS [DBID],
      x.[TRANCTR] AS [TRANCTR],
      x.[S_TRAN] AS [S_TRAN],
      A0.[Descript] AS [S_TRAN_X],
      x.[TRANDESC] AS [TRANDESC],
      x.[TRANAMT] AS [TRANAMT],
      x.[OTHERAMT] AS [OTHERAMT],
      x.[S_PURCH_CREDIT_TYPE] AS [S_PURCH_CREDIT_TYPE],
      A1.[Descript] AS [S_PURCH_CREDIT_TYPE_X],
      x.[S_PURCH_SOURCE_TYPE] AS [S_PURCH_SOURCE_TYPE],
      A2.[Descript] AS [S_PURCH_SOURCE_TYPE_X],
      x.[OTHERPURCHCREDTYPEDESC] AS [OTHERPURCHCREDTYPEDESC],
      x.[OTHERPURCHSRCTYPEDESC] AS [OTHERPURCHSRCTYPEDESC],
      x.[MANUALAMT] AS [MANUALAMT],
      x.[FEEAMT] AS [FEEAMT],
      x.[RECORD_CREATED] AS [RECORD_CREATED],
      x.[USE_BY_SYSTEM] AS [USE_BY_SYSTEM],
      x.[BUILDER_EARNEST_CREDIT] AS [BUILDER_EARNEST_CREDIT],
      x.[EXCLOTHCREDPREP] AS [EXCLOTHCREDPREP],
      x.[POSTCLOSE_TOLERANCECURE] AS [POSTCLOSE_TOLERANCECURE]
   FROM [clt_NetO].[DTLTRAN] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.[S_TRAN] = A0.[DBSYMBOL] AND A0.[TableName] = 'DTLTRAN' and A0.[COLUMNNAME] = 'S_TRAN'
      LEFT JOIN [clt_NetO].[SymbolLookup] A1 on x.[S_PURCH_CREDIT_TYPE] = A1.[DBSYMBOL] AND A1.[TableName] = 'DTLTRAN' and A1.[COLUMNNAME] = 'S_PURCH_CREDIT_TYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A2 on x.[S_PURCH_SOURCE_TYPE] = A2.[DBSYMBOL] AND A2.[TableName] = 'DTLTRAN' and A2.[COLUMNNAME] = 'S_PURCH_SOURCE_TYPE'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
