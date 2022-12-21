-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_restricted].[VwSUBJPRP]
AS
   SELECT
      x.[LNUM],
      HASHBYTES('SHA2_256', x.[SUBJADD1]) AS [SUBJADD1],
      HASHBYTES('SHA2_256', x.[SUBJADD2]) AS [SUBJADD2],
      HASHBYTES('SHA2_256', x.[SUBJCITY]) AS [SUBJCITY],
      x.[SUBJST],
      x.[SUBJZIP],
      x.[SUBJNMUN],
      x.[SUBJYRBL],
      x.[SUBJTHLD],
      x.[SUBJMHLD],
      A0.[Descript] AS [SUBJMHLD_X],
      x.[S_OWNRHT],
      A1.[Descript] AS [S_OWNRHT_X],
      x.[SUBJOREX],
      x.[SUBJLPRI],
      x.[SUBJAV],
      x.[SUBJSP],
      x.[S_PRPTYP],
      A2.[Descript] AS [S_PRPTYP_X],
      x.[SUBJSCFN],
      x.[S_DPAYMT],
      A3.[Descript] AS [S_DPAYMT_X],
      x.[S_RESTYP],
      A4.[Descript] AS [S_RESTYP_X],
      x.[SUBJESTE],
      A5.[Descript] AS [SUBJESTE_X],
      x.[SUBJLEXP],
      HASHBYTES('SHA2_256', x.[SUBJCNTY]) AS [SUBJCNTY],
      x.[LOTNUM],
      x.[BLOCKNUM],
      x.[SUBDIV],
      x.[S_PURP],
      A6.[Descript] AS [S_PURP_X],
      x.[STCODE],
      x.[CYCODE],
      x.[MSACODE],
      x.[S_LIENPO],
      A7.[Descript] AS [S_LIENPO_X],
      x.[S_LIENHO],
      A8.[Descript] AS [S_LIENHO_X],
      x.[BALOTHMT],
      x.[SUBJLTV],
      x.[COMBLTV],
      x.[CENTRACT],
      x.[STRALIAS],
      HASHBYTES('SHA2_256', x.[CITYFLAG]) AS [CITYFLAG],
      x.[S_PRJCLS],
      A9.[Descript] AS [S_PRJCLS_X],
      x.[PROJNAME],
      x.[DECLDBID],
      x.[DECLSERL],
      x.[UNITNUM],
      x.[LEGDSCSN],
      x.[LGDSDBID],
      HASHBYTES('SHA2_256', x.[CITYPRCL]) AS [CITYPRCL],
      x.[CNTYPRCL],
      HASHBYTES('SHA2_256', x.[STATPRCL]) AS [STATPRCL],
      x.[TAXKEYNO],
      x.[DBID],
      x.[TYPE1008],
      x.[NETRINC],
      x.[PRPMAIL],
      x.[CONSUBFN],
      x.[ATTCHTYP],
      x.[NUMINHSE],
      x.[SECTION],
      x.[ADJPCTG],
      x.[ADJRI],
      x.[PROP_TITLE_CATEGORY_TYPE],
      A10.[Descript] AS [PROP_TITLE_CATEGORY_TYPE_X],
      x.[PURP_DESCRIPT],
      x.[MAN_HOME_SERIAL_NBR],
      HASHBYTES('SHA2_256', x.[COUNTRY]) AS [COUNTRY],
      x.[LIENPOSOTHER],
      x.[PROPTYPEOTHER],
      x.[S_FREPRJCLS],
      A11.[Descript] AS [S_FREPRJCLS_X],
      x.[S_FNMPRJCLS],
      A12.[Descript] AS [S_FNMPRJCLS_X],
      x.[HOTEL_INDICATOR],
      HASHBYTES('SHA2_256', x.[NONWARRANTABLE]) AS [NONWARRANTABLE],
      x.[NUMBSTORIES],
      x.[HOMESTEAD],
      x.[SECFININPUT],
      x.[INCLRESUBDEBT],
      x.[HOME_STATUS],
      x.[OTHERPROPUSETYPEDESC],
      HASHBYTES('SHA2_256', x.[OTHERPROPRITTYPEDESC]) AS [OTHERPROPRITTYPEDESC],
      x.[OTHEROWNTYPEDESC],
      x.[S_UNIQUEDWELLINGTYPE],
      A13.[Descript] AS [S_UNIQUEDWELLINGTYPE_X],
      x.[OTHERUNIQDWELLINGTYPDSC],
      x.[S_NATIVEAMERICANLANDSTYPE],
      A14.[Descript] AS [S_NATIVEAMERICANLANDSTYPE_X],
      x.[OTHERNATAMERLANDSTYPEDESC],
      x.[COMMLANDTRUSTINDCTR],
      x.[INCLUSIONARYZONEINDCTR],
      x.[S_CATEGORYTYPE],
      A15.[Descript] AS [S_CATEGORYTYPE_X],
      x.[OTHERCATEGORYTYPEDESC],
      x.[S_PROJECTDESIGNTYPE],
      A16.[Descript] AS [S_PROJECTDESIGNTYPE_X],
      x.[OTHERPROJDESIGNTYPEDESC],
      x.[S_PROJECTCLASSTYPE],
      A17.[Descript] AS [S_PROJECTCLASSTYPE_X],
      x.[OTHERPROJCLASSTYPEDESC],
      x.[OTHERDOWNPAYTYPEDESC],
      x.[S_UNITOWNERSHIPTYPE],
      A18.[Descript] AS [S_UNITOWNERSHIPTYPE_X],
      x.[CONCURRENT_FIN_INPUT],
      x.[INCLUDE_ASSIST_PROGS],
      x.[S_DPAYMTNM],
      A19.[Descript] AS [S_DPAYMTNM_X],
      x.[DOWNPAYNMDESC],
      x.[SUBESTAV],
      x.[LTV_ROUNDED],
      x.[TLTV_ROUNDED],
      x.[S_CONDO_PROJECT_STATUS],
      A20.[Descript] AS [S_CONDO_PROJECT_STATUS_X],
      x.[S_PROJ_ATTACH_TYPE],
      A21.[Descript] AS [S_PROJ_ATTACH_TYPE_X],
      x.[S_PROJECT_DESIGN_TYPE],
      A22.[Descript] AS [S_PROJECT_DESIGN_TYPE_X],
      x.[S_ATTACHMENT_TYPE],
      A23.[Descript] AS [S_ATTACHMENT_TYPE_X],
      x.[S_PROJ_CLASS_ID_FNM],
      A24.[Descript] AS [S_PROJ_CLASS_ID_FNM_X],
      x.[S_PROJ_CLASS_ID_FRE],
      A25.[Descript] AS [S_PROJ_CLASS_ID_FRE_X],
      x.[PROJ_UNITS_TOTAL],
      x.[PROJ_UNITS_SOLD],
      x.[ISUSPSVALIDATED],
      HASHBYTES('SHA2_256', x.[SUBJADD3]) AS [SUBJADD3],
      x.[CPMPROID],
      x.[S_FRPROJ],
      A26.[Descript] AS [S_FRPROJ_X],
      x.[S_FMPROJ],
      A27.[Descript] AS [S_FMPROJ_X],
      x.[PROPDESC],
      x.[RENTINC_VERIFIED],
      x.[RENTINC_VERIFY_TYPE],
      A28.[Descript] AS [RENTINC_VERIFY_TYPE_X],
      x.[VERIFY_RENTINC],
      x.[CONDO_UNITS_COV_HAZ],
      x.[CONDO_UNITS_COV_FLD],
      x.[S_STRUCTURETYPE],
      A29.[Descript] AS [S_STRUCTURETYPE_X],
      x.[CEMA],
      x.[FHAHUDAPPROVAL],
      x.[IMP_COST_PLUS_EEM],
      x.[MAX_LIMIT_LOAN_AMT],
      x.[TOTAL_MTG_PROPERTIES],
      x.[S_SUBJUNITTYPE],
      A30.[Descript] AS [S_SUBJUNITTYPE_X],
      x.[CRAEXEMPTION],
      x.[MDINDICATOR],
      x.[MSAINDICATOR],
      x.[SMALLPOPULATION],
      HASHBYTES('SHA2_256', CAST(x.[INCOME_RESTRICT] AS NVARCHAR(50))) AS [INCOME_RESTRICT],
      x.[PROPVALUE_RELIED_ON],
      x.[S_APPRMTHDREQ],
      A31.[Descript] AS [S_APPRMTHDREQ_X],
      x.[S_APPRMTHDREQOVR],
      A32.[Descript] AS [S_APPRMTHDREQOVR_X],
      x.[EXIST_EEM_AMT],
      x.[ISCONDOMINIUM],
      x.[ISCOOPERATIVE],
      x.[ISPUD],
      x.[PROPNOTINPROJ],
      x.[CONVDEEDORLC],
      x.[MIXEDUSE],
      x.[MFHOME],
      x.[TX_50A6],
      x.[S_TRSTYP],
      A33.[Descript] AS [S_TRSTYP_X],
      x.[SHORT_LEGAL_DESC_OVR],
      x.[SUBJTHLCUR],
      x.[ADJLTV],
      x.[ADJCLTV],
      HASHBYTES('SHA2_256', x.[LEASE_HOLDER]) AS [LEASE_HOLDER],
      x.[LEASEHOLD_DATE],
      x.[TX_50F2],
      x.[RESALE_RESTRICTION]
   FROM [clt_NetO].[SUBJPRP] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.[SUBJMHLD] = A0.[DBSYMBOL] AND A0.[TableName] = 'SUBJPRP' and A0.[COLUMNNAME] = 'SUBJMHLD'
      LEFT JOIN [clt_NetO].[SymbolLookup] A1 on x.[S_OWNRHT] = A1.[DBSYMBOL] AND A1.[TableName] = 'SUBJPRP' and A1.[COLUMNNAME] = 'S_OWNRHT'
      LEFT JOIN [clt_NetO].[SymbolLookup] A2 on x.[S_PRPTYP] = A2.[DBSYMBOL] AND A2.[TableName] = 'SUBJPRP' and A2.[COLUMNNAME] = 'S_PRPTYP'
      LEFT JOIN [clt_NetO].[SymbolLookup] A3 on x.[S_DPAYMT] = A3.[DBSYMBOL] AND A3.[TableName] = 'SUBJPRP' and A3.[COLUMNNAME] = 'S_DPAYMT'
      LEFT JOIN [clt_NetO].[SymbolLookup] A4 on x.[S_RESTYP] = A4.[DBSYMBOL] AND A4.[TableName] = 'SUBJPRP' and A4.[COLUMNNAME] = 'S_RESTYP'
      LEFT JOIN [clt_NetO].[SymbolLookup] A5 on x.[SUBJESTE] = A5.[DBSYMBOL] AND A5.[TableName] = 'SUBJPRP' and A5.[COLUMNNAME] = 'SUBJESTE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A6 on x.[S_PURP] = A6.[DBSYMBOL] AND A6.[TableName] = 'SUBJPRP' and A6.[COLUMNNAME] = 'S_PURP'
      LEFT JOIN [clt_NetO].[SymbolLookup] A7 on x.[S_LIENPO] = A7.[DBSYMBOL] AND A7.[TableName] = 'SUBJPRP' and A7.[COLUMNNAME] = 'S_LIENPO'
      LEFT JOIN [clt_NetO].[SymbolLookup] A8 on x.[S_LIENHO] = A8.[DBSYMBOL] AND A8.[TableName] = 'SUBJPRP' and A8.[COLUMNNAME] = 'S_LIENHO'
      LEFT JOIN [clt_NetO].[SymbolLookup] A9 on x.[S_PRJCLS] = A9.[DBSYMBOL] AND A9.[TableName] = 'SUBJPRP' and A9.[COLUMNNAME] = 'S_PRJCLS'
      LEFT JOIN [clt_NetO].[SymbolLookup] A10 on x.[PROP_TITLE_CATEGORY_TYPE] = A10.[DBSYMBOL] AND A10.[TableName] = 'SUBJPRP' and A10.[COLUMNNAME] = 'PROP_TITLE_CATEGORY_TYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A11 on x.[S_FREPRJCLS] = A11.[DBSYMBOL] AND A11.[TableName] = 'SUBJPRP' and A11.[COLUMNNAME] = 'S_FREPRJCLS'
      LEFT JOIN [clt_NetO].[SymbolLookup] A12 on x.[S_FNMPRJCLS] = A12.[DBSYMBOL] AND A12.[TableName] = 'SUBJPRP' and A12.[COLUMNNAME] = 'S_FNMPRJCLS'
      LEFT JOIN [clt_NetO].[SymbolLookup] A13 on x.[S_UNIQUEDWELLINGTYPE] = A13.[DBSYMBOL] AND A13.[TableName] = 'SUBJPRP' and A13.[COLUMNNAME] = 'S_UNIQUEDWELLINGTYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A14 on x.[S_NATIVEAMERICANLANDSTYPE] = A14.[DBSYMBOL] AND A14.[TableName] = 'SUBJPRP' and A14.[COLUMNNAME] = 'S_NATIVEAMERICANLANDSTYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A15 on x.[S_CATEGORYTYPE] = A15.[DBSYMBOL] AND A15.[TableName] = 'SUBJPRP' and A15.[COLUMNNAME] = 'S_CATEGORYTYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A16 on x.[S_PROJECTDESIGNTYPE] = A16.[DBSYMBOL] AND A16.[TableName] = 'SUBJPRP' and A16.[COLUMNNAME] = 'S_PROJECTDESIGNTYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A17 on x.[S_PROJECTCLASSTYPE] = A17.[DBSYMBOL] AND A17.[TableName] = 'SUBJPRP' and A17.[COLUMNNAME] = 'S_PROJECTCLASSTYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A18 on x.[S_UNITOWNERSHIPTYPE] = A18.[DBSYMBOL] AND A18.[TableName] = 'SUBJPRP' and A18.[COLUMNNAME] = 'S_UNITOWNERSHIPTYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A19 on x.[S_DPAYMTNM] = A19.[DBSYMBOL] AND A19.[TableName] = 'SUBJPRP' and A19.[COLUMNNAME] = 'S_DPAYMTNM'
      LEFT JOIN [clt_NetO].[SymbolLookup] A20 on x.[S_CONDO_PROJECT_STATUS] = A20.[DBSYMBOL] AND A20.[TableName] = 'SUBJPRP' and A20.[COLUMNNAME] = 'S_CONDO_PROJECT_STATUS'
      LEFT JOIN [clt_NetO].[SymbolLookup] A21 on x.[S_PROJ_ATTACH_TYPE] = A21.[DBSYMBOL] AND A21.[TableName] = 'SUBJPRP' and A21.[COLUMNNAME] = 'S_PROJ_ATTACH_TYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A22 on x.[S_PROJECT_DESIGN_TYPE] = A22.[DBSYMBOL] AND A22.[TableName] = 'SUBJPRP' and A22.[COLUMNNAME] = 'S_PROJECT_DESIGN_TYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A23 on x.[S_ATTACHMENT_TYPE] = A23.[DBSYMBOL] AND A23.[TableName] = 'SUBJPRP' and A23.[COLUMNNAME] = 'S_ATTACHMENT_TYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A24 on x.[S_PROJ_CLASS_ID_FNM] = A24.[DBSYMBOL] AND A24.[TableName] = 'SUBJPRP' and A24.[COLUMNNAME] = 'S_PROJ_CLASS_ID_FNM'
      LEFT JOIN [clt_NetO].[SymbolLookup] A25 on x.[S_PROJ_CLASS_ID_FRE] = A25.[DBSYMBOL] AND A25.[TableName] = 'SUBJPRP' and A25.[COLUMNNAME] = 'S_PROJ_CLASS_ID_FRE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A26 on x.[S_FRPROJ] = A26.[DBSYMBOL] AND A26.[TableName] = 'SUBJPRP' and A26.[COLUMNNAME] = 'S_FRPROJ'
      LEFT JOIN [clt_NetO].[SymbolLookup] A27 on x.[S_FMPROJ] = A27.[DBSYMBOL] AND A27.[TableName] = 'SUBJPRP' and A27.[COLUMNNAME] = 'S_FMPROJ'
      LEFT JOIN [clt_NetO].[SymbolLookup] A28 on x.[RENTINC_VERIFY_TYPE] = A28.[DBSYMBOL] AND A28.[TableName] = 'SUBJPRP' and A28.[COLUMNNAME] = 'RENTINC_VERIFY_TYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A29 on x.[S_STRUCTURETYPE] = A29.[DBSYMBOL] AND A29.[TableName] = 'SUBJPRP' and A29.[COLUMNNAME] = 'S_STRUCTURETYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A30 on x.[S_SUBJUNITTYPE] = A30.[DBSYMBOL] AND A30.[TableName] = 'SUBJPRP' and A30.[COLUMNNAME] = 'S_SUBJUNITTYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A31 on x.[S_APPRMTHDREQ] = A31.[DBSYMBOL] AND A31.[TableName] = 'SUBJPRP' and A31.[COLUMNNAME] = 'S_APPRMTHDREQ'
      LEFT JOIN [clt_NetO].[SymbolLookup] A32 on x.[S_APPRMTHDREQOVR] = A32.[DBSYMBOL] AND A32.[TableName] = 'SUBJPRP' and A32.[COLUMNNAME] = 'S_APPRMTHDREQOVR'
      LEFT JOIN [clt_NetO].[SymbolLookup] A33 on x.[S_TRSTYP] = A33.[DBSYMBOL] AND A33.[TableName] = 'SUBJPRP' and A33.[COLUMNNAME] = 'S_TRSTYP'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
