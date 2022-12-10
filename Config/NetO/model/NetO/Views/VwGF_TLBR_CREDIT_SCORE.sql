-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO].[VwGF_TLBR_CREDIT_SCORE]
AS
   SELECT
      x.[LNUM],
      x.[RESPONSEID],
      x.[CREDITRESPONSEID],
      x.[SCOREID],
      x.[DBID],
      x.[BORROWER_ID],
      x.[BNUM],
      x.[SOURCE_TYPE],
      A0.[Descript] AS [SOURCE_TYPE_X],
      x.[SCORE_DATE],
      x.[REASON_TYPE],
      A1.[Descript] AS [REASON_TYPE_X],
      x.[MODEL_TYPE],
      A2.[Descript] AS [MODEL_TYPE_X],
      x.[OTHER_DESCRIPTION],
      x.[SCORE_VALUE],
      x.[CREDREPOSSRCTYPEOTHERDESC],
      x.[FACTAINQUIRIESINDICATOR],
      x.[RANK_PERCENTILE]
   FROM [clt_NetO].[GF_TLBR_CREDIT_SCORE] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.[SOURCE_TYPE] = A0.[DBSYMBOL] AND A0.[TableName] = 'GF_TLBR_CREDIT_SCORE' and A0.[COLUMNNAME] = 'SOURCE_TYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A1 on x.[REASON_TYPE] = A1.[DBSYMBOL] AND A1.[TableName] = 'GF_TLBR_CREDIT_SCORE' and A1.[COLUMNNAME] = 'REASON_TYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A2 on x.[MODEL_TYPE] = A2.[DBSYMBOL] AND A2.[TableName] = 'GF_TLBR_CREDIT_SCORE' and A2.[COLUMNNAME] = 'MODEL_TYPE'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
