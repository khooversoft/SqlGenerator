-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO].[VwGF_TL_HOUSING_PROPSD]
AS
   SELECT
      x.[LNUM],
      x.[GROUND_RENT_AMT],
      x.[GROUND_RENT_OVRD],
      x.[HAZARD_INS_AMT],
      x.[HAZARD_INS_OVRD],
      x.[HOA_DUES_AMT],
      x.[HOA_DUES_OVRD],
      x.[LEASEHOLD_PMT_AMT],
      x.[LEASEHOLD_PMT_OVRD],
      x.[MAINT_MISC_AMT],
      x.[MAINT_MISC_OVRD],
      x.[MI_AMT],
      x.[MI_OVRD],
      x.[MTG_PITI_AMT],
      x.[MTG_PITI_OVRD],
      x.[MTG_PRIN_INT_AMT],
      x.[MTG_PRIN_INT_OVRD],
      x.[OTHER_MTG_PITI_AMT],
      x.[OTHER_MTG_PITI_OVRD],
      x.[OTHER_MTG_PRIN_INT_AMT],
      x.[OTHER_MTG_PRIN_INT_OVRD],
      x.[REAL_ESTATE_TAX_AMT],
      x.[REAL_ESTATE_TAX_OVRD],
      x.[UTILITIES_AMT],
      x.[UTILITIES_OVRD],
      x.[OTHER_EXP_ALL],
      x.[TOTAL_PROPOSED],
      x.[ASSESSMENT_AMT],
      x.[ASSESSMENT_OVRD],
      x.[FLOOD_INS_AMT],
      x.[FLOOD_INS_OVRD],
      x.[WATER_PURI_AMT],
      x.[WATER_PURI_OVRD],
      x.[SUPPLE_INS_AMT_OVRD],
      x.[SUPPLE_INS_AMT],
      x.[HOMEOWN_INS_AMT_OVRD],
      x.[HOMEOWN_INS_AMT]
   FROM [clt_NetO].[GF_TL_HOUSING_PROPSD] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
