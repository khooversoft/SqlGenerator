-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_restricted].[VwGF_TLR_REQ_CREDIT_DATA]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[REQUESTID] AS [REQUESTID],
      x.[CREDITREQUESTID] AS [CREDITREQUESTID],
      x.[DATAID] AS [DATAID],
      x.[DBID] AS [DBID],
      x.[REPORT_IDENT] AS [REPORT_IDENT],
      x.[REPORT_PRODUCT_DESC] AS [REPORT_PRODUCT_DESC],
      x.[PRIMARY_BNUM] AS [PRIMARY_BNUM],
      x.[PRIMARY_DBID] AS [PRIMARY_DBID],
      x.[SECONDARY_BNUM] AS [SECONDARY_BNUM],
      x.[SECONDARY_DBID] AS [SECONDARY_DBID],
      x.[ACTION_TYPE] AS [ACTION_TYPE],
      A0.[Descript] AS [ACTION_TYPE_X],
      x.[ACTION_OTHER_DESC] AS [ACTION_OTHER_DESC],
      x.[REPORT_TYPE] AS [REPORT_TYPE],
      A1.[Descript] AS [REPORT_TYPE_X],
      x.[REPORT_OTHER_DESC] AS [REPORT_OTHER_DESC],
      x.[REPOSITORY_COUNT] AS [REPOSITORY_COUNT],
      x.[REQUEST_TYPE] AS [REQUEST_TYPE],
      A2.[Descript] AS [REQUEST_TYPE_X],
      x.[EQIFAX_INDC] AS [EQIFAX_INDC],
      x.[TRANSUNION_INDC] AS [TRANSUNION_INDC],
      x.[EXPERIAN_INDC] AS [EXPERIAN_INDC],
      x.[OTHER_REPOS] AS [OTHER_REPOS],
      x.[CREDIT_REQ_TYPE] AS [CREDIT_REQ_TYPE],
      x.[KROLL_REPORT_DATE] AS [KROLL_REPORT_DATE]
   FROM [clt_NetO].[GF_TLR_REQ_CREDIT_DATA] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.[ACTION_TYPE] = A0.[DBSYMBOL] AND A0.[TableName] = 'GF_TLR_REQ_CREDIT_DATA' and A0.[COLUMNNAME] = 'ACTION_TYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A1 on x.[REPORT_TYPE] = A1.[DBSYMBOL] AND A1.[TableName] = 'GF_TLR_REQ_CREDIT_DATA' and A1.[COLUMNNAME] = 'REPORT_TYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A2 on x.[REQUEST_TYPE] = A2.[DBSYMBOL] AND A2.[TableName] = 'GF_TLR_REQ_CREDIT_DATA' and A2.[COLUMNNAME] = 'REQUEST_TYPE'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
