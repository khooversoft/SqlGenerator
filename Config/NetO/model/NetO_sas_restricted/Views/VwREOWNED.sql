-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_restricted].[VwREOWNED]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[BNUM] AS [BNUM],
      x.[DBID] AS [DBID],
      x.[REOCNTR] AS [REOCNTR],
      x.[INCINTOT] AS [INCINTOT],
      x.[REOADDR1] AS [REOADDR1],
      x.[REOADDR2] AS [REOADDR2],
      x.[REOCITY] AS [REOCITY],
      x.[REOSTATE] AS [REOSTATE],
      x.[REOZIP] AS [REOZIP],
      x.[S_REOPST] AS [S_REOPST],
      A0.Descript AS [REOPST],
      x.[S_REOTYP] AS [S_REOTYP],
      A1.Descript AS [REOTYP],
      x.[PRESVAL] AS [PRESVAL],
      x.[PRESMTG] AS [PRESMTG],
      x.[GROSRENT] AS [GROSRENT],
      x.[MTGPYMT] AS [MTGPYMT],
      x.[TINMISC] AS [TINMISC],
      x.[NETRENT] AS [NETRENT],
      x.[PGROSINC] AS [PGROSINC],
      x.[AGROSINC] AS [AGROSINC],
      x.[S_ONRSHP] AS [S_ONRSHP],
      A2.Descript AS [ONRSHP],
      x.[REOCNTRY] AS [REOCNTRY],
      x.[PRIM_RES] AS [PRIM_RES],
      x.[SUBJECTP] AS [SUBJECTP],
      x.[NETRENTOV] AS [NETRENTOV],
      x.[XPROCEED] AS [XPROCEED],
      x.[ASSETCTR] AS [ASSETCTR],
      x.[ISLINKED] AS [ISLINKED],
      x.[XPROCEEDOV] AS [XPROCEEDOV],
      x.[REOCNTY] AS [REOCNTY],
      x.[ORIG_COST] AS [ORIG_COST],
      x.[PERC_OF_OWNERSHIP] AS [PERC_OF_OWNERSHIP],
      x.[ISBLANKET] AS [ISBLANKET],
      x.[MSACODE] AS [MSACODE],
      x.[STCODE] AS [STCODE],
      x.[CYCODE] AS [CYCODE],
      x.[STRUCTURE] AS [STRUCTURE],
      x.[INFLOODZONE] AS [INFLOODZONE],
      x.[PARCELID] AS [PARCELID],
      x.[CENSUSTRACT] AS [CENSUSTRACT],
      x.[CLOSINGDT] AS [CLOSINGDT],
      x.[DISBURSEDT] AS [DISBURSEDT],
      x.[LEGALDBID] AS [LEGALDBID],
      x.[LEGALSERNO] AS [LEGALSERNO],
      x.[VESTINGDBID] AS [VESTINGDBID],
      x.[VESTINGSERNO] AS [VESTINGSERNO],
      x.[RECDIST] AS [RECDIST],
      x.[PROJECTNAME] AS [PROJECTNAME],
      x.[PUDDECLDBID] AS [PUDDECLDBID],
      x.[PUDDECLSERNO] AS [PUDDECLSERNO],
      x.[VERIF_INCOME_TYPE] AS [VERIF_INCOME_TYPE],
      x.[VERIF_DEBT_TYPE] AS [VERIF_DEBT_TYPE],
      x.[VERIF_TYPE_DESC] AS [VERIF_TYPE_DESC],
      x.[VERIFY] AS [VERIFY],
      x.[VERIFIED] AS [VERIFIED],
      x.[HOADUES] AS [HOADUES],
      x.[HOME_IMPRV_FLAG] AS [HOME_IMPRV_FLAG],
      x.[NUMBEROFUNITS_REO] AS [NUMBEROFUNITS_REO],
      x.[DEBT_DOESNTAPPLY] AS [DEBT_DOESNTAPPLY],
      x.[UNITNUMREO] AS [UNITNUMREO],
      x.[UNITTYPEREO] AS [UNITTYPEREO],
      x.[S_ACCOUNT_OWNERSHIP] AS [S_ACCOUNT_OWNERSHIP],
      A3.Descript AS [ACCOUNT_OWNERSHIP],
      x.[XPROCEEDOVR] AS [XPROCEEDOVR],
      x.[S_REO_INTEND_OCCUPANCY] AS [S_REO_INTEND_OCCUPANCY],
      A4.Descript AS [REO_INTEND_OCCUPANCY],
      x.[REO_OTHROCCUP_DESC] AS [REO_OTHROCCUP_DESC],
      x.[S_REO_CURR_PROP_USAGE] AS [S_REO_CURR_PROP_USAGE],
      A5.Descript AS [REO_CURR_PROP_USAGE],
      x.[REO_STATE_FOREIN] AS [REO_STATE_FOREIN],
      x.[REO_POSTCODE] AS [REO_POSTCODE],
      x.[REO_CNTRY_COD] AS [REO_CNTRY_COD],
      x.[RECORD_CREATED] AS [RECORD_CREATED]
   FROM [clt_NetO].[REOWNED] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.S_REOPST = A0.[DBSYMBOL] AND A0.[TableName] = 'REOWNED' and A0.[COLUMNNAME] = 'S_REOPST'
      LEFT JOIN [clt_NetO].[SymbolLookup] A1 on x.S_REOTYP = A1.[DBSYMBOL] AND A1.[TableName] = 'REOWNED' and A1.[COLUMNNAME] = 'S_REOTYP'
      LEFT JOIN [clt_NetO].[SymbolLookup] A2 on x.S_ONRSHP = A2.[DBSYMBOL] AND A2.[TableName] = 'REOWNED' and A2.[COLUMNNAME] = 'S_ONRSHP'
      LEFT JOIN [clt_NetO].[SymbolLookup] A3 on x.S_ACCOUNT_OWNERSHIP = A3.[DBSYMBOL] AND A3.[TableName] = 'REOWNED' and A3.[COLUMNNAME] = 'S_ACCOUNT_OWNERSHIP'
      LEFT JOIN [clt_NetO].[SymbolLookup] A4 on x.S_REO_INTEND_OCCUPANCY = A4.[DBSYMBOL] AND A4.[TableName] = 'REOWNED' and A4.[COLUMNNAME] = 'S_REO_INTEND_OCCUPANCY'
      LEFT JOIN [clt_NetO].[SymbolLookup] A5 on x.S_REO_CURR_PROP_USAGE = A5.[DBSYMBOL] AND A5.[TableName] = 'REOWNED' and A5.[COLUMNNAME] = 'S_REO_CURR_PROP_USAGE'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
