-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_restricted].[VwGF_TLR_REQ_CREDIT_DATA]
AS
   SELECT
      x.[LNUM],
      x.[REQUESTID],
      HASHBYTES('SHA2_256', CAST(x.[CREDITREQUESTID] AS NVARCHAR(50))) AS [CREDITREQUESTID],
      x.[DATAID],
      x.[DBID],
      x.[REPORT_IDENT],
      x.[REPORT_PRODUCT_DESC],
      x.[PRIMARY_BNUM],
      x.[PRIMARY_DBID],
      x.[SECONDARY_BNUM],
      x.[SECONDARY_DBID],
      x.[ACTION_TYPE],
      A0.[Descript] AS [ACTION_TYPE_X],
      x.[ACTION_OTHER_DESC],
      x.[REPORT_TYPE],
      A1.[Descript] AS [REPORT_TYPE_X],
      x.[REPORT_OTHER_DESC],
      x.[REPOSITORY_COUNT],
      x.[REQUEST_TYPE],
      A2.[Descript] AS [REQUEST_TYPE_X],
      HASHBYTES('SHA2_256', x.[EQIFAX_INDC]) AS [EQIFAX_INDC],
      x.[TRANSUNION_INDC],
      x.[EXPERIAN_INDC],
      HASHBYTES('SHA2_256', x.[OTHER_REPOS]) AS [OTHER_REPOS],
      x.[CREDIT_REQ_TYPE],
      x.[KROLL_REPORT_DATE]
   FROM [clt_NetO].[GF_TLR_REQ_CREDIT_DATA] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.[ACTION_TYPE] = A0.[DBSYMBOL] AND A0.[TableName] = 'GF_TLR_REQ_CREDIT_DATA' and A0.[COLUMNNAME] = 'ACTION_TYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A1 on x.[REPORT_TYPE] = A1.[DBSYMBOL] AND A1.[TableName] = 'GF_TLR_REQ_CREDIT_DATA' and A1.[COLUMNNAME] = 'REPORT_TYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A2 on x.[REQUEST_TYPE] = A2.[DBSYMBOL] AND A2.[TableName] = 'GF_TLR_REQ_CREDIT_DATA' and A2.[COLUMNNAME] = 'REQUEST_TYPE'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
