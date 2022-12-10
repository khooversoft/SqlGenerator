-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_restricted].[VwREOWNED]
AS
   SELECT
      x.[LNUM],
      x.[BNUM],
      x.[DBID],
      x.[REOCNTR],
      x.[INCINTOT],
      x.[REOADDR1],
      x.[REOADDR2],
      x.[REOCITY],
      x.[REOSTATE],
      x.[REOZIP],
      x.[S_REOPST],
      A0.[Descript] AS [S_REOPST_X],
      x.[S_REOTYP],
      A1.[Descript] AS [S_REOTYP_X],
      x.[PRESVAL],
      x.[PRESMTG],
      x.[GROSRENT],
      x.[MTGPYMT],
      x.[TINMISC],
      x.[NETRENT],
      x.[PGROSINC],
      x.[AGROSINC],
      x.[S_ONRSHP],
      A2.[Descript] AS [S_ONRSHP_X],
      x.[REOCNTRY],
      x.[PRIM_RES],
      x.[SUBJECTP],
      x.[NETRENTOV],
      x.[XPROCEED],
      x.[ASSETCTR],
      x.[ISLINKED],
      x.[XPROCEEDOV],
      x.[REOCNTY],
      x.[ORIG_COST],
      x.[PERC_OF_OWNERSHIP],
      x.[ISBLANKET],
      x.[MSACODE],
      x.[STCODE],
      x.[CYCODE],
      x.[STRUCTURE],
      x.[INFLOODZONE],
      x.[PARCELID],
      x.[CENSUSTRACT],
      x.[CLOSINGDT],
      x.[DISBURSEDT],
      x.[LEGALDBID],
      x.[LEGALSERNO],
      x.[VESTINGDBID],
      x.[VESTINGSERNO],
      x.[RECDIST],
      x.[PROJECTNAME],
      x.[PUDDECLDBID],
      x.[PUDDECLSERNO],
      x.[VERIF_INCOME_TYPE],
      A3.[Descript] AS [VERIF_INCOME_TYPE_X],
      x.[VERIF_DEBT_TYPE],
      A4.[Descript] AS [VERIF_DEBT_TYPE_X],
      x.[VERIF_TYPE_DESC],
      x.[VERIFY],
      x.[VERIFIED],
      x.[HOADUES],
      x.[HOME_IMPRV_FLAG],
      x.[NUMBEROFUNITS_REO],
      x.[DEBT_DOESNTAPPLY],
      x.[UNITNUMREO],
      x.[UNITTYPEREO],
      A5.[Descript] AS [UNITTYPEREO_X],
      x.[S_ACCOUNT_OWNERSHIP],
      A6.[Descript] AS [S_ACCOUNT_OWNERSHIP_X],
      x.[XPROCEEDOVR],
      x.[S_REO_INTEND_OCCUPANCY],
      A7.[Descript] AS [S_REO_INTEND_OCCUPANCY_X],
      x.[REO_OTHROCCUP_DESC],
      x.[S_REO_CURR_PROP_USAGE],
      A8.[Descript] AS [S_REO_CURR_PROP_USAGE_X],
      x.[REO_STATE_FOREIN],
      x.[REO_POSTCODE],
      x.[REO_CNTRY_COD],
      x.[RECORD_CREATED]
   FROM [clt_NetO].[REOWNED] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.[S_REOPST] = A0.[DBSYMBOL] AND A0.[TableName] = 'REOWNED' and A0.[COLUMNNAME] = 'S_REOPST'
      LEFT JOIN [clt_NetO].[SymbolLookup] A1 on x.[S_REOTYP] = A1.[DBSYMBOL] AND A1.[TableName] = 'REOWNED' and A1.[COLUMNNAME] = 'S_REOTYP'
      LEFT JOIN [clt_NetO].[SymbolLookup] A2 on x.[S_ONRSHP] = A2.[DBSYMBOL] AND A2.[TableName] = 'REOWNED' and A2.[COLUMNNAME] = 'S_ONRSHP'
      LEFT JOIN [clt_NetO].[SymbolLookup] A3 on x.[VERIF_INCOME_TYPE] = A3.[DBSYMBOL] AND A3.[TableName] = 'REOWNED' and A3.[COLUMNNAME] = 'VERIF_INCOME_TYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A4 on x.[VERIF_DEBT_TYPE] = A4.[DBSYMBOL] AND A4.[TableName] = 'REOWNED' and A4.[COLUMNNAME] = 'VERIF_DEBT_TYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A5 on x.[UNITTYPEREO] = A5.[DBSYMBOL] AND A5.[TableName] = 'REOWNED' and A5.[COLUMNNAME] = 'UNITTYPEREO'
      LEFT JOIN [clt_NetO].[SymbolLookup] A6 on x.[S_ACCOUNT_OWNERSHIP] = A6.[DBSYMBOL] AND A6.[TableName] = 'REOWNED' and A6.[COLUMNNAME] = 'S_ACCOUNT_OWNERSHIP'
      LEFT JOIN [clt_NetO].[SymbolLookup] A7 on x.[S_REO_INTEND_OCCUPANCY] = A7.[DBSYMBOL] AND A7.[TableName] = 'REOWNED' and A7.[COLUMNNAME] = 'S_REO_INTEND_OCCUPANCY'
      LEFT JOIN [clt_NetO].[SymbolLookup] A8 on x.[S_REO_CURR_PROP_USAGE] = A8.[DBSYMBOL] AND A8.[TableName] = 'REOWNED' and A8.[COLUMNNAME] = 'S_REO_CURR_PROP_USAGE'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
