-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO].[VwUNDCOND1]
AS
   SELECT
      x.[LNUM],
      x.[S_DISPOSITION],
      A0.[Descript] AS [S_DISPOSITION_X],
      x.[S_UWOPT1],
      x.[S_UWOPT2],
      x.[S_UWOPT3],
      x.[S_UWOPT4],
      x.[S_UWOPT5],
      x.[S_UWOPT6],
      x.[INV_APPRV_DATE],
      x.[UNDW_EXP_DATE],
      x.[DOC_EXP_DATE],
      x.[DISPOSITION_DATE],
      x.[CREDSCORE],
      x.[QUALCODE],
      A1.[Descript] AS [QUALCODE_X],
      x.[UWCOMDBID],
      x.[UWCOMSN],
      x.[AUSCOMDBID],
      x.[AUSCOMSN],
      x.[S_TRGTINV],
      A2.[Descript] AS [S_TRGTINV_X],
      x.[UWENTITY],
      x.[CREDSCOVRD],
      x.[DELEGATED_ENDORSEMENT],
      x.[UW_INCOME_EXCEPTION_DESC],
      x.[EST_CRED_SCORE],
      x.[CREDIT_REPORT_REF],
      x.[S_CREDSCORE_OVERRIDE_REASON],
      A3.[Descript] AS [S_CREDSCORE_OVERRIDE_REASON_X],
      x.[CS_OVR_REAS_OTHERDESC],
      x.[DECISIONTARGETDATE],
      x.[DISPOSITION_DATETIME]
   FROM [clt_NetO].[UNDCOND1] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.[S_DISPOSITION] = A0.[DBSYMBOL] AND A0.[TableName] = 'UNDCOND1' and A0.[COLUMNNAME] = 'S_DISPOSITION'
      LEFT JOIN [clt_NetO].[SymbolLookup] A1 on x.[QUALCODE] = A1.[DBSYMBOL] AND A1.[TableName] = 'UNDCOND1' and A1.[COLUMNNAME] = 'QUALCODE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A2 on x.[S_TRGTINV] = A2.[DBSYMBOL] AND A2.[TableName] = 'UNDCOND1' and A2.[COLUMNNAME] = 'S_TRGTINV'
      LEFT JOIN [clt_NetO].[SymbolLookup] A3 on x.[S_CREDSCORE_OVERRIDE_REASON] = A3.[DBSYMBOL] AND A3.[TableName] = 'UNDCOND1' and A3.[COLUMNNAME] = 'S_CREDSCORE_OVERRIDE_REASON'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
