-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_restricted].[VwVETINFO]
AS
   SELECT
      x.[LNUM],
      x.[BNUM],
      x.[DBID],
      x.[SERVNUM],
      x.[S_BRANCH],
      A0.Descript AS [S_BRANCH_Description],
      x.[STRTSERV],
      x.[ENDSERV],
      x.[EXEMPT],
      x.[VETDECES],
      x.[DATEDECS],
      x.[RELNAME],
      x.[RELADDR1],
      x.[RELADDR2],
      x.[RELCITY],
      x.[RELSTATE],
      x.[RELZIP],
      x.[RELPHONE],
      x.[RELRELTN],
      x.[SERVPERD],
      x.[OSRVNUM1],
      x.[S_OBRCH1],
      A1.Descript AS [S_OBRCH1_Description],
      x.[OSTRTDT1],
      x.[OENDDT1],
      x.[OSRVNUM2],
      x.[S_OBRCH2],
      A2.Descript AS [S_OBRCH2_Description],
      x.[OSTRTDT2],
      x.[OENDDT2],
      x.[OSRVNUM3],
      x.[S_OBRCH3],
      A3.Descript AS [S_OBRCH3_Description],
      x.[OSTRTDT3],
      x.[OENDDT3],
      x.[VETSTATUS],
      x.[VETENTITLE],
      x.[DVETDOB],
      HASHBYTES('SHA2_256', x.[DVETSSN]) AS [DVETSSN],
      x.[DVETCAIVR],
      x.[STATASCR],
      x.[AWAREVAL],
      x.[CERTENCS],
      x.[CERTLOST],
      x.[PRESDELQ],
      HASHBYTES('SHA2_256', CAST(x.[DELDESSN] AS NVARCHAR(50))) AS [DELDESSN],
      x.[DELDEDBID],
      x.[FORECLOS],
      HASHBYTES('SHA2_256', CAST(x.[FORCLSSN] AS NVARCHAR(50))) AS [FORCLSSN],
      x.[FORCLDBID],
      x.[PREVGILN],
      x.[SUBVALGE],
      x.[VETDEBT],
      x.[VETPORTIONLOAN],
      x.[VETMAXENT],
      x.[VETPREVENT],
      x.[VETADDLENT],
      x.[VETENTCHARGE],
      x.[VETENTCHARGEOVR],
      x.[VETENTCODE],
      x.[VETFFFACTOR],
      x.[VETFFTOTAL],
      x.[CONTCTVA],
      x.[PREVCERT],
      x.[RENEWAL_OFFICE],
      x.[ELIGIBILITY_OFFICE],
      x.[GILOAN_OFFICE],
      x.[PRVAPPCT],
      x.[PRVAPPDT],
      x.[RECCERT],
      x.[RECCOMCT],
      x.[RECDETE],
      x.[SECLOAN],
      x.[SATIS],
      x.[CLAIM_NBR],
      HASHBYTES('SHA2_256', x.[NAME_AS_ON_PAPERS1]) AS [NAME_AS_ON_PAPERS1],
      HASHBYTES('SHA2_256', x.[NAME_AS_ON_PAPERS2]) AS [NAME_AS_ON_PAPERS2],
      HASHBYTES('SHA2_256', x.[NAME_AS_ON_PAPERS3]) AS [NAME_AS_ON_PAPERS3],
      HASHBYTES('SHA2_256', x.[NAME_AS_ON_PAPERS4]) AS [NAME_AS_ON_PAPERS4],
      x.[REL_FADDR_INDICATOR],
      x.[ISANOTHERNAME],
      x.[CLAIM_LOC],
      x.[ANOTHERNAME],
      x.[RETIRED_MILITARY],
      x.[RESERVE_NATLGUARD],
      x.[SURVIVING_SPOUSE],
      x.[SERVICE_EXPIRATION_DATE]
   FROM [clt_NetO].[VETINFO] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.S_BRANCH = A0.DBSYMBOL AND A0.[TableName] = 'VETINFO' and A0.[COLUMNNAME] = 'S_BRANCH'
      LEFT JOIN [clt_NetO].[SymbolLookup] A1 on x.S_OBRCH1 = A1.DBSYMBOL AND A1.[TableName] = 'VETINFO' and A1.[COLUMNNAME] = 'S_OBRCH1'
      LEFT JOIN [clt_NetO].[SymbolLookup] A2 on x.S_OBRCH2 = A2.DBSYMBOL AND A2.[TableName] = 'VETINFO' and A2.[COLUMNNAME] = 'S_OBRCH2'
      LEFT JOIN [clt_NetO].[SymbolLookup] A3 on x.S_OBRCH3 = A3.DBSYMBOL AND A3.[TableName] = 'VETINFO' and A3.[COLUMNNAME] = 'S_OBRCH3'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
