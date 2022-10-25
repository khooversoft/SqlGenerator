-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_pii].[VwWG_RPT_PROPERTY]
AS
   SELECT
      x.[LNUM],
      x.[CENSUS_TRACT],
      x.[COUNTY_CODE],
      x.[MSA_CODE],
      x.[PROJECT_CLASS],
      x.[PROJECT_NAME],
      x.[PROP_ADDR1],
      x.[PROP_ADDR2],
      x.[PROP_CITY],
      x.[PROP_COUNTY],
      x.[PROP_STATE],
      x.[PROP_ZIP],
      x.[PROPERTY_TYPE],
      x.[PROPERTY_TYPE_DESC],
      x.[STATE_CODE],
      x.[YEAR_BUILT],
      x.[NUMBER_OF_UNITS],
      x.[PROP_COUNTRY]
   FROM [clt_NetO].[WG_RPT_PROPERTY] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;
