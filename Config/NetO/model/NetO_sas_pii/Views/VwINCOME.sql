-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_pii].[VwINCOME]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[BNUM] AS [BNUM],
      x.[DBID] AS [DBID],
      x.[CTR] AS [CTR],
      x.[TITLE] AS [TITLE],
      x.[BUSTYPE] AS [BUSTYPE],
      x.[SUPERVSR] AS [SUPERVSR],
      x.[INCMNAME] AS [INCMNAME],
      x.[ADDR1] AS [ADDR1],
      x.[ADDR2] AS [ADDR2],
      x.[CITY] AS [CITY],
      x.[STATE] AS [STATE],
      x.[ZIP] AS [ZIP],
      x.[PHONE] AS [PHONE],
      x.[PHONEXT] AS [PHONEXT],
      x.[ATTNOF] AS [ATTNOF],
      x.[FAXNO] AS [FAXNO],
      x.[ID] AS [ID],
      x.[EMPDFROM] AS [EMPDFROM],
      x.[EMPDTO] AS [EMPDTO],
      x.[YRSATJOB] AS [YRSATJOB],
      x.[YRSINPRO] AS [YRSINPRO],
      x.[JEXPDESC] AS [JEXPDESC],
      x.[JEXPAMT] AS [JEXPAMT],
      x.[PRIMINC] AS [PRIMINC],
      x.[S_INCOME] AS [S_INCOME],
      A0.Descript AS [S_INCOME_Description],
      x.[S_PAYPER] AS [S_PAYPER],
      A1.Descript AS [S_PAYPER_Description],
      x.[INCAMT] AS [INCAMT],
      x.[INCDESC] AS [INCDESC],
      x.[MNTEQUIV] AS [MNTEQUIV],
      x.[USEQUAL] AS [USEQUAL],
      x.[TYPEFLAG] AS [TYPEFLAG],
      x.[SELFEMPL] AS [SELFEMPL],
      x.[BENEFIT] AS [BENEFIT],
      x.[BEN_TYPE] AS [BEN_TYPE],
      x.[ACCTOF] AS [ACCTOF],
      x.[ACCTNUM] AS [ACCTNUM],
      x.[VERIFY] AS [VERIFY],
      x.[OTHERDSC] AS [OTHERDSC],
      x.[NONTAXBL] AS [NONTAXBL],
      x.[INCOME_VERIFIED] AS [INCOME_VERIFIED],
      x.[MILITARY_YN] AS [MILITARY_YN],
      x.[PERCBUSOWN] AS [PERCBUSOWN],
      x.[TSWE_INCOME_IND] AS [TSWE_INCOME_IND],
      x.[EFFECTIVE_MO_INC] AS [EFFECTIVE_MO_INC],
      x.[S_JOB_TYPE] AS [S_JOB_TYPE],
      A2.Descript AS [S_JOB_TYPE_Description],
      x.[OVRTIME_CONT] AS [OVRTIME_CONT],
      x.[PROB_CONT_EMPLOY] AS [PROB_CONT_EMPLOY],
      x.[OTHERINCTYPEDESC] AS [OTHERINCTYPEDESC],
      x.[S_SPECBOREMPRELTYPE] AS [S_SPECBOREMPRELTYPE],
      A3.Descript AS [S_SPECBOREMPRELTYPE_Description],
      x.[OTHERSPECBOREMPRELTYPEDSC] AS [OTHERSPECBOREMPRELTYPEDSC],
      x.[RURALHOUSINGCALC] AS [RURALHOUSINGCALC],
      x.[COUNTRY] AS [COUNTRY],
      x.[VERIFICATION_TYPE] AS [VERIFICATION_TYPE],
      x.[VERIF_TYPE_DESC] AS [VERIF_TYPE_DESC],
      x.[STATED_FLAG] AS [STATED_FLAG],
      x.[RECORD_CREATED] AS [RECORD_CREATED],
      x.[S_INCOMECATEGORY] AS [S_INCOMECATEGORY],
      A4.Descript AS [S_INCOMECATEGORY_Description],
      x.[OCCUPATION] AS [OCCUPATION],
      x.[INCSTIND] AS [INCSTIND],
      x.[S_SELFEMPTYPE] AS [S_SELFEMPTYPE],
      A5.Descript AS [S_SELFEMPTYPE_Description],
      x.[PRE_VERI_GROSS_INC] AS [PRE_VERI_GROSS_INC],
      x.[USE_GROSS_INCOME] AS [USE_GROSS_INCOME],
      x.[YTD_AMOUNT] AS [YTD_AMOUNT],
      x.[YTD_AS_OF_DATE] AS [YTD_AS_OF_DATE],
      x.[INC_SRC_CTR] AS [INC_SRC_CTR],
      x.[YTD_AVG_INCOME] AS [YTD_AVG_INCOME],
      x.[FOREIGNINCOME] AS [FOREIGNINCOME],
      x.[SEASONALINCOME] AS [SEASONALINCOME],
      x.[LIABCTR] AS [LIABCTR],
      x.[GROSSUPOVR] AS [GROSSUPOVR],
      x.[GROSSUP] AS [GROSSUP],
      x.[FROM_INCOME_CALC] AS [FROM_INCOME_CALC],
      x.[STATED_INC] AS [STATED_INC]
   FROM [clt_NetO].[INCOME] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.S_INCOME = A0.DBSYMBOL AND A0.[TableName] = 'INCOME' and A0.[COLUMNNAME] = 'S_INCOME'
      LEFT JOIN [clt_NetO].[SymbolLookup] A1 on x.S_PAYPER = A1.DBSYMBOL AND A1.[TableName] = 'INCOME' and A1.[COLUMNNAME] = 'S_PAYPER'
      LEFT JOIN [clt_NetO].[SymbolLookup] A2 on x.S_JOB_TYPE = A2.DBSYMBOL AND A2.[TableName] = 'INCOME' and A2.[COLUMNNAME] = 'S_JOB_TYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A3 on x.S_SPECBOREMPRELTYPE = A3.DBSYMBOL AND A3.[TableName] = 'INCOME' and A3.[COLUMNNAME] = 'S_SPECBOREMPRELTYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A4 on x.S_INCOMECATEGORY = A4.DBSYMBOL AND A4.[TableName] = 'INCOME' and A4.[COLUMNNAME] = 'S_INCOMECATEGORY'
      LEFT JOIN [clt_NetO].[SymbolLookup] A5 on x.S_SELFEMPTYPE = A5.DBSYMBOL AND A5.[TableName] = 'INCOME' and A5.[COLUMNNAME] = 'S_SELFEMPTYPE'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
