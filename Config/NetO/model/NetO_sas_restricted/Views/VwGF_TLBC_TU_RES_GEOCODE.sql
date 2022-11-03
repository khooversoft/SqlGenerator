-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_restricted].[VwGF_TLBC_TU_RES_GEOCODE]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[BNUM] AS [BNUM],
      x.[DBID] AS [DBID],
      x.[RESPONSEID] AS [RESPONSEID],
      x.[CREDITRESPONSEID] AS [CREDITRESPONSEID],
      x.[ROWCOUNTER] AS [ROWCOUNTER],
      x.[ADDRESS_IND] AS [ADDRESS_IND],
      x.[GEO_ZIP_CODE] AS [GEO_ZIP_CODE],
      x.[BLOCK_GROUP_STATUS] AS [BLOCK_GROUP_STATUS],
      x.[GEO_STATUS] AS [GEO_STATUS],
      x.[CENSUS_TRACK_STATUS] AS [CENSUS_TRACK_STATUS],
      x.[SMSA_CODE] AS [SMSA_CODE],
      x.[STATE_CODE] AS [STATE_CODE],
      x.[COUNTY_CODE] AS [COUNTY_CODE],
      x.[CENSUS_TRACK_CODE] AS [CENSUS_TRACK_CODE],
      x.[CENSUS_TRACK_SUFFIX] AS [CENSUS_TRACK_SUFFIX],
      x.[BLOCK_CODE] AS [BLOCK_CODE],
      x.[LATITIUDE] AS [LATITIUDE],
      x.[LONGITUDE] AS [LONGITUDE]
   FROM [clt_NetO].[GF_TLBC_TU_RES_GEOCODE] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;
