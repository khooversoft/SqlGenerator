-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_pii].[VwGF_TLBR_ASSIST_PROGRAMS]
AS
   SELECT
      x.[LNUM],
      x.[BNUM],
      x.[DBID],
      x.[GIFTCTR],
      x.[FUNDS_RESERVED],
      x.[FUNDS_FRONTED],
      x.[GRANT_CRA_CODE],
      x.[PROGRAM_EXP],
      x.[S_ASSIST_TYPE],
      A0.[Descript] AS [S_ASSIST_TYPE_X],
      x.[REPAY_TERM],
      x.[REPAY_RATE],
      x.[REPAY_PMT],
      x.[GRANT_LOAN_NUM],
      x.[AGENCY_APP_DATE],
      x.[AHP_PROJECT],
      x.[REPAY_REQ],
      x.[ALLOW_AP_EXCEPT],
      x.[PROVIDER_EIN],
      x.[S_ASSIST_PVDR_TYP],
      A1.[Descript] AS [S_ASSIST_PVDR_TYP_X],
      x.[AP_OTH_DESC],
      x.[RECORD_CREATED],
      x.[ASSETCTR]
   FROM [clt_NetO].[GF_TLBR_ASSIST_PROGRAMS] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.[S_ASSIST_TYPE] = A0.[DBSYMBOL] AND A0.[TableName] = 'GF_TLBR_ASSIST_PROGRAMS' and A0.[COLUMNNAME] = 'S_ASSIST_TYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A1 on x.[S_ASSIST_PVDR_TYP] = A1.[DBSYMBOL] AND A1.[TableName] = 'GF_TLBR_ASSIST_PROGRAMS' and A1.[COLUMNNAME] = 'S_ASSIST_PVDR_TYP'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
