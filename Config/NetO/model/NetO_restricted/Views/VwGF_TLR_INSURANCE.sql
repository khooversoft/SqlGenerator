-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_restricted].[VwGF_TLR_INSURANCE]
AS
   SELECT
      x.[LNUM],
      x.[DBID],
      x.[ROWSERIALNO],
      x.[S_INSTYPE],
      A0.Descript AS [S_INSTYPE_Description],
      x.[COVAMNT],
      x.[MINCOVER],
      x.[PREMAMT],
      x.[COVERPER],
      x.[POLICYNO],
      x.[FILENUM],
      x.[EFFINSDT],
      x.[INSEXPDT],
      x.[BINDEXPD],
      x.[PAYEECDE],
      x.[ESCRITEM],
      x.[COMPNAME],
      x.[INSADDR1],
      x.[INSADDR2],
      x.[INSCITY],
      x.[INSSTATE],
      x.[INSZIP],
      x.[INSPHONE],
      x.[INSFAX],
      HASHBYTES('SHA2_256', x.[AGENTNAME]) AS [AGENTNAME],
      x.[GUAR_REPL_COST],
      x.[INSURANCE_TERM],
      x.[NEXT_DUE_DATE],
      x.[INS_PAID_RECEIPT],
      x.[INS_DEDUCTIBLE],
      x.[COVERAGETYPEDESC],
      x.[CUSHION],
      x.[MASTER_POLICY_IND],
      x.[COLFIRSTYR],
      x.[RATE_CHARGED_ON_COST],
      x.[PMTOPTDBID],
      x.[PMTOPTSERNO],
      x.[S_OTH_INS_TYPE_DESC],
      A1.Descript AS [S_OTH_INS_TYPE_DESC_Description],
      x.[HUDLINE],
      x.[POLICY_TERM],
      x.[S_ESCINS],
      A2.Descript AS [S_ESCINS_Description],
      x.[ASSETID],
      x.[DT_ORDERED],
      x.[DT_EXPECTED],
      x.[DT_RECEIVED],
      x.[COVG_RESOLUTION],
      x.[INS_NOTES_DBID],
      x.[INS_NOTES_SN],
      x.[REPLACE_COST],
      x.[DEDUCTIBLE],
      x.[SECURED_PARTY_INS],
      x.[SECURED_PARTY_INS_OTH],
      x.[APIADDLINFO],
      x.[INSEMAIL],
      x.[CIDINS_PROVIDER],
      x.[CIDINS_AGENT],
      x.[PREPAID_INS_MNTH],
      x.[IS_INS_POLICY_EXIST],
      x.[PREFIRM_CONSTRUCTION],
      x.[REPLACEMENT_VALUE],
      x.[NFIP_MAX_COVERAGE],
      x.[MINIMUM_COVERAGE]
   FROM [clt_NetO].[GF_TLR_INSURANCE] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.S_INSTYPE = A0.DBSYMBOL AND A0.[TableName] = 'GF_TLR_INSURANCE' and A0.[COLUMNNAME] = 'S_INSTYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A1 on x.S_OTH_INS_TYPE_DESC = A1.DBSYMBOL AND A1.[TableName] = 'GF_TLR_INSURANCE' and A1.[COLUMNNAME] = 'S_OTH_INS_TYPE_DESC'
      LEFT JOIN [clt_NetO].[SymbolLookup] A2 on x.S_ESCINS = A2.DBSYMBOL AND A2.[TableName] = 'GF_TLR_INSURANCE' and A2.[COLUMNNAME] = 'S_ESCINS'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
