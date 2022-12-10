-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas].[VwGF_TLBR_EMPLOYER]
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
      HASHBYTES('SHA2_256', x.[CITY]) AS [CITY],
      x.[STATE] AS [STATE],
      HASHBYTES('SHA2_256', x.[ZIP]) AS [ZIP],
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
      x.[OVRTIME_CONT] AS [OVRTIME_CONT],
      x.[PROB_CONT_EMPLOY] AS [PROB_CONT_EMPLOY],
      x.[OTHERINCTYPEDESC] AS [OTHERINCTYPEDESC],
      x.[S_SPECBOREMPRELTYPE] AS [S_SPECBOREMPRELTYPE],
      x.[OTHERSPECBOREMPRELTYPEDSC] AS [OTHERSPECBOREMPRELTYPEDSC],
      x.[IS_EMPLOYED_ABROAD] AS [IS_EMPLOYED_ABROAD],
      x.[COUNTRY] AS [COUNTRY],
      x.[MONTHS_AT_JOB] AS [MONTHS_AT_JOB],
      x.[MONTHS_IN_PROFESSION] AS [MONTHS_IN_PROFESSION]
   FROM [clt_NetO].[GF_TLBR_EMPLOYER] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
