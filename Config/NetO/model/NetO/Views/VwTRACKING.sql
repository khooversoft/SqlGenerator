-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO].[VwTRACKING]
AS
   SELECT
      x.[LNUM],
      x.[TRAGCYCN],
      x.[TRLNDRCN],
      x.[CLNUM],
      x.[S_IVMETH],
      A0.Descript AS [S_IVMETH_Description],
      x.[S_IVID],
      A1.Descript AS [S_IVID_Description],
      x.[S_BUSCHL],
      A2.Descript AS [S_BUSCHL_Description],
      x.[CLOSEDT],
      x.[DISBURDT],
      x.[FSTPMTDT],
      x.[ODDDAYS],
      x.[FEEFIRST],
      x.[S_COPT1],
      A3.Descript AS [S_COPT1_Description],
      x.[S_COPT2],
      A4.Descript AS [S_COPT2_Description],
      x.[S_COPT3],
      A5.Descript AS [S_COPT3_Description],
      x.[S_COPT4],
      A6.Descript AS [S_COPT4_Description],
      x.[S_COPT5],
      A7.Descript AS [S_COPT5_Description],
      x.[CUSHION],
      x.[AGGEADJ],
      x.[DOWNPYMT],
      x.[USRID],
      x.[TIMELOCKED],
      x.[CLOSDTPRXY],
      x.[DISBDTPRXY],
      x.[FSTPMTPRXY],
      x.[ODDPRXY],
      x.[CREATEDBID],
      x.[AGAMTCOL],
      x.[LOCKCFM],
      x.[WHOCFM],
      x.[WHOMCFM],
      x.[PREQUAL],
      x.[S_COPT6],
      A8.Descript AS [S_COPT6_Description],
      x.[S_COPT7],
      A9.Descript AS [S_COPT7_Description],
      x.[S_COPT8],
      A10.Descript AS [S_COPT8_Description],
      x.[S_COPT9],
      A11.Descript AS [S_COPT9_Description],
      x.[S_COPT10],
      A12.Descript AS [S_COPT10_Description],
      x.[S_CRDGRDRQ],
      A13.Descript AS [S_CRDGRDRQ_Description],
      x.[S_DOCLEVEL],
      A14.Descript AS [S_DOCLEVEL_Description],
      x.[GRADEDC],
      x.[S_CRDGRDAP],
      A15.Descript AS [S_CRDGRDAP_Description],
      x.[S_QUALITY],
      A16.Descript AS [S_QUALITY_Description],
      x.[DMSGRADE],
      x.[ESTCLOSD],
      x.[SRVCNUM],
      x.[OWN_NAME],
      x.[WRHSFND],
      x.[CLLNAPPRVL],
      x.[GENCMTID],
      HASHBYTES('SHA2_256', x.[CORR_OWN_NAME]) AS [CORR_OWN_NAME],
      x.[CORR_WRHSFND],
      x.[CORR_CLLNAPPRVL],
      x.[LRPROFID],
      x.[LRGROUPID],
      x.[LRUSERID],
      x.[LRDATE],
      x.[TPBROKR],
      x.[S_DELTERMS],
      A17.Descript AS [S_DELTERMS_Description],
      x.[SELLCL],
      x.[WLSTATUS],
      x.[CLTYPE],
      x.[ESCPROJY],
      x.[CAPEXP],
      x.[COPYDBCODE],
      x.[USERQUALIFIER],
      x.[PURPOSE_TYPE],
      x.[S_CASE_STATUS],
      A18.Descript AS [S_CASE_STATUS_Description],
      x.[S_REPAY],
      A19.Descript AS [S_REPAY_Description],
      x.[UNITPER],
      x.[UNITPEROVR],
      x.[LASTLOCKED],
      x.[BLANKETLOAN],
      x.[SETUPDBID],
      x.[OTHERCASESTATEDESC],
      x.[OTHERDOCLEVELDESC],
      x.[WHENCFM],
      x.[CLNUM_OVRD],
      x.[SERVICING_EXPORT],
      x.[OBLIGATED_BORROWER_COUNT],
      x.[SECURITY_TOKEN],
      x.[S_CHANNEL_SOURCE_CODE],
      A20.Descript AS [S_CHANNEL_SOURCE_CODE_Description],
      x.[RECORD_CREATED],
      x.[LOAN_CREATE_DATE],
      x.[CLIENT_TOLL_FREE_NUM],
      x.[RELEASELOCKTIME],
      x.[URLA_1003],
      x.[RUN_SYSTEM_CALCS_MODE],
      x.[USE2019URLA],
      x.[PREQUALORPREAPPROVAL],
      x.[AUTO_CREDIT_PULLED],
      x.[SELLER_SERVICING_NUM]
   FROM [clt_NetO].[TRACKING] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.S_IVMETH = A0.DBSYMBOL AND A0.[TableName] = 'TRACKING' and A0.[COLUMNNAME] = 'S_IVMETH'
      LEFT JOIN [clt_NetO].[SymbolLookup] A1 on x.S_IVID = A1.DBSYMBOL AND A1.[TableName] = 'TRACKING' and A1.[COLUMNNAME] = 'S_IVID'
      LEFT JOIN [clt_NetO].[SymbolLookup] A2 on x.S_BUSCHL = A2.DBSYMBOL AND A2.[TableName] = 'TRACKING' and A2.[COLUMNNAME] = 'S_BUSCHL'
      LEFT JOIN [clt_NetO].[SymbolLookup] A3 on x.S_COPT1 = A3.DBSYMBOL AND A3.[TableName] = 'TRACKING' and A3.[COLUMNNAME] = 'S_COPT1'
      LEFT JOIN [clt_NetO].[SymbolLookup] A4 on x.S_COPT2 = A4.DBSYMBOL AND A4.[TableName] = 'TRACKING' and A4.[COLUMNNAME] = 'S_COPT2'
      LEFT JOIN [clt_NetO].[SymbolLookup] A5 on x.S_COPT3 = A5.DBSYMBOL AND A5.[TableName] = 'TRACKING' and A5.[COLUMNNAME] = 'S_COPT3'
      LEFT JOIN [clt_NetO].[SymbolLookup] A6 on x.S_COPT4 = A6.DBSYMBOL AND A6.[TableName] = 'TRACKING' and A6.[COLUMNNAME] = 'S_COPT4'
      LEFT JOIN [clt_NetO].[SymbolLookup] A7 on x.S_COPT5 = A7.DBSYMBOL AND A7.[TableName] = 'TRACKING' and A7.[COLUMNNAME] = 'S_COPT5'
      LEFT JOIN [clt_NetO].[SymbolLookup] A8 on x.S_COPT6 = A8.DBSYMBOL AND A8.[TableName] = 'TRACKING' and A8.[COLUMNNAME] = 'S_COPT6'
      LEFT JOIN [clt_NetO].[SymbolLookup] A9 on x.S_COPT7 = A9.DBSYMBOL AND A9.[TableName] = 'TRACKING' and A9.[COLUMNNAME] = 'S_COPT7'
      LEFT JOIN [clt_NetO].[SymbolLookup] A10 on x.S_COPT8 = A10.DBSYMBOL AND A10.[TableName] = 'TRACKING' and A10.[COLUMNNAME] = 'S_COPT8'
      LEFT JOIN [clt_NetO].[SymbolLookup] A11 on x.S_COPT9 = A11.DBSYMBOL AND A11.[TableName] = 'TRACKING' and A11.[COLUMNNAME] = 'S_COPT9'
      LEFT JOIN [clt_NetO].[SymbolLookup] A12 on x.S_COPT10 = A12.DBSYMBOL AND A12.[TableName] = 'TRACKING' and A12.[COLUMNNAME] = 'S_COPT10'
      LEFT JOIN [clt_NetO].[SymbolLookup] A13 on x.S_CRDGRDRQ = A13.DBSYMBOL AND A13.[TableName] = 'TRACKING' and A13.[COLUMNNAME] = 'S_CRDGRDRQ'
      LEFT JOIN [clt_NetO].[SymbolLookup] A14 on x.S_DOCLEVEL = A14.DBSYMBOL AND A14.[TableName] = 'TRACKING' and A14.[COLUMNNAME] = 'S_DOCLEVEL'
      LEFT JOIN [clt_NetO].[SymbolLookup] A15 on x.S_CRDGRDAP = A15.DBSYMBOL AND A15.[TableName] = 'TRACKING' and A15.[COLUMNNAME] = 'S_CRDGRDAP'
      LEFT JOIN [clt_NetO].[SymbolLookup] A16 on x.S_QUALITY = A16.DBSYMBOL AND A16.[TableName] = 'TRACKING' and A16.[COLUMNNAME] = 'S_QUALITY'
      LEFT JOIN [clt_NetO].[SymbolLookup] A17 on x.S_DELTERMS = A17.DBSYMBOL AND A17.[TableName] = 'TRACKING' and A17.[COLUMNNAME] = 'S_DELTERMS'
      LEFT JOIN [clt_NetO].[SymbolLookup] A18 on x.S_CASE_STATUS = A18.DBSYMBOL AND A18.[TableName] = 'TRACKING' and A18.[COLUMNNAME] = 'S_CASE_STATUS'
      LEFT JOIN [clt_NetO].[SymbolLookup] A19 on x.S_REPAY = A19.DBSYMBOL AND A19.[TableName] = 'TRACKING' and A19.[COLUMNNAME] = 'S_REPAY'
      LEFT JOIN [clt_NetO].[SymbolLookup] A20 on x.S_CHANNEL_SOURCE_CODE = A20.DBSYMBOL AND A20.[TableName] = 'TRACKING' and A20.[COLUMNNAME] = 'S_CHANNEL_SOURCE_CODE'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
