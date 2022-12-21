-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO].[VwGF_TLBR_EMPLOYER]
AS
   SELECT
      x.[LNUM],
      x.[BNUM],
      x.[DBID],
      x.[EMPID],
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
      HASHBYTES('SHA2_256', x.[PRIMARY_EMPLOYER]) AS [PRIMARY_EMPLOYER],
      x.[TYPEFLAG],
      x.[SELFEMPL],
      x.[PERCBUSOWN],
      x.[S_JOB_TYPE],
      HASHBYTES('SHA2_256', x.[OVRTIME_CONT]) AS [OVRTIME_CONT],
      x.[PROB_CONT_EMPLOY],
      x.[OTHERINCTYPEDESC],
      x.[S_SPECBOREMPRELTYPE],
      x.[OTHERSPECBOREMPRELTYPEDSC],
      x.[IS_EMPLOYED_ABROAD],
      HASHBYTES('SHA2_256', x.[COUNTRY]) AS [COUNTRY],
      HASHBYTES('SHA2_256', CAST(x.[MONTHS_AT_JOB] AS NVARCHAR(50))) AS [MONTHS_AT_JOB],
      HASHBYTES('SHA2_256', CAST(x.[MONTHS_IN_PROFESSION] AS NVARCHAR(50))) AS [MONTHS_IN_PROFESSION]
   FROM [clt_NetO].[GF_TLBR_EMPLOYER] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
