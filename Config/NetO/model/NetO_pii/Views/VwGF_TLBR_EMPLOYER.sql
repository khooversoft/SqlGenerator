-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_pii].[VwGF_TLBR_EMPLOYER]
AS
   SELECT
      x.[LNUM],
      x.[BNUM],
      x.[DBID],
      x.[EMPID],
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
      x.[PRIMARY_EMPLOYER],
      x.[TYPEFLAG],
      x.[SELFEMPL],
      x.[PERCBUSOWN],
      x.[S_JOB_TYPE],
      A0.Descript AS [S_JOB_TYPEDescription],
      x.[OVRTIME_CONT],
      x.[PROB_CONT_EMPLOY],
      x.[OTHERINCTYPEDESC],
      x.[S_SPECBOREMPRELTYPE],
      A1.Descript AS [S_SPECBOREMPRELTYPEDescription],
      x.[OTHERSPECBOREMPRELTYPEDSC],
      x.[IS_EMPLOYED_ABROAD],
      x.[COUNTRY],
      x.[MONTHS_AT_JOB],
      x.[MONTHS_IN_PROFESSION]
   FROM [clt_NetO].[GF_TLBR_EMPLOYER] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.S_JOB_TYPE = A0.[DBSYMBOL] AND A0.[TableName] = 'GF_TLBR_EMPLOYER' and A0.[COLUMNNAME] = 'S_JOB_TYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A1 on x.S_SPECBOREMPRELTYPE = A1.[DBSYMBOL] AND A1.[TableName] = 'GF_TLBR_EMPLOYER' and A1.[COLUMNNAME] = 'S_SPECBOREMPRELTYPE'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
