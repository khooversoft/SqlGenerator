-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_pii].[VwGF_TLBR_RAW_SCORES]
AS
   SELECT
      x.[LNUM],
      x.[BNUM],
      x.[DBID],
      x.[ROWSERIALNO],
      x.[CREDIT_REPORT_ID],
      x.[CREDIT_REP_SOURCE],
      A0.[Descript] AS [CREDIT_REP_SOURCE_X],
      x.[CREDIT_SCORE_DATE],
      x.[CRDT_SC_EXCLU_REASON],
      A1.[Descript] AS [CRDT_SC_EXCLU_REASON_X],
      x.[CRDT_SC_MODEL_NAME],
      A2.[Descript] AS [CRDT_SC_MODEL_NAME_X],
      x.[MODEL_OTHER_DESC],
      x.[CREDIT_SCORE_VALUE],
      x.[OTHER_SOURCE],
      x.[RANK_PERCENTILE]
   FROM [clt_NetO].[GF_TLBR_RAW_SCORES] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.[CREDIT_REP_SOURCE] = A0.[DBSYMBOL] AND A0.[TableName] = 'GF_TLBR_RAW_SCORES' and A0.[COLUMNNAME] = 'CREDIT_REP_SOURCE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A1 on x.[CRDT_SC_EXCLU_REASON] = A1.[DBSYMBOL] AND A1.[TableName] = 'GF_TLBR_RAW_SCORES' and A1.[COLUMNNAME] = 'CRDT_SC_EXCLU_REASON'
      LEFT JOIN [clt_NetO].[SymbolLookup] A2 on x.[CRDT_SC_MODEL_NAME] = A2.[DBSYMBOL] AND A2.[TableName] = 'GF_TLBR_RAW_SCORES' and A2.[COLUMNNAME] = 'CRDT_SC_MODEL_NAME'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
