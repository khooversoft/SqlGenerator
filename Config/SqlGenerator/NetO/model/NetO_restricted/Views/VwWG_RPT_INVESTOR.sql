-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_restricted].[VwWG_RPT_INVESTOR]
AS
   SELECT
      x.[LNUM],
      x.[MLPSA_KEY],
      x.[PACKAGE_ID],
      x.[TRADECONFIRM_ID],
      x.[FUNDING_ID],
      x.[COUPON_STRIP],
      x.[INVLK_LOCK_PERIOD],
      x.[INVLK_LOCK_PERIOD_DESC],
      x.[PIPELINE_LOCK_ID]
   FROM [clt_NetO].[WG_RPT_INVESTOR] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;
