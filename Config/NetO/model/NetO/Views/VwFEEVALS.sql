-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO].[VwFEEVALS]
AS
   SELECT
      x.[LNUM],
      x.[DBCODE],
      x.[HUDLINE],
      x.[BPORTION],
      x.[SPORTION],
      x.[LPORTION],
      x.[BRPRTION],
      x.[BPOCPORT],
      x.[SPOCPORT],
      x.[NDSVCPVD],
      x.[IFACTOR],
      x.[BFACTOR],
      x.[BPOCFCTR],
      x.[SFACTOR],
      x.[SPOCFCTR],
      x.[LFACTOR],
      x.[BRFACTOR],
      x.[CALCTYPE],
      x.[CATEGORY],
      x.[INCINTOT],
      x.[ESCMONTH],
      x.[REFERBY],
      x.[HUDDESC],
      x.[ESCITEM],
      x.[RATELOCK],
      x.[NOTEDBID],
      x.[NOTESERN],
      x.[HUDALLOW],
      x.[WAIVDBID],
      x.[WAIVSERN],
      x.[INCHUD],
      x.[WAIVED],
      x.[CSHMONTH],
      x.[S_PERIOD],
      A0.[Descript] AS [S_PERIOD_X],
      x.[TOTALATC],
      x.[INCGFE],
      x.[SPOVERRIDE],
      x.[TOTAL],
      x.[DIRECTBILL],
      x.[REFUNDABLE],
      x.[IAGFEVERBIAGE],
      x.[INCHCL],
      x.[CID_FEE_SRVC_PRVDR_CO],
      x.[S_MISC_DESC],
      x.[LOCKEDYN],
      x.[LOCKEDTOTAL],
      x.[ISSUE_CHECK],
      x.[CREDIT_BACK],
      x.[IPORTION],
      x.[BORRCHOOSEPRVDR],
      x.[SUBFEE],
      x.[FEECODE],
      x.[S_AGGTYPE],
      A1.[Descript] AS [S_AGGTYPE_X],
      x.[S_RESP_PARTY],
      A2.[Descript] AS [S_RESP_PARTY_X],
      x.[S_PAIDBY],
      A3.[Descript] AS [S_PAIDBY_X],
      x.[S_PAIDTO],
      A4.[Descript] AS [S_PAIDTO_X],
      x.[SUBCODE],
      x.[IS_NOCOST],
      x.[MANAGED_OVR],
      x.[TO_AFFILIATE],
      x.[S_SECTION_TYPE],
      A5.[Descript] AS [S_SECTION_TYPE_X],
      x.[ID_SECTION_SUBTYPE],
      x.[PREPAID_MONTH],
      x.[S_TOLERANCE_CATEGORY],
      A6.[Descript] AS [S_TOLERANCE_CATEGORY_X],
      x.[S_CHANGE_TYPE],
      A7.[Descript] AS [S_CHANGE_TYPE_X],
      x.[CHANGE_REASON],
      x.[BOROPT],
      x.[EXC_MAPR]
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
