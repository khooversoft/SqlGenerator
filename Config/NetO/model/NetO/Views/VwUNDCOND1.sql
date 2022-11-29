-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO].[VwUNDCOND1]
AS
   SELECT
      x.[LNUM],
      x.[S_DISPOSITION],
      A0.Descript AS [DISPOSITION],
      x.[S_UWOPT1],
      A1.Descript AS [UWOPT1],
      x.[S_UWOPT2],
      A2.Descript AS [UWOPT2],
      x.[S_UWOPT3],
      A3.Descript AS [UWOPT3],
      x.[S_UWOPT4],
      A4.Descript AS [UWOPT4],
      x.[S_UWOPT5],
      A5.Descript AS [UWOPT5],
      x.[S_UWOPT6],
      A6.Descript AS [UWOPT6],
      x.[INV_APPRV_DATE],
      x.[UNDW_EXP_DATE],
      x.[DOC_EXP_DATE],
      x.[DISPOSITION_DATE],
      x.[CREDSCORE],
      x.[QUALCODE],
      x.[UWCOMDBID],
      x.[UWCOMSN],
      x.[AUSCOMDBID],
      x.[AUSCOMSN],
      x.[S_TRGTINV],
      A7.Descript AS [TRGTINV],
      x.[UWENTITY],
      x.[CREDSCOVRD],
      x.[DELEGATED_ENDORSEMENT],
      x.[UW_INCOME_EXCEPTION_DESC],
      x.[EST_CRED_SCORE],
      x.[CREDIT_REPORT_REF],
      x.[S_CREDSCORE_OVERRIDE_REASON],
      A8.Descript AS [CREDSCORE_OVERRIDE_REASON],
      x.[CS_OVR_REAS_OTHERDESC],
      x.[DECISIONTARGETDATE],
      x.[DISPOSITION_DATETIME]
   FROM [clt_NetO].[UNDCOND1] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.S_DISPOSITION = A0.[DBSYMBOL] AND A0.[TableName] = 'UNDCOND1' and A0.[COLUMNNAME] = 'S_DISPOSITION'
      LEFT JOIN [clt_NetO].[SymbolLookup] A1 on x.S_UWOPT1 = A1.[DBSYMBOL] AND A1.[TableName] = 'UNDCOND1' and A1.[COLUMNNAME] = 'S_UWOPT1'
      LEFT JOIN [clt_NetO].[SymbolLookup] A2 on x.S_UWOPT2 = A2.[DBSYMBOL] AND A2.[TableName] = 'UNDCOND1' and A2.[COLUMNNAME] = 'S_UWOPT2'
      LEFT JOIN [clt_NetO].[SymbolLookup] A3 on x.S_UWOPT3 = A3.[DBSYMBOL] AND A3.[TableName] = 'UNDCOND1' and A3.[COLUMNNAME] = 'S_UWOPT3'
      LEFT JOIN [clt_NetO].[SymbolLookup] A4 on x.S_UWOPT4 = A4.[DBSYMBOL] AND A4.[TableName] = 'UNDCOND1' and A4.[COLUMNNAME] = 'S_UWOPT4'
      LEFT JOIN [clt_NetO].[SymbolLookup] A5 on x.S_UWOPT5 = A5.[DBSYMBOL] AND A5.[TableName] = 'UNDCOND1' and A5.[COLUMNNAME] = 'S_UWOPT5'
      LEFT JOIN [clt_NetO].[SymbolLookup] A6 on x.S_UWOPT6 = A6.[DBSYMBOL] AND A6.[TableName] = 'UNDCOND1' and A6.[COLUMNNAME] = 'S_UWOPT6'
      LEFT JOIN [clt_NetO].[SymbolLookup] A7 on x.S_TRGTINV = A7.[DBSYMBOL] AND A7.[TableName] = 'UNDCOND1' and A7.[COLUMNNAME] = 'S_TRGTINV'
      LEFT JOIN [clt_NetO].[SymbolLookup] A8 on x.S_CREDSCORE_OVERRIDE_REASON = A8.[DBSYMBOL] AND A8.[TableName] = 'UNDCOND1' and A8.[COLUMNNAME] = 'S_CREDSCORE_OVERRIDE_REASON'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
