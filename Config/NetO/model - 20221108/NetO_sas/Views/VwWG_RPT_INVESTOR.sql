-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas].[VwWG_RPT_INVESTOR]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[MLPSA_KEY] AS [MLPSA_KEY],
      x.[PACKAGE_ID] AS [PACKAGE_ID],
      x.[TRADECONFIRM_ID] AS [TRADECONFIRM_ID],
      x.[FUNDING_ID] AS [FUNDING_ID],
      x.[COUPON_STRIP] AS [COUPON_STRIP],
      x.[INVLK_LOCK_PERIOD] AS [INVLK_LOCK_PERIOD],
      x.[INVLK_LOCK_PERIOD_DESC] AS [INVLK_LOCK_PERIOD_DESC],
      x.[PIPELINE_LOCK_ID] AS [PIPELINE_LOCK_ID]
   FROM [clt_NetO].[WG_RPT_INVESTOR] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;
