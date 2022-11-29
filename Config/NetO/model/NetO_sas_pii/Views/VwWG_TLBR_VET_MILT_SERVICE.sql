-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_pii].[VwWG_TLBR_VET_MILT_SERVICE]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[BNUM] AS [BNUM],
      x.[DBID] AS [DBID],
      x.[ROWSERIALNO] AS [ROWSERIALNO],
      x.[S_BRANCH] AS [S_BRANCH],
      A0.Descript AS [BRANCH],
      x.[START_DATE] AS [START_DATE],
      x.[END_DATE] AS [END_DATE],
      x.[S_OFF_OR_ENLISTED] AS [S_OFF_OR_ENLISTED],
      A1.Descript AS [OFF_OR_ENLISTED],
      x.[SERVICE_NUMBER] AS [SERVICE_NUMBER],
      x.[ACTIVESERVYN] AS [ACTIVESERVYN]
   FROM [clt_NetO].[WG_TLBR_VET_MILT_SERVICE] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.S_BRANCH = A0.[DBSYMBOL] AND A0.[TableName] = 'WG_TLBR_VET_MILT_SERVICE' and A0.[COLUMNNAME] = 'S_BRANCH'
      LEFT JOIN [clt_NetO].[SymbolLookup] A1 on x.S_OFF_OR_ENLISTED = A1.[DBSYMBOL] AND A1.[TableName] = 'WG_TLBR_VET_MILT_SERVICE' and A1.[COLUMNNAME] = 'S_OFF_OR_ENLISTED'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
