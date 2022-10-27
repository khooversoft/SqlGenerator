-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_restricted].[VwGF_TLR_REQUESTS]
AS
   SELECT
      x.[LNUM],
      x.[DBID],
      x.[REQUESTID],
      x.[TIMESTAMP]
   FROM [clt_NetO].[GF_TLR_REQUESTS] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;
