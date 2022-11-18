-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_restricted].[VwSUBJPRP]
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
      x.[SUBJOREX],
      x.[SUBJLPRI],
      x.[SUBJAV],
      x.[SUBJSP],
      x.[S_PRPTYP],
      x.[SUBJSCFN],
      x.[S_DPAYMT],
      x.[S_RESTYP],
      x.[SUBJESTE],
      x.[SUBJLEXP],
      x.[SUBJCNTY],
      x.[LOTNUM],
      x.[BLOCKNUM],
      x.[SUBDIV],
      x.[S_PURP],
      x.[STCODE],
      x.[CYCODE],
      x.[MSACODE],
      x.[S_LIENPO],
      x.[S_LIENHO],
      x.[BALOTHMT],
      x.[SUBJLTV],
      x.[COMBLTV],
      x.[CENTRACT],
      x.[STRALIAS],
      x.[CITYFLAG],
      x.[S_PRJCLS],
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
      x.[S_FNMPRJCLS],
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
      x.[OTHERUNIQDWELLINGTYPDSC],
      x.[S_NATIVEAMERICANLANDSTYPE],
      x.[OTHERNATAMERLANDSTYPEDESC],
      x.[COMMLANDTRUSTINDCTR],
      x.[INCLUSIONARYZONEINDCTR],
      x.[S_CATEGORYTYPE],
      x.[OTHERCATEGORYTYPEDESC],
      x.[S_PROJECTDESIGNTYPE],
      x.[OTHERPROJDESIGNTYPEDESC],
      x.[S_PROJECTCLASSTYPE],
      x.[OTHERPROJCLASSTYPEDESC],
      x.[OTHERDOWNPAYTYPEDESC],
      x.[S_UNITOWNERSHIPTYPE],
      x.[CONCURRENT_FIN_INPUT],
      x.[INCLUDE_ASSIST_PROGS],
      x.[S_DPAYMTNM],
      x.[DOWNPAYNMDESC],
      x.[SUBESTAV],
      x.[LTV_ROUNDED],
      x.[TLTV_ROUNDED],
      x.[S_CONDO_PROJECT_STATUS],
      x.[S_PROJ_ATTACH_TYPE],
      x.[S_PROJECT_DESIGN_TYPE],
      x.[S_ATTACHMENT_TYPE],
      x.[S_PROJ_CLASS_ID_FNM],
      x.[S_PROJ_CLASS_ID_FRE],
      x.[PROJ_UNITS_TOTAL],
      x.[PROJ_UNITS_SOLD],
      x.[ISUSPSVALIDATED],
      x.[SUBJADD3],
      x.[CPMPROID],
      x.[S_FRPROJ],
      x.[S_FMPROJ],
      x.[PROPDESC],
      x.[RENTINC_VERIFIED],
      x.[RENTINC_VERIFY_TYPE],
      x.[VERIFY_RENTINC],
      x.[CONDO_UNITS_COV_HAZ],
      x.[CONDO_UNITS_COV_FLD],
      x.[S_STRUCTURETYPE],
      x.[CEMA],
      x.[FHAHUDAPPROVAL],
      x.[IMP_COST_PLUS_EEM],
      x.[MAX_LIMIT_LOAN_AMT],
      x.[TOTAL_MTG_PROPERTIES],
      x.[S_SUBJUNITTYPE],
      x.[CRAEXEMPTION],
      x.[MDINDICATOR],
      x.[MSAINDICATOR],
      x.[SMALLPOPULATION],
      x.[INCOME_RESTRICT],
      x.[PROPVALUE_RELIED_ON],
      x.[S_APPRMTHDREQ],
      x.[S_APPRMTHDREQOVR],
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
      x.[SHORT_LEGAL_DESC_OVR],
      x.[SUBJTHLCUR],
      x.[ADJLTV],
      x.[ADJCLTV],
      x.[LEASE_HOLDER],
      x.[LEASEHOLD_DATE],
      x.[TX_50F2],
      x.[RESALE_RESTRICTION]
   FROM [clt_NetO].[SUBJPRP] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;
