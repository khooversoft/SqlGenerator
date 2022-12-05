-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas].[VwVETINFO]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[BNUM] AS [BNUM],
      x.[DBID] AS [DBID],
      x.[SERVNUM] AS [SERVNUM],
      x.[S_BRANCH] AS [S_BRANCH],
      A0.Descript AS [D_BRANCH],
      x.[STRTSERV] AS [STRTSERV],
      x.[ENDSERV] AS [ENDSERV],
      x.[EXEMPT] AS [EXEMPT],
      x.[VETDECES] AS [VETDECES],
      x.[DATEDECS] AS [DATEDECS],
      x.[RELNAME] AS [RELNAME],
      x.[RELADDR1] AS [RELADDR1],
      x.[RELADDR2] AS [RELADDR2],
      x.[RELCITY] AS [RELCITY],
      x.[RELSTATE] AS [RELSTATE],
      x.[RELZIP] AS [RELZIP],
      x.[RELPHONE] AS [RELPHONE],
      x.[RELRELTN] AS [RELRELTN],
      x.[SERVPERD] AS [SERVPERD],
      x.[OSRVNUM1] AS [OSRVNUM1],
      x.[S_OBRCH1] AS [S_OBRCH1],
      A1.Descript AS [D_OBRCH1],
      x.[OSTRTDT1] AS [OSTRTDT1],
      x.[OENDDT1] AS [OENDDT1],
      x.[OSRVNUM2] AS [OSRVNUM2],
      x.[S_OBRCH2] AS [S_OBRCH2],
      A2.Descript AS [D_OBRCH2],
      x.[OSTRTDT2] AS [OSTRTDT2],
      x.[OENDDT2] AS [OENDDT2],
      x.[OSRVNUM3] AS [OSRVNUM3],
      x.[S_OBRCH3] AS [S_OBRCH3],
      A3.Descript AS [D_OBRCH3],
      x.[OSTRTDT3] AS [OSTRTDT3],
      x.[OENDDT3] AS [OENDDT3],
      x.[VETSTATUS] AS [VETSTATUS],
      x.[VETENTITLE] AS [VETENTITLE],
      x.[DVETDOB] AS [DVETDOB],
      HASHBYTES('SHA2_256', x.[DVETSSN]) AS [DVETSSN],
      x.[DVETCAIVR] AS [DVETCAIVR],
      x.[STATASCR] AS [STATASCR],
      x.[AWAREVAL] AS [AWAREVAL],
      x.[CERTENCS] AS [CERTENCS],
      x.[CERTLOST] AS [CERTLOST],
      x.[PRESDELQ] AS [PRESDELQ],
      HASHBYTES('SHA2_256', CAST(x.[DELDESSN] AS NVARCHAR(50))) AS [DELDESSN],
      x.[DELDEDBID] AS [DELDEDBID],
      x.[FORECLOS] AS [FORECLOS],
      HASHBYTES('SHA2_256', CAST(x.[FORCLSSN] AS NVARCHAR(50))) AS [FORCLSSN],
      x.[FORCLDBID] AS [FORCLDBID],
      x.[PREVGILN] AS [PREVGILN],
      x.[SUBVALGE] AS [SUBVALGE],
      x.[VETDEBT] AS [VETDEBT],
      x.[VETPORTIONLOAN] AS [VETPORTIONLOAN],
      x.[VETMAXENT] AS [VETMAXENT],
      x.[VETPREVENT] AS [VETPREVENT],
      x.[VETADDLENT] AS [VETADDLENT],
      x.[VETENTCHARGE] AS [VETENTCHARGE],
      x.[VETENTCHARGEOVR] AS [VETENTCHARGEOVR],
      x.[VETENTCODE] AS [VETENTCODE],
      x.[VETFFFACTOR] AS [VETFFFACTOR],
      x.[VETFFTOTAL] AS [VETFFTOTAL],
      x.[CONTCTVA] AS [CONTCTVA],
      x.[PREVCERT] AS [PREVCERT],
      x.[RENEWAL_OFFICE] AS [RENEWAL_OFFICE],
      x.[ELIGIBILITY_OFFICE] AS [ELIGIBILITY_OFFICE],
      x.[GILOAN_OFFICE] AS [GILOAN_OFFICE],
      x.[PRVAPPCT] AS [PRVAPPCT],
      x.[PRVAPPDT] AS [PRVAPPDT],
      x.[RECCERT] AS [RECCERT],
      x.[RECCOMCT] AS [RECCOMCT],
      x.[RECDETE] AS [RECDETE],
      x.[SECLOAN] AS [SECLOAN],
      x.[SATIS] AS [SATIS],
      x.[CLAIM_NBR] AS [CLAIM_NBR],
      HASHBYTES('SHA2_256', x.[NAME_AS_ON_PAPERS1]) AS [NAME_AS_ON_PAPERS1],
      HASHBYTES('SHA2_256', x.[NAME_AS_ON_PAPERS2]) AS [NAME_AS_ON_PAPERS2],
      HASHBYTES('SHA2_256', x.[NAME_AS_ON_PAPERS3]) AS [NAME_AS_ON_PAPERS3],
      HASHBYTES('SHA2_256', x.[NAME_AS_ON_PAPERS4]) AS [NAME_AS_ON_PAPERS4],
      x.[REL_FADDR_INDICATOR] AS [REL_FADDR_INDICATOR],
      x.[ISANOTHERNAME] AS [ISANOTHERNAME],
      x.[CLAIM_LOC] AS [CLAIM_LOC],
      x.[ANOTHERNAME] AS [ANOTHERNAME],
      x.[RETIRED_MILITARY] AS [RETIRED_MILITARY],
      x.[RESERVE_NATLGUARD] AS [RESERVE_NATLGUARD],
      x.[SURVIVING_SPOUSE] AS [SURVIVING_SPOUSE],
      x.[SERVICE_EXPIRATION_DATE] AS [SERVICE_EXPIRATION_DATE]
   FROM [clt_NetO].[VETINFO] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.S_BRANCH = A0.[DBSYMBOL] AND A0.[TableName] = 'VETINFO' and A0.[COLUMNNAME] = 'S_BRANCH'
      LEFT JOIN [clt_NetO].[SymbolLookup] A1 on x.S_OBRCH1 = A1.[DBSYMBOL] AND A1.[TableName] = 'VETINFO' and A1.[COLUMNNAME] = 'S_OBRCH1'
      LEFT JOIN [clt_NetO].[SymbolLookup] A2 on x.S_OBRCH2 = A2.[DBSYMBOL] AND A2.[TableName] = 'VETINFO' and A2.[COLUMNNAME] = 'S_OBRCH2'
      LEFT JOIN [clt_NetO].[SymbolLookup] A3 on x.S_OBRCH3 = A3.[DBSYMBOL] AND A3.[TableName] = 'VETINFO' and A3.[COLUMNNAME] = 'S_OBRCH3'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
