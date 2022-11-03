-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_pii].[VwGF_TLBR_EMPLOYER]
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
      x.[OVRTIME_CONT],
      x.[PROB_CONT_EMPLOY],
      x.[OTHERINCTYPEDESC],
      x.[S_SPECBOREMPRELTYPE],
      x.[OTHERSPECBOREMPRELTYPEDSC],
      x.[IS_EMPLOYED_ABROAD],
      x.[COUNTRY],
      x.[MONTHS_AT_JOB],
      x.[MONTHS_IN_PROFESSION]
   FROM [clt_NetO].[GF_TLBR_EMPLOYER] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;
