-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas].[VwWG_ASSET]
AS
   SELECT
      x.[LNUM],
      x.[ASSETID],
      x.[S_ASSET_TYPE],
      x.[S_ASSET_PURPOSE],
      x.[ASSET_VERIFIED],
      x.[VERIFICATION_REQD],
      x.[OWNER_EST_VALUE],
      x.[ACTUAL_VALUE],
      x.[SALES_PRICE],
      x.[ASSET_DESC],
      x.[DISCOUNT_PCT],
      x.[SALES_PRICE_VALUE],
      x.[DISCOUNT_PCTOVD],
      x.[PRIMARY_COLLATERAL],
      x.[RECORD_CREATED]
   FROM [clt_NetO].[WG_ASSET] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;
