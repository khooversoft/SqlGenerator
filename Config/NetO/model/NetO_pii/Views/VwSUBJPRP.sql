-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_pii].[VwSUBJPRP]
AS
   SELECT
      x.[LNUM],
      x.[SUBJADD1],
      x.[SUBJADD2],
      x.[SUBJCITY],
      x.[SUBJST],
      x.[SUBJZIP],
      x.[SUBJNMUN],
      x.[SUBJYRBL],
      x.[SUBJTHLD],
      x.[SUBJMHLD],
      x.[S_OWNRHT],
      A0.Descript AS [D_OWNRHT],
      x.[SUBJOREX],
      x.[SUBJLPRI],
      x.[SUBJAV],
      x.[SUBJSP],
      x.[S_PRPTYP],
      A1.Descript AS [D_PRPTYP],
      x.[SUBJSCFN],
      x.[S_DPAYMT],
      A2.Descript AS [D_DPAYMT],
      x.[S_RESTYP],
      A3.Descript AS [D_RESTYP],
      x.[SUBJESTE],
      x.[SUBJLEXP],
      x.[SUBJCNTY],
      x.[LOTNUM],
      x.[BLOCKNUM],
      x.[SUBDIV],
      x.[S_PURP],
      A4.Descript AS [D_PURP],
      x.[STCODE],
      x.[CYCODE],
      x.[MSACODE],
      x.[S_LIENPO],
      A5.Descript AS [D_LIENPO],
      x.[S_LIENHO],
      A6.Descript AS [D_LIENHO],
      x.[BALOTHMT],
      x.[SUBJLTV],
      x.[COMBLTV],
      x.[CENTRACT],
      x.[STRALIAS],
      x.[CITYFLAG],
      x.[S_PRJCLS],
      A7.Descript AS [D_PRJCLS],
      x.[PROJNAME],
      x.[DECLDBID],
      x.[DECLSERL],
      x.[UNITNUM],
      x.[LEGDSCSN],
      x.[LGDSDBID],
      x.[CITYPRCL],
      x.[CNTYPRCL],
      x.[STATPRCL],
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
      x.[PURP_DESCRIPT],
      x.[MAN_HOME_SERIAL_NBR],
      x.[COUNTRY],
      x.[LIENPOSOTHER],
      x.[PROPTYPEOTHER],
      x.[S_FREPRJCLS],
      A8.Descript AS [D_FREPRJCLS],
      x.[S_FNMPRJCLS],
      A9.Descript AS [D_FNMPRJCLS],
      x.[HOTEL_INDICATOR],
      x.[NONWARRANTABLE],
      x.[NUMBSTORIES],
      x.[HOMESTEAD],
      x.[SECFININPUT],
      x.[INCLRESUBDEBT],
      x.[HOME_STATUS],
      x.[OTHERPROPUSETYPEDESC],
      x.[OTHERPROPRITTYPEDESC],
      x.[OTHEROWNTYPEDESC],
      x.[S_UNIQUEDWELLINGTYPE],
      A10.Descript AS [D_UNIQUEDWELLINGTYPE],
      x.[OTHERUNIQDWELLINGTYPDSC],
      x.[S_NATIVEAMERICANLANDSTYPE],
      A11.Descript AS [D_NATIVEAMERICANLANDSTYPE],
      x.[OTHERNATAMERLANDSTYPEDESC],
      x.[COMMLANDTRUSTINDCTR],
      x.[INCLUSIONARYZONEINDCTR],
      x.[S_CATEGORYTYPE],
      A12.Descript AS [D_CATEGORYTYPE],
      x.[OTHERCATEGORYTYPEDESC],
      x.[S_PROJECTDESIGNTYPE],
      A13.Descript AS [D_PROJECTDESIGNTYPE],
      x.[OTHERPROJDESIGNTYPEDESC],
      x.[S_PROJECTCLASSTYPE],
      A14.Descript AS [D_PROJECTCLASSTYPE],
      x.[OTHERPROJCLASSTYPEDESC],
      x.[OTHERDOWNPAYTYPEDESC],
      x.[S_UNITOWNERSHIPTYPE],
      A15.Descript AS [D_UNITOWNERSHIPTYPE],
      x.[CONCURRENT_FIN_INPUT],
      x.[INCLUDE_ASSIST_PROGS],
      x.[S_DPAYMTNM],
      A16.Descript AS [D_DPAYMTNM],
      x.[DOWNPAYNMDESC],
      x.[SUBESTAV],
      x.[LTV_ROUNDED],
      x.[TLTV_ROUNDED],
      x.[S_CONDO_PROJECT_STATUS],
      A17.Descript AS [D_CONDO_PROJECT_STATUS],
      x.[S_PROJ_ATTACH_TYPE],
      A18.Descript AS [D_PROJ_ATTACH_TYPE],
      x.[S_PROJECT_DESIGN_TYPE],
      A19.Descript AS [D_PROJECT_DESIGN_TYPE],
      x.[S_ATTACHMENT_TYPE],
      A20.Descript AS [D_ATTACHMENT_TYPE],
      x.[S_PROJ_CLASS_ID_FNM],
      A21.Descript AS [D_PROJ_CLASID_FNM],
      x.[S_PROJ_CLASS_ID_FRE],
      A22.Descript AS [D_PROJ_CLASID_FRE],
      x.[PROJ_UNITS_TOTAL],
      x.[PROJ_UNITS_SOLD],
      x.[ISUSPSVALIDATED],
      x.[SUBJADD3],
      x.[CPMPROID],
      x.[S_FRPROJ],
      A23.Descript AS [D_FRPROJ],
      x.[S_FMPROJ],
      A24.Descript AS [D_FMPROJ],
      x.[PROPDESC],
      x.[RENTINC_VERIFIED],
      x.[RENTINC_VERIFY_TYPE],
      x.[VERIFY_RENTINC],
      x.[CONDO_UNITS_COV_HAZ],
      x.[CONDO_UNITS_COV_FLD],
      x.[S_STRUCTURETYPE],
      A25.Descript AS [D_STRUCTURETYPE],
      x.[CEMA],
      x.[FHAHUDAPPROVAL],
      x.[IMP_COST_PLUS_EEM],
      x.[MAX_LIMIT_LOAN_AMT],
      x.[TOTAL_MTG_PROPERTIES],
      x.[S_SUBJUNITTYPE],
      A26.Descript AS [D_SUBJUNITTYPE],
      x.[CRAEXEMPTION],
      x.[MDINDICATOR],
      x.[MSAINDICATOR],
      x.[SMALLPOPULATION],
      x.[INCOME_RESTRICT],
      x.[PROPVALUE_RELIED_ON],
      x.[S_APPRMTHDREQ],
      A27.Descript AS [D_APPRMTHDREQ],
      x.[S_APPRMTHDREQOVR],
      A28.Descript AS [D_APPRMTHDREQOVR],
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
      A29.Descript AS [D_TRSTYP],
      x.[SHORT_LEGAL_DESC_OVR],
      x.[SUBJTHLCUR],
      x.[ADJLTV],
      x.[ADJCLTV],
      x.[LEASE_HOLDER],
      x.[LEASEHOLD_DATE],
      x.[TX_50F2],
      x.[RESALE_RESTRICTION]
   FROM [clt_NetO].[SUBJPRP] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.S_OWNRHT = A0.[DBSYMBOL] AND A0.[TableName] = 'SUBJPRP' and A0.[COLUMNNAME] = 'S_OWNRHT'
      LEFT JOIN [clt_NetO].[SymbolLookup] A1 on x.S_PRPTYP = A1.[DBSYMBOL] AND A1.[TableName] = 'SUBJPRP' and A1.[COLUMNNAME] = 'S_PRPTYP'
      LEFT JOIN [clt_NetO].[SymbolLookup] A2 on x.S_DPAYMT = A2.[DBSYMBOL] AND A2.[TableName] = 'SUBJPRP' and A2.[COLUMNNAME] = 'S_DPAYMT'
      LEFT JOIN [clt_NetO].[SymbolLookup] A3 on x.S_RESTYP = A3.[DBSYMBOL] AND A3.[TableName] = 'SUBJPRP' and A3.[COLUMNNAME] = 'S_RESTYP'
      LEFT JOIN [clt_NetO].[SymbolLookup] A4 on x.S_PURP = A4.[DBSYMBOL] AND A4.[TableName] = 'SUBJPRP' and A4.[COLUMNNAME] = 'S_PURP'
      LEFT JOIN [clt_NetO].[SymbolLookup] A5 on x.S_LIENPO = A5.[DBSYMBOL] AND A5.[TableName] = 'SUBJPRP' and A5.[COLUMNNAME] = 'S_LIENPO'
      LEFT JOIN [clt_NetO].[SymbolLookup] A6 on x.S_LIENHO = A6.[DBSYMBOL] AND A6.[TableName] = 'SUBJPRP' and A6.[COLUMNNAME] = 'S_LIENHO'
      LEFT JOIN [clt_NetO].[SymbolLookup] A7 on x.S_PRJCLS = A7.[DBSYMBOL] AND A7.[TableName] = 'SUBJPRP' and A7.[COLUMNNAME] = 'S_PRJCLS'
      LEFT JOIN [clt_NetO].[SymbolLookup] A8 on x.S_FREPRJCLS = A8.[DBSYMBOL] AND A8.[TableName] = 'SUBJPRP' and A8.[COLUMNNAME] = 'S_FREPRJCLS'
      LEFT JOIN [clt_NetO].[SymbolLookup] A9 on x.S_FNMPRJCLS = A9.[DBSYMBOL] AND A9.[TableName] = 'SUBJPRP' and A9.[COLUMNNAME] = 'S_FNMPRJCLS'
      LEFT JOIN [clt_NetO].[SymbolLookup] A10 on x.S_UNIQUEDWELLINGTYPE = A10.[DBSYMBOL] AND A10.[TableName] = 'SUBJPRP' and A10.[COLUMNNAME] = 'S_UNIQUEDWELLINGTYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A11 on x.S_NATIVEAMERICANLANDSTYPE = A11.[DBSYMBOL] AND A11.[TableName] = 'SUBJPRP' and A11.[COLUMNNAME] = 'S_NATIVEAMERICANLANDSTYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A12 on x.S_CATEGORYTYPE = A12.[DBSYMBOL] AND A12.[TableName] = 'SUBJPRP' and A12.[COLUMNNAME] = 'S_CATEGORYTYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A13 on x.S_PROJECTDESIGNTYPE = A13.[DBSYMBOL] AND A13.[TableName] = 'SUBJPRP' and A13.[COLUMNNAME] = 'S_PROJECTDESIGNTYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A14 on x.S_PROJECTCLASSTYPE = A14.[DBSYMBOL] AND A14.[TableName] = 'SUBJPRP' and A14.[COLUMNNAME] = 'S_PROJECTCLASSTYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A15 on x.S_UNITOWNERSHIPTYPE = A15.[DBSYMBOL] AND A15.[TableName] = 'SUBJPRP' and A15.[COLUMNNAME] = 'S_UNITOWNERSHIPTYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A16 on x.S_DPAYMTNM = A16.[DBSYMBOL] AND A16.[TableName] = 'SUBJPRP' and A16.[COLUMNNAME] = 'S_DPAYMTNM'
      LEFT JOIN [clt_NetO].[SymbolLookup] A17 on x.S_CONDO_PROJECT_STATUS = A17.[DBSYMBOL] AND A17.[TableName] = 'SUBJPRP' and A17.[COLUMNNAME] = 'S_CONDO_PROJECT_STATUS'
      LEFT JOIN [clt_NetO].[SymbolLookup] A18 on x.S_PROJ_ATTACH_TYPE = A18.[DBSYMBOL] AND A18.[TableName] = 'SUBJPRP' and A18.[COLUMNNAME] = 'S_PROJ_ATTACH_TYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A19 on x.S_PROJECT_DESIGN_TYPE = A19.[DBSYMBOL] AND A19.[TableName] = 'SUBJPRP' and A19.[COLUMNNAME] = 'S_PROJECT_DESIGN_TYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A20 on x.S_ATTACHMENT_TYPE = A20.[DBSYMBOL] AND A20.[TableName] = 'SUBJPRP' and A20.[COLUMNNAME] = 'S_ATTACHMENT_TYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A21 on x.S_PROJ_CLASS_ID_FNM = A21.[DBSYMBOL] AND A21.[TableName] = 'SUBJPRP' and A21.[COLUMNNAME] = 'S_PROJ_CLASS_ID_FNM'
      LEFT JOIN [clt_NetO].[SymbolLookup] A22 on x.S_PROJ_CLASS_ID_FRE = A22.[DBSYMBOL] AND A22.[TableName] = 'SUBJPRP' and A22.[COLUMNNAME] = 'S_PROJ_CLASS_ID_FRE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A23 on x.S_FRPROJ = A23.[DBSYMBOL] AND A23.[TableName] = 'SUBJPRP' and A23.[COLUMNNAME] = 'S_FRPROJ'
      LEFT JOIN [clt_NetO].[SymbolLookup] A24 on x.S_FMPROJ = A24.[DBSYMBOL] AND A24.[TableName] = 'SUBJPRP' and A24.[COLUMNNAME] = 'S_FMPROJ'
      LEFT JOIN [clt_NetO].[SymbolLookup] A25 on x.S_STRUCTURETYPE = A25.[DBSYMBOL] AND A25.[TableName] = 'SUBJPRP' and A25.[COLUMNNAME] = 'S_STRUCTURETYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A26 on x.S_SUBJUNITTYPE = A26.[DBSYMBOL] AND A26.[TableName] = 'SUBJPRP' and A26.[COLUMNNAME] = 'S_SUBJUNITTYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A27 on x.S_APPRMTHDREQ = A27.[DBSYMBOL] AND A27.[TableName] = 'SUBJPRP' and A27.[COLUMNNAME] = 'S_APPRMTHDREQ'
      LEFT JOIN [clt_NetO].[SymbolLookup] A28 on x.S_APPRMTHDREQOVR = A28.[DBSYMBOL] AND A28.[TableName] = 'SUBJPRP' and A28.[COLUMNNAME] = 'S_APPRMTHDREQOVR'
      LEFT JOIN [clt_NetO].[SymbolLookup] A29 on x.S_TRSTYP = A29.[DBSYMBOL] AND A29.[TableName] = 'SUBJPRP' and A29.[COLUMNNAME] = 'S_TRSTYP'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
