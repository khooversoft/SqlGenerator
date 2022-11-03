-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_restricted].[VwSUBJPRP]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[SUBJADD1] AS [SUBJADD1],
      x.[SUBJADD2] AS [SUBJADD2],
      x.[SUBJCITY] AS [SUBJCITY],
      x.[SUBJST] AS [SUBJST],
      x.[SUBJZIP] AS [SUBJZIP],
      x.[SUBJNMUN] AS [SUBJNMUN],
      x.[SUBJYRBL] AS [SUBJYRBL],
      x.[SUBJTHLD] AS [SUBJTHLD],
      x.[SUBJMHLD] AS [SUBJMHLD],
      x.[S_OWNRHT] AS [S_OWNRHT],
      x.[SUBJOREX] AS [SUBJOREX],
      x.[SUBJLPRI] AS [SUBJLPRI],
      x.[SUBJAV] AS [SUBJAV],
      x.[SUBJSP] AS [SUBJSP],
      x.[S_PRPTYP] AS [S_PRPTYP],
      x.[SUBJSCFN] AS [SUBJSCFN],
      x.[S_DPAYMT] AS [S_DPAYMT],
      x.[S_RESTYP] AS [S_RESTYP],
      x.[SUBJESTE] AS [SUBJESTE],
      x.[SUBJLEXP] AS [SUBJLEXP],
      x.[SUBJCNTY] AS [SUBJCNTY],
      x.[LOTNUM] AS [LOTNUM],
      x.[BLOCKNUM] AS [BLOCKNUM],
      x.[SUBDIV] AS [SUBDIV],
      x.[S_PURP] AS [S_PURP],
      x.[STCODE] AS [STCODE],
      x.[CYCODE] AS [CYCODE],
      x.[MSACODE] AS [MSACODE],
      x.[S_LIENPO] AS [S_LIENPO],
      x.[S_LIENHO] AS [S_LIENHO],
      x.[BALOTHMT] AS [BALOTHMT],
      x.[SUBJLTV] AS [SUBJLTV],
      x.[COMBLTV] AS [COMBLTV],
      x.[CENTRACT] AS [CENTRACT],
      x.[STRALIAS] AS [STRALIAS],
      x.[CITYFLAG] AS [CITYFLAG],
      x.[S_PRJCLS] AS [S_PRJCLS],
      x.[PROJNAME] AS [PROJNAME],
      x.[DECLDBID] AS [DECLDBID],
      x.[DECLSERL] AS [DECLSERL],
      x.[UNITNUM] AS [UNITNUM],
      x.[LEGDSCSN] AS [LEGDSCSN],
      x.[LGDSDBID] AS [LGDSDBID],
      x.[CITYPRCL] AS [CITYPRCL],
      x.[CNTYPRCL] AS [CNTYPRCL],
      x.[STATPRCL] AS [STATPRCL],
      x.[TAXKEYNO] AS [TAXKEYNO],
      x.[DBID] AS [DBID],
      x.[TYPE1008] AS [TYPE1008],
      x.[NETRINC] AS [NETRINC],
      x.[PRPMAIL] AS [PRPMAIL],
      x.[CONSUBFN] AS [CONSUBFN],
      x.[ATTCHTYP] AS [ATTCHTYP],
      x.[NUMINHSE] AS [NUMINHSE],
      x.[SECTION] AS [SECTION],
      x.[ADJPCTG] AS [ADJPCTG],
      x.[ADJRI] AS [ADJRI],
      x.[PROP_TITLE_CATEGORY_TYPE] AS [PROP_TITLE_CATEGORY_TYPE],
      x.[PURP_DESCRIPT] AS [PURP_DESCRIPT],
      x.[MAN_HOME_SERIAL_NBR] AS [MAN_HOME_SERIAL_NBR],
      x.[COUNTRY] AS [COUNTRY],
      x.[LIENPOSOTHER] AS [LIENPOSOTHER],
      x.[PROPTYPEOTHER] AS [PROPTYPEOTHER],
      x.[S_FREPRJCLS] AS [S_FREPRJCLS],
      x.[S_FNMPRJCLS] AS [S_FNMPRJCLS],
      x.[HOTEL_INDICATOR] AS [HOTEL_INDICATOR],
      x.[NONWARRANTABLE] AS [NONWARRANTABLE],
      x.[NUMBSTORIES] AS [NUMBSTORIES],
      x.[HOMESTEAD] AS [HOMESTEAD],
      x.[SECFININPUT] AS [SECFININPUT],
      x.[INCLRESUBDEBT] AS [INCLRESUBDEBT],
      x.[HOME_STATUS] AS [HOME_STATUS],
      x.[OTHERPROPUSETYPEDESC] AS [OTHERPROPUSETYPEDESC],
      x.[OTHERPROPRITTYPEDESC] AS [OTHERPROPRITTYPEDESC],
      x.[OTHEROWNTYPEDESC] AS [OTHEROWNTYPEDESC],
      x.[S_UNIQUEDWELLINGTYPE] AS [S_UNIQUEDWELLINGTYPE],
      x.[OTHERUNIQDWELLINGTYPDSC] AS [OTHERUNIQDWELLINGTYPDSC],
      x.[S_NATIVEAMERICANLANDSTYPE] AS [S_NATIVEAMERICANLANDSTYPE],
      x.[OTHERNATAMERLANDSTYPEDESC] AS [OTHERNATAMERLANDSTYPEDESC],
      x.[COMMLANDTRUSTINDCTR] AS [COMMLANDTRUSTINDCTR],
      x.[INCLUSIONARYZONEINDCTR] AS [INCLUSIONARYZONEINDCTR],
      x.[S_CATEGORYTYPE] AS [S_CATEGORYTYPE],
      x.[OTHERCATEGORYTYPEDESC] AS [OTHERCATEGORYTYPEDESC],
      x.[S_PROJECTDESIGNTYPE] AS [S_PROJECTDESIGNTYPE],
      x.[OTHERPROJDESIGNTYPEDESC] AS [OTHERPROJDESIGNTYPEDESC],
      x.[S_PROJECTCLASSTYPE] AS [S_PROJECTCLASSTYPE],
      x.[OTHERPROJCLASSTYPEDESC] AS [OTHERPROJCLASSTYPEDESC],
      x.[OTHERDOWNPAYTYPEDESC] AS [OTHERDOWNPAYTYPEDESC],
      x.[S_UNITOWNERSHIPTYPE] AS [S_UNITOWNERSHIPTYPE],
      x.[CONCURRENT_FIN_INPUT] AS [CONCURRENT_FIN_INPUT],
      x.[INCLUDE_ASSIST_PROGS] AS [INCLUDE_ASSIST_PROGS],
      x.[S_DPAYMTNM] AS [S_DPAYMTNM],
      x.[DOWNPAYNMDESC] AS [DOWNPAYNMDESC],
      x.[SUBESTAV] AS [SUBESTAV],
      x.[LTV_ROUNDED] AS [LTV_ROUNDED],
      x.[TLTV_ROUNDED] AS [TLTV_ROUNDED],
      x.[S_CONDO_PROJECT_STATUS] AS [S_CONDO_PROJECT_STATUS],
      x.[S_PROJ_ATTACH_TYPE] AS [S_PROJ_ATTACH_TYPE],
      x.[S_PROJECT_DESIGN_TYPE] AS [S_PROJECT_DESIGN_TYPE],
      x.[S_ATTACHMENT_TYPE] AS [S_ATTACHMENT_TYPE],
      x.[S_PROJ_CLASS_ID_FNM] AS [S_PROJ_CLASS_ID_FNM],
      x.[S_PROJ_CLASS_ID_FRE] AS [S_PROJ_CLASS_ID_FRE],
      x.[PROJ_UNITS_TOTAL] AS [PROJ_UNITS_TOTAL],
      x.[PROJ_UNITS_SOLD] AS [PROJ_UNITS_SOLD],
      x.[ISUSPSVALIDATED] AS [ISUSPSVALIDATED],
      x.[SUBJADD3] AS [SUBJADD3],
      x.[CPMPROID] AS [CPMPROID],
      x.[S_FRPROJ] AS [S_FRPROJ],
      x.[S_FMPROJ] AS [S_FMPROJ],
      x.[PROPDESC] AS [PROPDESC],
      x.[RENTINC_VERIFIED] AS [RENTINC_VERIFIED],
      x.[RENTINC_VERIFY_TYPE] AS [RENTINC_VERIFY_TYPE],
      x.[VERIFY_RENTINC] AS [VERIFY_RENTINC],
      x.[CONDO_UNITS_COV_HAZ] AS [CONDO_UNITS_COV_HAZ],
      x.[CONDO_UNITS_COV_FLD] AS [CONDO_UNITS_COV_FLD],
      x.[S_STRUCTURETYPE] AS [S_STRUCTURETYPE],
      x.[CEMA] AS [CEMA],
      x.[FHAHUDAPPROVAL] AS [FHAHUDAPPROVAL],
      x.[IMP_COST_PLUS_EEM] AS [IMP_COST_PLUS_EEM],
      x.[MAX_LIMIT_LOAN_AMT] AS [MAX_LIMIT_LOAN_AMT],
      x.[TOTAL_MTG_PROPERTIES] AS [TOTAL_MTG_PROPERTIES],
      x.[S_SUBJUNITTYPE] AS [S_SUBJUNITTYPE],
      x.[CRAEXEMPTION] AS [CRAEXEMPTION],
      x.[MDINDICATOR] AS [MDINDICATOR],
      x.[MSAINDICATOR] AS [MSAINDICATOR],
      x.[SMALLPOPULATION] AS [SMALLPOPULATION],
      x.[INCOME_RESTRICT] AS [INCOME_RESTRICT],
      x.[PROPVALUE_RELIED_ON] AS [PROPVALUE_RELIED_ON],
      x.[S_APPRMTHDREQ] AS [S_APPRMTHDREQ],
      x.[S_APPRMTHDREQOVR] AS [S_APPRMTHDREQOVR],
      x.[EXIST_EEM_AMT] AS [EXIST_EEM_AMT],
      x.[ISCONDOMINIUM] AS [ISCONDOMINIUM],
      x.[ISCOOPERATIVE] AS [ISCOOPERATIVE],
      x.[ISPUD] AS [ISPUD],
      x.[PROPNOTINPROJ] AS [PROPNOTINPROJ],
      x.[CONVDEEDORLC] AS [CONVDEEDORLC],
      x.[MIXEDUSE] AS [MIXEDUSE],
      x.[MFHOME] AS [MFHOME],
      x.[TX_50A6] AS [TX_50A6],
      x.[S_TRSTYP] AS [S_TRSTYP],
      x.[SHORT_LEGAL_DESC_OVR] AS [SHORT_LEGAL_DESC_OVR],
      x.[SUBJTHLCUR] AS [SUBJTHLCUR],
      x.[ADJLTV] AS [ADJLTV],
      x.[ADJCLTV] AS [ADJCLTV],
      x.[LEASE_HOLDER] AS [LEASE_HOLDER],
      x.[LEASEHOLD_DATE] AS [LEASEHOLD_DATE],
      x.[TX_50F2] AS [TX_50F2]
   FROM [clt_NetO].[SUBJPRP] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;
