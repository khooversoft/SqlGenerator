-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO].[VwWG_COLLATERAL_ADDRESS]
AS
   SELECT
      x.[LNUM],
      x.[BNUM],
      x.[DBID],
      x.[ASSETID],
      HASHBYTES('SHA2_256', CAST(x.[ROWSERIALNO] AS NVARCHAR(50))) AS [ROWSERIALNO],
      HASHBYTES('SHA2_256', x.[COLLATERALADD1]) AS [COLLATERALADD1],
      HASHBYTES('SHA2_256', x.[COLLATERALADD2]) AS [COLLATERALADD2],
      HASHBYTES('SHA2_256', x.[COLLATERALCITY]) AS [COLLATERALCITY],
      HASHBYTES('SHA2_256', x.[COLLATERALSTATE]) AS [COLLATERALSTATE],
      HASHBYTES('SHA2_256', x.[COLLATERALCOUNTY]) AS [COLLATERALCOUNTY],
      HASHBYTES('SHA2_256', x.[COLLATERALZIP]) AS [COLLATERALZIP],
      HASHBYTES('SHA2_256', x.[COLLATERALCOUNTRY]) AS [COLLATERALCOUNTRY],
      HASHBYTES('SHA2_256', x.[LANDLORD_PARKNAME]) AS [LANDLORD_PARKNAME],
      x.[PARK_LORTENT]
   FROM [clt_NetO].[WG_COLLATERAL_ADDRESS] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
