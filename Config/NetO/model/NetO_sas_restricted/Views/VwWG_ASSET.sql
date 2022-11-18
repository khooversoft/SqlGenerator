-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_restricted].[VwWG_ASSET]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[ASSETID] AS [ASSETID],
      x.[S_ASSET_TYPE] AS [S_ASSET_TYPE],
      x.[S_ASSET_PURPOSE] AS [S_ASSET_PURPOSE],
      x.[ASSET_VERIFIED] AS [ASSET_VERIFIED],
      x.[VERIFICATION_REQD] AS [VERIFICATION_REQD],
      x.[OWNER_EST_VALUE] AS [OWNER_EST_VALUE],
      x.[ACTUAL_VALUE] AS [ACTUAL_VALUE],
      x.[SALES_PRICE] AS [SALES_PRICE],
      x.[ASSET_DESC] AS [ASSET_DESC],
      x.[DISCOUNT_PCT] AS [DISCOUNT_PCT],
      x.[SALES_PRICE_VALUE] AS [SALES_PRICE_VALUE],
      x.[DISCOUNT_PCTOVD] AS [DISCOUNT_PCTOVD],
      x.[PRIMARY_COLLATERAL] AS [PRIMARY_COLLATERAL],
      x.[RECORD_CREATED] AS [RECORD_CREATED]
   FROM [clt_NetO].[WG_ASSET] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;