-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO].[VwGF_TLR_REQ_NADA]
AS
   SELECT
      x.[LNUM],
      x.[DBID],
      x.[REQUESTID],
      x.[NADAREQUESTID],
      HASHBYTES('SHA2_256', x.[VIN]) AS [VIN],
      HASHBYTES('SHA2_256', x.[REGION]) AS [REGION],
      x.[VEHICLEYEAR],
      x.[MAKE],
      x.[SERIES],
      x.[BODY],
      x.[MILEAGE]
   FROM [clt_NetO].[GF_TLR_REQ_NADA] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
