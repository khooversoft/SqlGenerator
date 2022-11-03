-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas].[VwWG_RPT_PROPERTY]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[CENSUS_TRACT] AS [CENSUS_TRACT],
      x.[COUNTY_CODE] AS [COUNTY_CODE],
      x.[MSA_CODE] AS [MSA_CODE],
      x.[PROJECT_CLASS] AS [PROJECT_CLASS],
      x.[PROJECT_NAME] AS [PROJECT_NAME],
      x.[PROP_ADDR1] AS [PROP_ADDR1],
      x.[PROP_ADDR2] AS [PROP_ADDR2],
      x.[PROP_CITY] AS [PROP_CITY],
      x.[PROP_COUNTY] AS [PROP_COUNTY],
      x.[PROP_STATE] AS [PROP_STATE],
      x.[PROP_ZIP] AS [PROP_ZIP],
      x.[PROPERTY_TYPE] AS [PROPERTY_TYPE],
      x.[PROPERTY_TYPE_DESC] AS [PROPERTY_TYPE_DESC],
      x.[STATE_CODE] AS [STATE_CODE],
      x.[YEAR_BUILT] AS [YEAR_BUILT],
      x.[NUMBER_OF_UNITS] AS [NUMBER_OF_UNITS],
      x.[PROP_COUNTRY] AS [PROP_COUNTRY]
   FROM [clt_NetO].[WG_RPT_PROPERTY] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;
