-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_pii].[VwGF_TLB_HOUSING_PRSNT]
AS
   SELECT
      x.[LNUM],
      x.[BNUM],
      x.[DBID],
      x.[GROUND_RENT_AMT],
      x.[HAZARD_INS_AMT],
      x.[HOA_DUES_AMT],
      x.[LEASEHOLD_PMT_AMT],
      x.[MAINT_MISC_AMT],
      x.[MI_AMT],
      x.[MTG_PITI_AMT],
      x.[MTG_PRIN_INT_AMT],
      x.[OTHER_HOUSING_AMT],
      x.[OTHER_MTG_PITI_AMT],
      x.[OTHER_MTG_PRIN_INT_AMT],
      x.[REAL_ESTATE_TAX_AMT],
      x.[RENT_AMT],
      x.[UTILITIES_AMT],
      x.[OTHER_EXP_TOTAL],
      x.[FLOOD_INS_AMT],
      x.[ASSESSMENT_AMT],
      x.[WATER_PURI_AMT]
   FROM [clt_NetO].[GF_TLB_HOUSING_PRSNT] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
