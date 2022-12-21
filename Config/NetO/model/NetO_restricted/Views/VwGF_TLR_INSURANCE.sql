-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_restricted].[VwGF_TLR_INSURANCE]
AS
   SELECT
      x.[LNUM],
      x.[DBID],
      HASHBYTES('SHA2_256', CAST(x.[ROWSERIALNO] AS NVARCHAR(50))) AS [ROWSERIALNO],
      x.[S_INSTYPE],
      A0.[Descript] AS [S_INSTYPE_X],
      x.[COVAMNT],
      x.[MINCOVER],
      x.[PREMAMT],
      x.[COVERPER],
      HASHBYTES('SHA2_256', x.[POLICYNO]) AS [POLICYNO],
      x.[FILENUM],
      x.[EFFINSDT],
      x.[INSEXPDT],
      x.[BINDEXPD],
      HASHBYTES('SHA2_256', x.[PAYEECDE]) AS [PAYEECDE],
      x.[ESCRITEM],
      HASHBYTES('SHA2_256', x.[COMPNAME]) AS [COMPNAME],
      HASHBYTES('SHA2_256', x.[INSADDR1]) AS [INSADDR1],
      HASHBYTES('SHA2_256', x.[INSADDR2]) AS [INSADDR2],
      HASHBYTES('SHA2_256', x.[INSCITY]) AS [INSCITY],
      HASHBYTES('SHA2_256', x.[INSSTATE]) AS [INSSTATE],
      x.[INSZIP],
      HASHBYTES('SHA2_256', x.[INSPHONE]) AS [INSPHONE],
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
      x.[HUDLINE],
      x.[POLICY_TERM],
      x.[S_ESCINS],
      A1.[Descript] AS [S_ESCINS_X],
      x.[ASSETID],
      x.[DT_ORDERED],
      x.[DT_EXPECTED],
      x.[DT_RECEIVED],
      x.[COVG_RESOLUTION],
      A2.[Descript] AS [COVG_RESOLUTION_X],
      x.[INS_NOTES_DBID],
      HASHBYTES('SHA2_256', CAST(x.[INS_NOTES_SN] AS NVARCHAR(50))) AS [INS_NOTES_SN],
      x.[REPLACE_COST],
      x.[DEDUCTIBLE],
      x.[SECURED_PARTY_INS],
      A3.[Descript] AS [SECURED_PARTY_INS_X],
      x.[SECURED_PARTY_INS_OTH],
      HASHBYTES('SHA2_256', x.[APIADDLINFO]) AS [APIADDLINFO],
      HASHBYTES('SHA2_256', x.[INSEMAIL]) AS [INSEMAIL],
      x.[CIDINS_PROVIDER],
      x.[CIDINS_AGENT],
      x.[PREPAID_INS_MNTH],
      x.[IS_INS_POLICY_EXIST],
      x.[PREFIRM_CONSTRUCTION],
      x.[REPLACEMENT_VALUE],
      x.[NFIP_MAX_COVERAGE],
      x.[MINIMUM_COVERAGE]
   FROM [clt_NetO].[GF_TLR_INSURANCE] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.[S_INSTYPE] = A0.[DBSYMBOL] AND A0.[TableName] = 'GF_TLR_INSURANCE' and A0.[COLUMNNAME] = 'S_INSTYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A1 on x.[S_ESCINS] = A1.[DBSYMBOL] AND A1.[TableName] = 'GF_TLR_INSURANCE' and A1.[COLUMNNAME] = 'S_ESCINS'
      LEFT JOIN [clt_NetO].[SymbolLookup] A2 on x.[COVG_RESOLUTION] = A2.[DBSYMBOL] AND A2.[TableName] = 'GF_TLR_INSURANCE' and A2.[COLUMNNAME] = 'COVG_RESOLUTION'
      LEFT JOIN [clt_NetO].[SymbolLookup] A3 on x.[SECURED_PARTY_INS] = A3.[DBSYMBOL] AND A3.[TableName] = 'GF_TLR_INSURANCE' and A3.[COLUMNNAME] = 'SECURED_PARTY_INS'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
