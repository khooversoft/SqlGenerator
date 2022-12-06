-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_pii].[VwDTLTRAN]
AS
   SELECT
      x.[LNUM],
      x.[DBID],
      x.[TRANCTR],
      x.[S_TRAN],
      A0.Descript AS [TRAN],
      x.[TRANDESC],
      x.[TRANAMT],
      x.[OTHERAMT],
      x.[S_PURCH_CREDIT_TYPE],
      A1.Descript AS [PURCH_CREDIT_TYPE],
      x.[S_PURCH_SOURCE_TYPE],
      A2.Descript AS [PURCH_SOURCE_TYPE],
      x.[OTHERPURCHCREDTYPEDESC],
      x.[OTHERPURCHSRCTYPEDESC],
      x.[MANUALAMT],
      x.[FEEAMT],
      x.[RECORD_CREATED],
      x.[USE_BY_SYSTEM],
      x.[BUILDER_EARNEST_CREDIT],
      x.[EXCLOTHCREDPREP],
      x.[POSTCLOSE_TOLERANCECURE]
   FROM [clt_NetO].[DTLTRAN] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.S_TRAN = A0.[DBSYMBOL] AND A0.[TableName] = 'DTLTRAN' and A0.[COLUMNNAME] = 'S_TRAN'
      LEFT JOIN [clt_NetO].[SymbolLookup] A1 on x.S_PURCH_CREDIT_TYPE = A1.[DBSYMBOL] AND A1.[TableName] = 'DTLTRAN' and A1.[COLUMNNAME] = 'S_PURCH_CREDIT_TYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A2 on x.S_PURCH_SOURCE_TYPE = A2.[DBSYMBOL] AND A2.[TableName] = 'DTLTRAN' and A2.[COLUMNNAME] = 'S_PURCH_SOURCE_TYPE'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
