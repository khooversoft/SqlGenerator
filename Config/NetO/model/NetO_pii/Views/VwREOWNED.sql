-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_pii].[VwREOWNED]
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
      A0.Descript AS [REOPST],
      x.[S_REOTYP],
      A1.Descript AS [REOTYP],
      x.[PRESVAL],
      x.[PRESMTG],
      x.[GROSRENT],
      x.[MTGPYMT],
      x.[TINMISC],
      x.[NETRENT],
      x.[PGROSINC],
      x.[AGROSINC],
      x.[S_ONRSHP],
      A2.Descript AS [ONRSHP],
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
      x.[VERIF_DEBT_TYPE],
      x.[VERIF_TYPE_DESC],
      x.[VERIFY],
      x.[VERIFIED],
      x.[HOADUES],
      x.[HOME_IMPRV_FLAG],
      x.[NUMBEROFUNITS_REO],
      x.[DEBT_DOESNTAPPLY],
      x.[UNITNUMREO],
      x.[UNITTYPEREO],
      x.[S_ACCOUNT_OWNERSHIP],
      A3.Descript AS [ACCOUNT_OWNERSHIP],
      x.[XPROCEEDOVR],
      x.[S_REO_INTEND_OCCUPANCY],
      A4.Descript AS [REO_INTEND_OCCUPANCY],
      x.[REO_OTHROCCUP_DESC],
      x.[S_REO_CURR_PROP_USAGE],
      A5.Descript AS [REO_CURR_PROP_USAGE],
      x.[REO_STATE_FOREIN],
      x.[REO_POSTCODE],
      x.[REO_CNTRY_COD],
      x.[RECORD_CREATED]
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
