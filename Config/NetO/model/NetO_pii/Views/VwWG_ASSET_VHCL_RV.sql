-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_pii].[VwWG_ASSET_VHCL_RV]
AS
   SELECT
      x.[LNUM],
      x.[ASSETID],
      x.[S_RV_TYPE],
      x.[MILEAGE],
      x.[NBR_AXLES],
      x.[NBR_SLIDES],
      x.[RV_LENGTH],
      x.[SELF_CONTAINED_YN],
      x.[S_CATEGORY],
      x.[S_MODEL_TYPE]
   FROM [clt_NetO].[WG_ASSET_VHCL_RV] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;
