-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_restricted].[VwGF_TLBR_BORROWERID]
AS
   SELECT
      x.[LNUM],
      x.[BNUM],
      x.[DBID],
      x.[ROWSERIALNO],
      x.[PADBID],
      x.[PASERIALNO],
      x.[IDENTIFICATION_TYPE],
      x.[IDENTIFICATION_NUMBER],
      x.[IDENTIFICATION_ORIGIN],
      x.[IDENTIFICATION_DATE],
      x.[IDENTIFICATION_EXP],
      x.[PICTUREID],
      x.[COUNTRY_DBCODE],
      x.[COUNTRY_CODE_A2],
      x.[BORROWERID_STATE]
   FROM [clt_NetO].[GF_TLBR_BORROWERID] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;
