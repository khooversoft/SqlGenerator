-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_pii].[VwGF_TLB_HOUSING_PRSNT]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[BNUM] AS [BNUM],
      x.[DBID] AS [DBID],
      x.[GROUND_RENT_AMT] AS [GROUND_RENT_AMT],
      x.[HAZARD_INS_AMT] AS [HAZARD_INS_AMT],
      x.[HOA_DUES_AMT] AS [HOA_DUES_AMT],
      x.[LEASEHOLD_PMT_AMT] AS [LEASEHOLD_PMT_AMT],
      x.[MAINT_MISC_AMT] AS [MAINT_MISC_AMT],
      x.[MI_AMT] AS [MI_AMT],
      x.[MTG_PITI_AMT] AS [MTG_PITI_AMT],
      x.[MTG_PRIN_INT_AMT] AS [MTG_PRIN_INT_AMT],
      x.[OTHER_HOUSING_AMT] AS [OTHER_HOUSING_AMT],
      x.[OTHER_MTG_PITI_AMT] AS [OTHER_MTG_PITI_AMT],
      x.[OTHER_MTG_PRIN_INT_AMT] AS [OTHER_MTG_PRIN_INT_AMT],
      x.[REAL_ESTATE_TAX_AMT] AS [REAL_ESTATE_TAX_AMT],
      x.[RENT_AMT] AS [RENT_AMT],
      x.[UTILITIES_AMT] AS [UTILITIES_AMT],
      x.[OTHER_EXP_TOTAL] AS [OTHER_EXP_TOTAL],
      x.[FLOOD_INS_AMT] AS [FLOOD_INS_AMT],
      x.[ASSESSMENT_AMT] AS [ASSESSMENT_AMT],
      x.[WATER_PURI_AMT] AS [WATER_PURI_AMT]
   FROM [clt_NetO].[GF_TLB_HOUSING_PRSNT] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;
