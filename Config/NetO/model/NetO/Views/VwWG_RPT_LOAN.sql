-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO].[VwWG_RPT_LOAN]
AS
   SELECT
      x.[LNUM],
      x.[CLNUM],
      HASHBYTES('SHA2_256', x.[EXTERNAL_LNUM]) AS [EXTERNAL_LNUM],
      x.[JPM_LNUM],
      x.[AMORTIZATION],
      x.[AMORTIZATION_DESC],
      x.[CHANNEL],
      x.[CHANNEL_DESC],
      HASHBYTES('SHA2_256', CAST(x.[CREDIT_SCORE] AS NVARCHAR(50))) AS [CREDIT_SCORE],
      x.[DOC_TYPE],
      x.[DOC_TYPE_DESC],
      x.[LEAD_SOURCE],
      x.[LEAD_SOURCE_DESC],
      x.[LIEN_POSITION],
      x.[LIEN_POSITION_DESC],
      x.[LOAN_PURPOSE],
      x.[LOAN_PURPOSE_DESC],
      x.[LOAN_STATUS],
      x.[LOAN_STATUS_DESC],
      x.[LOAN_TYPE],
      x.[LOAN_TYPE_DESC],
      x.[OCCUPANCY],
      x.[OCCUPANCY_DESC],
      x.[PREPAY_PENALTY_YN],
      x.[PRODUCT],
      x.[PRODUCT_DESC],
      x.[PROGRAM],
      x.[PROGRAM_DESC],
      x.[UW_DISPOSITION],
      x.[UW_DISPOSITION_DESC],
      x.[LOAN_LOCKED],
      x.[INVLK_COMMITMENT_NBR],
      x.[INVLK_LOCKED],
      x.[INVLK_LOCK_STATUS],
      x.[INVLK_LOCK_STATUS_DESC],
      x.[LOAN_ACTIVITY],
      x.[REFI_PURPOSE],
      x.[REFI_PURPOSE_DESC],
      x.[AGENCY_CASE_NUMBER],
      x.[LOAN_IS_PREQUAL_YN],
      x.[MORTGAGE_TYPE],
      x.[MORTGAGE_TYPE_DESC],
      x.[LOAN_TERM],
      x.[FUNDING_METHOD],
      x.[FUNDING_METHOD_DESC],
      x.[DELIVERY_TERMS],
      x.[DELIVERY_TERMS_DESC],
      x.[CONDITION_TEXT],
      HASHBYTES('SHA2_256', x.[CUSTATE]) AS [CUSTATE],
      x.[CUISACTIVE_YN],
      x.[ESCROW_WAIVER],
      x.[REDISCLOSE_YN],
      x.[PRODUCT_RATECODE],
      x.[UW_TOLERANCE_FLAG],
      x.[GFE_TOLERANCE_FLAG],
      x.[LOCK_CONFIRM_YN],
      x.[CULTURE_CODE],
      x.[LOCK_TYPE],
      x.[LOCK_TYPE_DESC]
   FROM [clt_NetO].[WG_RPT_LOAN] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;
