-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_restricted].[VwGF_TLBC_TU_RES_GEOCODE]
AS
   SELECT
      x.[LNUM],
      x.[BNUM],
      x.[DBID],
      x.[RESPONSEID],
      x.[CREDITRESPONSEID],
      x.[ROWCOUNTER],
      x.[ADDRESS_IND],
      x.[GEO_ZIP_CODE],
      x.[BLOCK_GROUP_STATUS],
      x.[GEO_STATUS],
      x.[CENSUS_TRACK_STATUS],
      x.[SMSA_CODE],
      x.[STATE_CODE],
      x.[COUNTY_CODE],
      x.[CENSUS_TRACK_CODE],
      x.[CENSUS_TRACK_SUFFIX],
      x.[BLOCK_CODE],
      x.[LATITIUDE],
      x.[LONGITUDE]
   FROM [clt_NetO].[GF_TLBC_TU_RES_GEOCODE] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;
