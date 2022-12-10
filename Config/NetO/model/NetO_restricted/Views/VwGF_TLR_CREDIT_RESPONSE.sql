-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_restricted].[VwGF_TLR_CREDIT_RESPONSE]
AS
   SELECT
      x.[LNUM],
      x.[RESPONSEID],
      x.[CREDITRESPONSEID],
      x.[DBID],
      x.[VERSION_IDENT],
      x.[CREDIT_REPORT_IDENT],
      x.[FIRST_ISSUE_DATE],
      x.[LAST_UPDATE_DATE],
      x.[MERGE_TYPE],
      A0.[Descript] AS [MERGE_TYPE_X],
      x.[REPORT_TYPE],
      A1.[Descript] AS [REPORT_TYPE_X],
      x.[REPORT_TYPE_OTHER],
      x.[RATEING_CODE_TYPE],
      A2.[Descript] AS [RATEING_CODE_TYPE_X],
      x.[RATING_TYPE_OTHER],
      x.[EQUIFAX_INDC],
      x.[EXPERIAN_INDC],
      x.[TRANSUNION_INDC],
      x.[OTHER_REPOSITORY_NAME],
      x.[CREDITREPORTTRANSID],
      x.[CREDIT_RESP_IMPORT_XML]
   FROM [clt_NetO].[GF_TLR_CREDIT_RESPONSE] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.[MERGE_TYPE] = A0.[DBSYMBOL] AND A0.[TableName] = 'GF_TLR_CREDIT_RESPONSE' and A0.[COLUMNNAME] = 'MERGE_TYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A1 on x.[REPORT_TYPE] = A1.[DBSYMBOL] AND A1.[TableName] = 'GF_TLR_CREDIT_RESPONSE' and A1.[COLUMNNAME] = 'REPORT_TYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A2 on x.[RATEING_CODE_TYPE] = A2.[DBSYMBOL] AND A2.[TableName] = 'GF_TLR_CREDIT_RESPONSE' and A2.[COLUMNNAME] = 'RATEING_CODE_TYPE'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
