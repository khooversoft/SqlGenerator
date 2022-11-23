-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_restricted].[VwWG_COLLATERAL_ADDRESS]
AS
   SELECT
      x.[LNUM],
      x.[BNUM],
      x.[DBID],
      x.[ASSETID],
      x.[ROWSERIALNO],
      x.[COLLATERALADD1],
      x.[COLLATERALADD2],
      x.[COLLATERALCITY],
      x.[COLLATERALSTATE],
      x.[COLLATERALCOUNTY],
      x.[COLLATERALZIP],
      x.[COLLATERALCOUNTRY],
      x.[LANDLORD_PARKNAME],
      x.[PARK_LORTENT]
   FROM [clt_NetO].[WG_COLLATERAL_ADDRESS] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
