-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_pii].[VwGF_TLBR_CREDIT_SCORE]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[RESPONSEID] AS [RESPONSEID],
      x.[CREDITRESPONSEID] AS [CREDITRESPONSEID],
      x.[SCOREID] AS [SCOREID],
      x.[DBID] AS [DBID],
      x.[BORROWER_ID] AS [BORROWER_ID],
      x.[BNUM] AS [BNUM],
      x.[SOURCE_TYPE] AS [SOURCE_TYPE],
      A0.[Descript] AS [SOURCE_TYPE_X],
      x.[SCORE_DATE] AS [SCORE_DATE],
      x.[REASON_TYPE] AS [REASON_TYPE],
      A1.[Descript] AS [REASON_TYPE_X],
      x.[MODEL_TYPE] AS [MODEL_TYPE],
      A2.[Descript] AS [MODEL_TYPE_X],
      x.[OTHER_DESCRIPTION] AS [OTHER_DESCRIPTION],
      x.[SCORE_VALUE] AS [SCORE_VALUE],
      x.[CREDREPOSSRCTYPEOTHERDESC] AS [CREDREPOSSRCTYPEOTHERDESC],
      x.[FACTAINQUIRIESINDICATOR] AS [FACTAINQUIRIESINDICATOR],
      x.[RANK_PERCENTILE] AS [RANK_PERCENTILE]
   FROM [clt_NetO].[GF_TLBR_CREDIT_SCORE] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.[SOURCE_TYPE] = A0.[DBSYMBOL] AND A0.[TableName] = 'GF_TLBR_CREDIT_SCORE' and A0.[COLUMNNAME] = 'SOURCE_TYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A1 on x.[REASON_TYPE] = A1.[DBSYMBOL] AND A1.[TableName] = 'GF_TLBR_CREDIT_SCORE' and A1.[COLUMNNAME] = 'REASON_TYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A2 on x.[MODEL_TYPE] = A2.[DBSYMBOL] AND A2.[TableName] = 'GF_TLBR_CREDIT_SCORE' and A2.[COLUMNNAME] = 'MODEL_TYPE'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
