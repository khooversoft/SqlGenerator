-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas].[VwGF_TLBR_BORROWERID]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[BNUM] AS [BNUM],
      x.[DBID] AS [DBID],
      x.[ROWSERIALNO] AS [ROWSERIALNO],
      x.[PADBID] AS [PADBID],
      x.[PASERIALNO] AS [PASERIALNO],
      x.[IDENTIFICATION_TYPE] AS [IDENTIFICATION_TYPE],
      x.[IDENTIFICATION_NUMBER] AS [IDENTIFICATION_NUMBER],
      x.[IDENTIFICATION_ORIGIN] AS [IDENTIFICATION_ORIGIN],
      x.[IDENTIFICATION_DATE] AS [IDENTIFICATION_DATE],
      x.[IDENTIFICATION_EXP] AS [IDENTIFICATION_EXP],
      x.[PICTUREID] AS [PICTUREID],
      x.[COUNTRY_DBCODE] AS [COUNTRY_DBCODE],
      x.[COUNTRY_CODE_A2] AS [COUNTRY_CODE_A2],
      x.[BORROWERID_STATE] AS [BORROWERID_STATE]
   FROM [clt_NetO].[GF_TLBR_BORROWERID] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;
