-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO].[VwINCOME]
AS
   SELECT
      x.[LNUM],
      x.[BNUM],
      x.[DBID],
      x.[CTR],
      x.[TITLE],
      x.[BUSTYPE],
      HASHBYTES('SHA2_256', x.[SUPERVSR]) AS [SUPERVSR],
      x.[INCMNAME],
      HASHBYTES('SHA2_256', x.[ADDR1]) AS [ADDR1],
      HASHBYTES('SHA2_256', x.[ADDR2]) AS [ADDR2],
      HASHBYTES('SHA2_256', x.[CITY]) AS [CITY],
      HASHBYTES('SHA2_256', x.[STATE]) AS [STATE],
      HASHBYTES('SHA2_256', x.[ZIP]) AS [ZIP],
      HASHBYTES('SHA2_256', x.[PHONE]) AS [PHONE],
      HASHBYTES('SHA2_256', x.[PHONEXT]) AS [PHONEXT],
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
      A0.[Descript] AS [S_INCOME_X],
      x.[S_PAYPER],
      A1.[Descript] AS [S_PAYPER_X],
      HASHBYTES('SHA2_256', CAST(x.[INCAMT] AS NVARCHAR(50))) AS [INCAMT],
      x.[INCDESC],
      x.[MNTEQUIV],
      x.[USEQUAL],
      x.[TYPEFLAG],
      x.[SELFEMPL],
      x.[BENEFIT],
      x.[BEN_TYPE],
      x.[ACCTOF],
      HASHBYTES('SHA2_256', x.[ACCTNUM]) AS [ACCTNUM],
      x.[VERIFY],
      x.[OTHERDSC],
      HASHBYTES('SHA2_256', x.[NONTAXBL]) AS [NONTAXBL],
      HASHBYTES('SHA2_256', x.[INCOME_VERIFIED]) AS [INCOME_VERIFIED],
      x.[MILITARY_YN],
      x.[PERCBUSOWN],
      x.[TSWE_INCOME_IND],
      x.[EFFECTIVE_MO_INC],
      x.[S_JOB_TYPE],
      A2.[Descript] AS [S_JOB_TYPE_X],
      HASHBYTES('SHA2_256', x.[OVRTIME_CONT]) AS [OVRTIME_CONT],
      x.[PROB_CONT_EMPLOY],
      x.[OTHERINCTYPEDESC],
      x.[S_SPECBOREMPRELTYPE],
      A3.[Descript] AS [S_SPECBOREMPRELTYPE_X],
      x.[OTHERSPECBOREMPRELTYPEDSC],
      x.[RURALHOUSINGCALC],
      HASHBYTES('SHA2_256', x.[COUNTRY]) AS [COUNTRY],
      x.[VERIFICATION_TYPE],
      A4.[Descript] AS [VERIFICATION_TYPE_X],
      x.[VERIF_TYPE_DESC],
      HASHBYTES('SHA2_256', x.[STATED_FLAG]) AS [STATED_FLAG],
      x.[RECORD_CREATED],
      x.[S_INCOMECATEGORY],
      HASHBYTES('SHA2_256', x.[OCCUPATION]) AS [OCCUPATION],
      x.[INCSTIND],
      x.[S_SELFEMPTYPE],
      A5.[Descript] AS [S_SELFEMPTYPE_X],
      x.[PRE_VERI_GROSS_INC],
      x.[USE_GROSS_INCOME],
      HASHBYTES('SHA2_256', CAST(x.[YTD_AMOUNT] AS NVARCHAR(50))) AS [YTD_AMOUNT],
      HASHBYTES('SHA2_256', CAST(x.[YTD_AS_OF_DATE] AS NVARCHAR(50))) AS [YTD_AS_OF_DATE],
      x.[INC_SRC_CTR],
      HASHBYTES('SHA2_256', CAST(x.[YTD_AVG_INCOME] AS NVARCHAR(50))) AS [YTD_AVG_INCOME],
      HASHBYTES('SHA2_256', x.[FOREIGNINCOME]) AS [FOREIGNINCOME],
      HASHBYTES('SHA2_256', x.[SEASONALINCOME]) AS [SEASONALINCOME],
      x.[LIABCTR],
      HASHBYTES('SHA2_256', CAST(x.[GROSSUPOVR] AS NVARCHAR(50))) AS [GROSSUPOVR],
      HASHBYTES('SHA2_256', CAST(x.[GROSSUP] AS NVARCHAR(50))) AS [GROSSUP],
      HASHBYTES('SHA2_256', x.[FROM_INCOME_CALC]) AS [FROM_INCOME_CALC],
      HASHBYTES('SHA2_256', CAST(x.[STATED_INC] AS NVARCHAR(50))) AS [STATED_INC]
   FROM [clt_NetO].[INCOME] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.[S_INCOME] = A0.[DBSYMBOL] AND A0.[TableName] = 'INCOME' and A0.[COLUMNNAME] = 'S_INCOME'
      LEFT JOIN [clt_NetO].[SymbolLookup] A1 on x.[S_PAYPER] = A1.[DBSYMBOL] AND A1.[TableName] = 'INCOME' and A1.[COLUMNNAME] = 'S_PAYPER'
      LEFT JOIN [clt_NetO].[SymbolLookup] A2 on x.[S_JOB_TYPE] = A2.[DBSYMBOL] AND A2.[TableName] = 'INCOME' and A2.[COLUMNNAME] = 'S_JOB_TYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A3 on x.[S_SPECBOREMPRELTYPE] = A3.[DBSYMBOL] AND A3.[TableName] = 'INCOME' and A3.[COLUMNNAME] = 'S_SPECBOREMPRELTYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A4 on x.[VERIFICATION_TYPE] = A4.[DBSYMBOL] AND A4.[TableName] = 'INCOME' and A4.[COLUMNNAME] = 'VERIFICATION_TYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A5 on x.[S_SELFEMPTYPE] = A5.[DBSYMBOL] AND A5.[TableName] = 'INCOME' and A5.[COLUMNNAME] = 'S_SELFEMPTYPE'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
