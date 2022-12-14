-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_pii].[VwPREVRES]
AS
   SELECT
      x.[LNUM],
      x.[BNUM],
      x.[DBID],
      x.[RESCTR],
      x.[RESADD1],
      x.[RESADD2],
      x.[RESCITY],
      x.[RESST],
      x.[RESZIP],
      x.[S_OWNRNT],
      A0.[Descript] AS [S_OWNRNT_X],
      x.[RESNMYRS],
      x.[ACCTPREV],
      x.[ACCTHLDR],
      x.[RESCNTRY],
      x.[LANDCTR],
      x.[RESCNTY],
      x.[RES_FADDR_INDICATOR],
      x.[RECORD_CREATED],
      x.[YRS_AT_PREV],
      x.[MNTHS_AT_PREV],
      x.[S_RES_UNIT_TYPE],
      A1.[Descript] AS [S_RES_UNIT_TYPE_X],
      x.[RES_UNIT_NUM],
      x.[RES_CNTRY_CODE],
      x.[PREV_STATE_FOREIN],
      x.[PREV_POSTCODE],
      x.[S_LIVE_RENT_FREE_ENUMS],
      A2.[Descript] AS [S_LIVE_RENT_FREE_ENUMS_X]
   FROM [clt_NetO].[PREVRES] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.[S_OWNRNT] = A0.[DBSYMBOL] AND A0.[TableName] = 'PREVRES' and A0.[COLUMNNAME] = 'S_OWNRNT'
      LEFT JOIN [clt_NetO].[SymbolLookup] A1 on x.[S_RES_UNIT_TYPE] = A1.[DBSYMBOL] AND A1.[TableName] = 'PREVRES' and A1.[COLUMNNAME] = 'S_RES_UNIT_TYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A2 on x.[S_LIVE_RENT_FREE_ENUMS] = A2.[DBSYMBOL] AND A2.[TableName] = 'PREVRES' and A2.[COLUMNNAME] = 'S_LIVE_RENT_FREE_ENUMS'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
