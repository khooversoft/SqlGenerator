-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_pii].[VwINCOME]
AS
   SELECT
      x.[LNUM],
      x.[BNUM],
      x.[DBID],
      x.[CTR],
      x.[TITLE],
      x.[BUSTYPE],
      x.[SUPERVSR],
      x.[INCMNAME],
      x.[ADDR1],
      x.[ADDR2],
      x.[CITY],
      x.[STATE],
      x.[ZIP],
      x.[PHONE],
      x.[PHONEXT],
      x.[ATTNOF],
      x.[FAXNO],
      x.[ID],
      x.[EMPDFROM],
      x.[EMPDTO],
      x.[YRSATJOB],
      x.[YRSINPRO],
      x.[JEXPDESC],
      x.[JEXPAMT],
      x.[PRIMINC],
      x.[S_INCOME],
      A0.Descript AS [D_INCOME],
      x.[S_PAYPER],
      A1.Descript AS [D_PAYPER],
      x.[INCAMT],
      x.[INCDESC],
      x.[MNTEQUIV],
      x.[USEQUAL],
      x.[TYPEFLAG],
      x.[SELFEMPL],
      x.[BENEFIT],
      x.[BEN_TYPE],
      x.[ACCTOF],
      x.[ACCTNUM],
      x.[VERIFY],
      x.[OTHERDSC],
      x.[NONTAXBL],
      x.[INCOME_VERIFIED],
      x.[MILITARY_YN],
      x.[PERCBUSOWN],
      x.[TSWE_INCOME_IND],
      x.[EFFECTIVE_MO_INC],
      x.[S_JOB_TYPE],
      A2.Descript AS [D_JOB_TYPE],
      x.[OVRTIME_CONT],
      x.[PROB_CONT_EMPLOY],
      x.[OTHERINCTYPEDESC],
      x.[S_SPECBOREMPRELTYPE],
      A3.Descript AS [D_SPECBOREMPRELTYPE],
      x.[OTHERSPECBOREMPRELTYPEDSC],
      x.[RURALHOUSINGCALC],
      x.[COUNTRY],
      x.[VERIFICATION_TYPE],
      x.[VERIF_TYPE_DESC],
      x.[STATED_FLAG],
      x.[RECORD_CREATED],
      x.[S_INCOMECATEGORY],
      A4.Descript AS [D_INCOMECATEGORY],
      x.[OCCUPATION],
      x.[INCSTIND],
      x.[S_SELFEMPTYPE],
      A5.Descript AS [D_SELFEMPTYPE],
      x.[PRE_VERI_GROSS_INC],
      x.[USE_GROSS_INCOME],
      x.[YTD_AMOUNT],
      x.[YTD_AS_OF_DATE],
      x.[INC_SRC_CTR],
      x.[YTD_AVG_INCOME],
      x.[FOREIGNINCOME],
      x.[SEASONALINCOME],
      x.[LIABCTR],
      x.[GROSSUPOVR],
      x.[GROSSUP],
      x.[FROM_INCOME_CALC],
      x.[STATED_INC]
   FROM [clt_NetO].[INCOME] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.S_INCOME = A0.[DBSYMBOL] AND A0.[TableName] = 'INCOME' and A0.[COLUMNNAME] = 'S_INCOME'
      LEFT JOIN [clt_NetO].[SymbolLookup] A1 on x.S_PAYPER = A1.[DBSYMBOL] AND A1.[TableName] = 'INCOME' and A1.[COLUMNNAME] = 'S_PAYPER'
      LEFT JOIN [clt_NetO].[SymbolLookup] A2 on x.S_JOB_TYPE = A2.[DBSYMBOL] AND A2.[TableName] = 'INCOME' and A2.[COLUMNNAME] = 'S_JOB_TYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A3 on x.S_SPECBOREMPRELTYPE = A3.[DBSYMBOL] AND A3.[TableName] = 'INCOME' and A3.[COLUMNNAME] = 'S_SPECBOREMPRELTYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A4 on x.S_INCOMECATEGORY = A4.[DBSYMBOL] AND A4.[TableName] = 'INCOME' and A4.[COLUMNNAME] = 'S_INCOMECATEGORY'
      LEFT JOIN [clt_NetO].[SymbolLookup] A5 on x.S_SELFEMPTYPE = A5.[DBSYMBOL] AND A5.[TableName] = 'INCOME' and A5.[COLUMNNAME] = 'S_SELFEMPTYPE'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
