-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_pii].[VwGF_TLBR_EMPLOYER]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[BNUM] AS [BNUM],
      x.[DBID] AS [DBID],
      x.[EMPID] AS [EMPID],
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
      x.[PRIMARY_EMPLOYER] AS [PRIMARY_EMPLOYER],
      x.[TYPEFLAG] AS [TYPEFLAG],
      x.[SELFEMPL] AS [SELFEMPL],
      x.[PERCBUSOWN] AS [PERCBUSOWN],
      x.[S_JOB_TYPE] AS [S_JOB_TYPE],
      A0.Descript AS [JOB_TYPE],
      x.[OVRTIME_CONT] AS [OVRTIME_CONT],
      x.[PROB_CONT_EMPLOY] AS [PROB_CONT_EMPLOY],
      x.[OTHERINCTYPEDESC] AS [OTHERINCTYPEDESC],
      x.[S_SPECBOREMPRELTYPE] AS [S_SPECBOREMPRELTYPE],
      A1.Descript AS [SPECBOREMPRELTYPE],
      x.[OTHERSPECBOREMPRELTYPEDSC] AS [OTHERSPECBOREMPRELTYPEDSC],
      x.[IS_EMPLOYED_ABROAD] AS [IS_EMPLOYED_ABROAD],
      x.[COUNTRY] AS [COUNTRY],
      x.[MONTHS_AT_JOB] AS [MONTHS_AT_JOB],
      x.[MONTHS_IN_PROFESSION] AS [MONTHS_IN_PROFESSION]
   FROM [clt_NetO].[GF_TLBR_EMPLOYER] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.[S_JOB_TYPE] = A0.[DBSYMBOL] AND A0.[TableName] = 'GF_TLBR_EMPLOYER' and A0.[COLUMNNAME] = 'S_JOB_TYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A1 on x.[S_SPECBOREMPRELTYPE] = A1.[DBSYMBOL] AND A1.[TableName] = 'GF_TLBR_EMPLOYER' and A1.[COLUMNNAME] = 'S_SPECBOREMPRELTYPE'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
