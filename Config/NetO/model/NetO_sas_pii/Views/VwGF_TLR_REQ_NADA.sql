-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_pii].[VwGF_TLR_REQ_NADA]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[DBID] AS [DBID],
      x.[REQUESTID] AS [REQUESTID],
      x.[NADAREQUESTID] AS [NADAREQUESTID],
      x.[VIN] AS [VIN],
      x.[REGION] AS [REGION],
      x.[VEHICLEYEAR] AS [VEHICLEYEAR],
      x.[MAKE] AS [MAKE],
      x.[SERIES] AS [SERIES],
      x.[BODY] AS [BODY],
      x.[MILEAGE] AS [MILEAGE]
   FROM [clt_NetO].[GF_TLR_REQ_NADA] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
