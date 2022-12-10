-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_pii].[VwWG_TLR_RECORDING_INFO]
AS
   SELECT
      x.[LNUM],
      x.[DBID],
      x.[ROWSERIALNO],
      x.[REOCNTR],
      x.[RECORDING_DATE],
      x.[DOCUMENT_TYPE],
      A0.[Descript] AS [DOCUMENT_TYPE_X],
      x.[DOCUMENT_NUMBER],
      x.[DOC_TYPE_OTHER_DESC],
      x.[JURISDICTION_NAME],
      x.[JURISDICTION_TYPE],
      A1.[Descript] AS [JURISDICTION_TYPE_X],
      x.[JUDICIAL_DISTRICT],
      x.[RECORDING_DISTRICT],
      x.[BOOK_TYPE],
      A2.[Descript] AS [BOOK_TYPE_X],
      x.[BOOK_NUMBER],
      x.[INSTRUMENT_NUMBER],
      x.[RECORDING_OFFICE],
      x.[RECORDING_STATE],
      x.[RECORDING_COUNTY],
      x.[PAGE_NUMBER],
      x.[VOLUME_NUMBER],
      x.[RECORDING_CITY]
   FROM [clt_NetO].[WG_TLR_RECORDING_INFO] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.[DOCUMENT_TYPE] = A0.[DBSYMBOL] AND A0.[TableName] = 'WG_TLR_RECORDING_INFO' and A0.[COLUMNNAME] = 'DOCUMENT_TYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A1 on x.[JURISDICTION_TYPE] = A1.[DBSYMBOL] AND A1.[TableName] = 'WG_TLR_RECORDING_INFO' and A1.[COLUMNNAME] = 'JURISDICTION_TYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A2 on x.[BOOK_TYPE] = A2.[DBSYMBOL] AND A2.[TableName] = 'WG_TLR_RECORDING_INFO' and A2.[COLUMNNAME] = 'BOOK_TYPE'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
