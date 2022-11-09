-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas].[VwWG_ASSET_VHCL_RV]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[ASSETID] AS [ASSETID],
      x.[S_RV_TYPE] AS [S_RV_TYPE],
      x.[MILEAGE] AS [MILEAGE],
      x.[NBR_AXLES] AS [NBR_AXLES],
      x.[NBR_SLIDES] AS [NBR_SLIDES],
      x.[RV_LENGTH] AS [RV_LENGTH],
      x.[SELF_CONTAINED_YN] AS [SELF_CONTAINED_YN],
      x.[S_CATEGORY] AS [S_CATEGORY],
      x.[S_MODEL_TYPE] AS [S_MODEL_TYPE]
   FROM [clt_NetO].[WG_ASSET_VHCL_RV] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;
