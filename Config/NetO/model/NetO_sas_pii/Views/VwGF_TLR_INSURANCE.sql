-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_pii].[VwGF_TLR_INSURANCE]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[DBID] AS [DBID],
      x.[ROWSERIALNO] AS [ROWSERIALNO],
      x.[S_INSTYPE] AS [S_INSTYPE],
      A0.Descript AS [INSTYPE],
      x.[COVAMNT] AS [COVAMNT],
      x.[MINCOVER] AS [MINCOVER],
      x.[PREMAMT] AS [PREMAMT],
      x.[COVERPER] AS [COVERPER],
      x.[POLICYNO] AS [POLICYNO],
      x.[FILENUM] AS [FILENUM],
      x.[EFFINSDT] AS [EFFINSDT],
      x.[INSEXPDT] AS [INSEXPDT],
      x.[BINDEXPD] AS [BINDEXPD],
      x.[PAYEECDE] AS [PAYEECDE],
      x.[ESCRITEM] AS [ESCRITEM],
      x.[COMPNAME] AS [COMPNAME],
      x.[INSADDR1] AS [INSADDR1],
      x.[INSADDR2] AS [INSADDR2],
      x.[INSCITY] AS [INSCITY],
      x.[INSSTATE] AS [INSSTATE],
      x.[INSZIP] AS [INSZIP],
      x.[INSPHONE] AS [INSPHONE],
      x.[INSFAX] AS [INSFAX],
      x.[AGENTNAME] AS [AGENTNAME],
      x.[GUAR_REPL_COST] AS [GUAR_REPL_COST],
      x.[INSURANCE_TERM] AS [INSURANCE_TERM],
      x.[NEXT_DUE_DATE] AS [NEXT_DUE_DATE],
      x.[INS_PAID_RECEIPT] AS [INS_PAID_RECEIPT],
      x.[INS_DEDUCTIBLE] AS [INS_DEDUCTIBLE],
      x.[COVERAGETYPEDESC] AS [COVERAGETYPEDESC],
      x.[CUSHION] AS [CUSHION],
      x.[MASTER_POLICY_IND] AS [MASTER_POLICY_IND],
      x.[COLFIRSTYR] AS [COLFIRSTYR],
      x.[RATE_CHARGED_ON_COST] AS [RATE_CHARGED_ON_COST],
      x.[PMTOPTDBID] AS [PMTOPTDBID],
      x.[PMTOPTSERNO] AS [PMTOPTSERNO],
      x.[S_OTH_INS_TYPE_DESC] AS [S_OTH_INS_TYPE_DESC],
      A1.Descript AS [OTH_INTYPE_DESC],
      x.[HUDLINE] AS [HUDLINE],
      x.[POLICY_TERM] AS [POLICY_TERM],
      x.[S_ESCINS] AS [S_ESCINS],
      A2.Descript AS [ESCINS],
      x.[ASSETID] AS [ASSETID],
      x.[DT_ORDERED] AS [DT_ORDERED],
      x.[DT_EXPECTED] AS [DT_EXPECTED],
      x.[DT_RECEIVED] AS [DT_RECEIVED],
      x.[COVG_RESOLUTION] AS [COVG_RESOLUTION],
      x.[INS_NOTES_DBID] AS [INS_NOTES_DBID],
      x.[INS_NOTES_SN] AS [INS_NOTES_SN],
      x.[REPLACE_COST] AS [REPLACE_COST],
      x.[DEDUCTIBLE] AS [DEDUCTIBLE],
      x.[SECURED_PARTY_INS] AS [SECURED_PARTY_INS],
      x.[SECURED_PARTY_INS_OTH] AS [SECURED_PARTY_INS_OTH],
      x.[APIADDLINFO] AS [APIADDLINFO],
      x.[INSEMAIL] AS [INSEMAIL],
      x.[CIDINS_PROVIDER] AS [CIDINS_PROVIDER],
      x.[CIDINS_AGENT] AS [CIDINS_AGENT],
      x.[PREPAID_INS_MNTH] AS [PREPAID_INS_MNTH],
      x.[IS_INS_POLICY_EXIST] AS [IS_INS_POLICY_EXIST],
      x.[PREFIRM_CONSTRUCTION] AS [PREFIRM_CONSTRUCTION],
      x.[REPLACEMENT_VALUE] AS [REPLACEMENT_VALUE],
      x.[NFIP_MAX_COVERAGE] AS [NFIP_MAX_COVERAGE],
      x.[MINIMUM_COVERAGE] AS [MINIMUM_COVERAGE]
   FROM [clt_NetO].[GF_TLR_INSURANCE] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.S_INSTYPE = A0.[DBSYMBOL] AND A0.[TableName] = 'GF_TLR_INSURANCE' and A0.[COLUMNNAME] = 'S_INSTYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A1 on x.S_OTH_INS_TYPE_DESC = A1.[DBSYMBOL] AND A1.[TableName] = 'GF_TLR_INSURANCE' and A1.[COLUMNNAME] = 'S_OTH_INS_TYPE_DESC'
      LEFT JOIN [clt_NetO].[SymbolLookup] A2 on x.S_ESCINS = A2.[DBSYMBOL] AND A2.[TableName] = 'GF_TLR_INSURANCE' and A2.[COLUMNNAME] = 'S_ESCINS'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
