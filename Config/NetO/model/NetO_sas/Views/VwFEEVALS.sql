-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas].[VwFEEVALS]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[DBCODE] AS [DBCODE],
      x.[HUDLINE] AS [HUDLINE],
      x.[BPORTION] AS [BPORTION],
      x.[SPORTION] AS [SPORTION],
      x.[LPORTION] AS [LPORTION],
      x.[BRPRTION] AS [BRPRTION],
      x.[BPOCPORT] AS [BPOCPORT],
      x.[SPOCPORT] AS [SPOCPORT],
      x.[NDSVCPVD] AS [NDSVCPVD],
      x.[IFACTOR] AS [IFACTOR],
      x.[BFACTOR] AS [BFACTOR],
      x.[BPOCFCTR] AS [BPOCFCTR],
      x.[SFACTOR] AS [SFACTOR],
      x.[SPOCFCTR] AS [SPOCFCTR],
      x.[LFACTOR] AS [LFACTOR],
      x.[BRFACTOR] AS [BRFACTOR],
      x.[CALCTYPE] AS [CALCTYPE],
      x.[CATEGORY] AS [CATEGORY],
      x.[INCINTOT] AS [INCINTOT],
      x.[ESCMONTH] AS [ESCMONTH],
      x.[REFERBY] AS [REFERBY],
      x.[HUDDESC] AS [HUDDESC],
      x.[ESCITEM] AS [ESCITEM],
      x.[RATELOCK] AS [RATELOCK],
      x.[NOTEDBID] AS [NOTEDBID],
      x.[NOTESERN] AS [NOTESERN],
      x.[HUDALLOW] AS [HUDALLOW],
      x.[WAIVDBID] AS [WAIVDBID],
      x.[WAIVSERN] AS [WAIVSERN],
      x.[INCHUD] AS [INCHUD],
      x.[WAIVED] AS [WAIVED],
      x.[CSHMONTH] AS [CSHMONTH],
      x.[S_PERIOD] AS [S_PERIOD],
      A0.[Descript] AS [S_PERIOD_X],
      x.[TOTALATC] AS [TOTALATC],
      x.[INCGFE] AS [INCGFE],
      x.[SPOVERRIDE] AS [SPOVERRIDE],
      x.[TOTAL] AS [TOTAL],
      x.[DIRECTBILL] AS [DIRECTBILL],
      x.[REFUNDABLE] AS [REFUNDABLE],
      x.[IAGFEVERBIAGE] AS [IAGFEVERBIAGE],
      x.[INCHCL] AS [INCHCL],
      x.[CID_FEE_SRVC_PRVDR_CO] AS [CID_FEE_SRVC_PRVDR_CO],
      x.[S_MISC_DESC] AS [S_MISC_DESC],
      x.[LOCKEDYN] AS [LOCKEDYN],
      x.[LOCKEDTOTAL] AS [LOCKEDTOTAL],
      x.[ISSUE_CHECK] AS [ISSUE_CHECK],
      x.[CREDIT_BACK] AS [CREDIT_BACK],
      x.[IPORTION] AS [IPORTION],
      HASHBYTES('SHA2_256', x.[BORRCHOOSEPRVDR]) AS [BORRCHOOSEPRVDR],
      x.[SUBFEE] AS [SUBFEE],
      HASHBYTES('SHA2_256', x.[FEECODE]) AS [FEECODE],
      x.[S_AGGTYPE] AS [S_AGGTYPE],
      A1.[Descript] AS [S_AGGTYPE_X],
      x.[S_RESP_PARTY] AS [S_RESP_PARTY],
      A2.[Descript] AS [S_RESP_PARTY_X],
      x.[S_PAIDBY] AS [S_PAIDBY],
      A3.[Descript] AS [S_PAIDBY_X],
      x.[S_PAIDTO] AS [S_PAIDTO],
      A4.[Descript] AS [S_PAIDTO_X],
      x.[SUBCODE] AS [SUBCODE],
      x.[IS_NOCOST] AS [IS_NOCOST],
      x.[MANAGED_OVR] AS [MANAGED_OVR],
      x.[TO_AFFILIATE] AS [TO_AFFILIATE],
      x.[S_SECTION_TYPE] AS [S_SECTION_TYPE],
      A5.[Descript] AS [S_SECTION_TYPE_X],
      x.[ID_SECTION_SUBTYPE] AS [ID_SECTION_SUBTYPE],
      x.[PREPAID_MONTH] AS [PREPAID_MONTH],
      x.[S_TOLERANCE_CATEGORY] AS [S_TOLERANCE_CATEGORY],
      A6.[Descript] AS [S_TOLERANCE_CATEGORY_X],
      x.[S_CHANGE_TYPE] AS [S_CHANGE_TYPE],
      A7.[Descript] AS [S_CHANGE_TYPE_X],
      x.[CHANGE_REASON] AS [CHANGE_REASON],
      x.[BOROPT] AS [BOROPT],
      x.[EXC_MAPR] AS [EXC_MAPR]
   FROM [clt_NetO].[FEEVALS] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.[S_PERIOD] = A0.[DBSYMBOL] AND A0.[TableName] = 'FEEVALS' and A0.[COLUMNNAME] = 'S_PERIOD'
      LEFT JOIN [clt_NetO].[SymbolLookup] A1 on x.[S_AGGTYPE] = A1.[DBSYMBOL] AND A1.[TableName] = 'FEEVALS' and A1.[COLUMNNAME] = 'S_AGGTYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A2 on x.[S_RESP_PARTY] = A2.[DBSYMBOL] AND A2.[TableName] = 'FEEVALS' and A2.[COLUMNNAME] = 'S_RESP_PARTY'
      LEFT JOIN [clt_NetO].[SymbolLookup] A3 on x.[S_PAIDBY] = A3.[DBSYMBOL] AND A3.[TableName] = 'FEEVALS' and A3.[COLUMNNAME] = 'S_PAIDBY'
      LEFT JOIN [clt_NetO].[SymbolLookup] A4 on x.[S_PAIDTO] = A4.[DBSYMBOL] AND A4.[TableName] = 'FEEVALS' and A4.[COLUMNNAME] = 'S_PAIDTO'
      LEFT JOIN [clt_NetO].[SymbolLookup] A5 on x.[S_SECTION_TYPE] = A5.[DBSYMBOL] AND A5.[TableName] = 'FEEVALS' and A5.[COLUMNNAME] = 'S_SECTION_TYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A6 on x.[S_TOLERANCE_CATEGORY] = A6.[DBSYMBOL] AND A6.[TableName] = 'FEEVALS' and A6.[COLUMNNAME] = 'S_TOLERANCE_CATEGORY'
      LEFT JOIN [clt_NetO].[SymbolLookup] A7 on x.[S_CHANGE_TYPE] = A7.[DBSYMBOL] AND A7.[TableName] = 'FEEVALS' and A7.[COLUMNNAME] = 'S_CHANGE_TYPE'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
