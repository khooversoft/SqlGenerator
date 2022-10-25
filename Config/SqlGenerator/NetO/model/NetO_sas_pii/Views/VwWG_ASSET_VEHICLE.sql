-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_pii].[VwWG_ASSET_VEHICLE]
AS
   SELECT
      x.[LNUM],
      x.[ASSETID],
      x.[VIN],
      x.[MAKE],
      x.[MODEL],
      x.[YEAR],
      x.[MSRP],
      x.[NEW_YN],
      x.[SERIAL],
      x.[S_FUEL_TYPE],
      x.[VEHICLE_REG_NUMBER],
      x.[BODY_TRIM],
      x.[S_VEHICLE_CONDITION],
      x.[COLL_TITLE_NUM],
      x.[S_CNRE_OWNERSHIP],
      x.[LENGTH],
      x.[WIDTH],
      x.[PRIOR_TITLE_NUM],
      x.[S_TRANSF_AS],
      x.[S_TRANSF_TO],
      x.[S_DAMAGE_TYPE],
      x.[IS_BONAFIDE_GIFT],
      x.[IS_REBUILDABLE],
      x.[IS_ENERGY_EFFICIENT],
      x.[PRIOR_STATE],
      x.[S_COLOR],
      x.[S_GV_WEIGHT_RATING],
      x.[SCALE_WEIGHT],
      x.[PAYOFF_AMT],
      x.[MFG_REBATE],
      x.[DLR_REBATE],
      x.[INVOICE_PRC],
      x.[DLR_OPT_PRICE],
      x.[DLR_OPT_VALUE]
   FROM [clt_NetO].[WG_ASSET_VEHICLE] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;
