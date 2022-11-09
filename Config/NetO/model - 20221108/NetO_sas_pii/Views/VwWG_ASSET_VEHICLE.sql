-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_pii].[VwWG_ASSET_VEHICLE]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[ASSETID] AS [ASSETID],
      x.[VIN] AS [VIN],
      x.[MAKE] AS [MAKE],
      x.[MODEL] AS [MODEL],
      x.[YEAR] AS [YEAR],
      x.[MSRP] AS [MSRP],
      x.[NEW_YN] AS [NEW_YN],
      x.[SERIAL] AS [SERIAL],
      x.[S_FUEL_TYPE] AS [S_FUEL_TYPE],
      x.[VEHICLE_REG_NUMBER] AS [VEHICLE_REG_NUMBER],
      x.[BODY_TRIM] AS [BODY_TRIM],
      x.[S_VEHICLE_CONDITION] AS [S_VEHICLE_CONDITION],
      x.[COLL_TITLE_NUM] AS [COLL_TITLE_NUM],
      x.[S_CNRE_OWNERSHIP] AS [S_CNRE_OWNERSHIP],
      x.[LENGTH] AS [LENGTH],
      x.[WIDTH] AS [WIDTH],
      x.[PRIOR_TITLE_NUM] AS [PRIOR_TITLE_NUM],
      x.[S_TRANSF_AS] AS [S_TRANSF_AS],
      x.[S_TRANSF_TO] AS [S_TRANSF_TO],
      x.[S_DAMAGE_TYPE] AS [S_DAMAGE_TYPE],
      x.[IS_BONAFIDE_GIFT] AS [IS_BONAFIDE_GIFT],
      x.[IS_REBUILDABLE] AS [IS_REBUILDABLE],
      x.[IS_ENERGY_EFFICIENT] AS [IS_ENERGY_EFFICIENT],
      x.[PRIOR_STATE] AS [PRIOR_STATE],
      x.[S_COLOR] AS [S_COLOR],
      x.[S_GV_WEIGHT_RATING] AS [S_GV_WEIGHT_RATING],
      x.[SCALE_WEIGHT] AS [SCALE_WEIGHT],
      x.[PAYOFF_AMT] AS [PAYOFF_AMT],
      x.[MFG_REBATE] AS [MFG_REBATE],
      x.[DLR_REBATE] AS [DLR_REBATE],
      x.[INVOICE_PRC] AS [INVOICE_PRC],
      x.[DLR_OPT_PRICE] AS [DLR_OPT_PRICE],
      x.[DLR_OPT_VALUE] AS [DLR_OPT_VALUE]
   FROM [clt_NetO].[WG_ASSET_VEHICLE] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;
