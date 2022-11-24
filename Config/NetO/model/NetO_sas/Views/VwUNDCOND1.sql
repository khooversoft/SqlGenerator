-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas].[VwUNDCOND1]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[S_DISPOSITION] AS [S_DISPOSITION],
      A0.Descript AS [S_DISPOSITIONDescription],
      x.[S_UWOPT1] AS [S_UWOPT1],
      A1.Descript AS [S_UWOPT1Description],
      x.[S_UWOPT2] AS [S_UWOPT2],
      A2.Descript AS [S_UWOPT2Description],
      x.[S_UWOPT3] AS [S_UWOPT3],
      A3.Descript AS [S_UWOPT3Description],
      x.[S_UWOPT4] AS [S_UWOPT4],
      A4.Descript AS [S_UWOPT4Description],
      x.[S_UWOPT5] AS [S_UWOPT5],
      A5.Descript AS [S_UWOPT5Description],
      x.[S_UWOPT6] AS [S_UWOPT6],
      A6.Descript AS [S_UWOPT6Description],
      x.[INV_APPRV_DATE] AS [INV_APPRV_DATE],
      x.[UNDW_EXP_DATE] AS [UNDW_EXP_DATE],
      x.[DOC_EXP_DATE] AS [DOC_EXP_DATE],
      x.[DISPOSITION_DATE] AS [DISPOSITION_DATE],
      x.[CREDSCORE] AS [CREDSCORE],
      x.[QUALCODE] AS [QUALCODE],
      x.[UWCOMDBID] AS [UWCOMDBID],
      x.[UWCOMSN] AS [UWCOMSN],
      x.[AUSCOMDBID] AS [AUSCOMDBID],
      x.[AUSCOMSN] AS [AUSCOMSN],
      x.[S_TRGTINV] AS [S_TRGTINV],
      A7.Descript AS [S_TRGTINVDescription],
      x.[UWENTITY] AS [UWENTITY],
      x.[CREDSCOVRD] AS [CREDSCOVRD],
      x.[DELEGATED_ENDORSEMENT] AS [DELEGATED_ENDORSEMENT],
      x.[UW_INCOME_EXCEPTION_DESC] AS [UW_INCOME_EXCEPTION_DESC],
      x.[EST_CRED_SCORE] AS [EST_CRED_SCORE],
      x.[CREDIT_REPORT_REF] AS [CREDIT_REPORT_REF],
      x.[S_CREDSCORE_OVERRIDE_REASON] AS [S_CREDSCORE_OVERRIDE_REASON],
      A8.Descript AS [S_CREDSCORE_OVERRIDE_REASONDescription],
      x.[CS_OVR_REAS_OTHERDESC] AS [CS_OVR_REAS_OTHERDESC],
      x.[DECISIONTARGETDATE] AS [DECISIONTARGETDATE],
      x.[DISPOSITION_DATETIME] AS [DISPOSITION_DATETIME]
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
