-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_pii].[VwWG_CNS_LOAN_APPLICATION]
AS
   SELECT
      x.[LNUM],
      x.[CID_BRANCH],
      x.[S_BUSINESS_CHANNEL],
      x.[S_LOAN_TYPE],
      x.[S_LOAN_CATEGORY],
      x.[S_REFERRAL_SOURCE],
      x.[S_LOAN_PURPOSE],
      x.[EMP_LOAN_YN],
      x.[REG_O_LOAN_YN],
      x.[TSWE_EXPECTED_YN],
      x.[TSWE_EXISTS_YN],
      x.[TSWE_GUIDELINES_MET_YN],
      x.[PRE_APPR_REQ_YN],
      x.[PRE_APPR_DATE],
      x.[MBA_YN],
      x.[IS_PERSONALUSE_YN],
      x.[S_PRIMARY_COLLATERAL_TYPE],
      x.[COLLATERAL_STATE],
      x.[VENDOR_VAL_METHOD],
      x.[VALUATION_SOURCE],
      x.[VEHICLE_FUEL_TYPE],
      x.[VEHICLE_MILEAGE],
      x.[CURRENTMODELYR],
      x.[COLLAGEYRS],
      x.[S_TITLE_TRANSFER],
      x.[S_SECONDARY_COLLATERAL_TYPE]
   FROM [clt_NetO].[WG_CNS_LOAN_APPLICATION] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;
