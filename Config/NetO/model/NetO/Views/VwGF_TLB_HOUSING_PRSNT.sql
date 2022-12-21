-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO].[VwGF_TLB_HOUSING_PRSNT]
AS
   SELECT
      x.[LNUM],
      x.[BNUM],
      x.[DBID],
      HASHBYTES('SHA2_256', CAST(x.[GROUND_RENT_AMT] AS NVARCHAR(50))) AS [GROUND_RENT_AMT],
      x.[HAZARD_INS_AMT],
      x.[HOA_DUES_AMT],
      x.[LEASEHOLD_PMT_AMT],
      x.[MAINT_MISC_AMT],
      x.[MI_AMT],
      x.[MTG_PITI_AMT],
      x.[MTG_PRIN_INT_AMT],
      HASHBYTES('SHA2_256', CAST(x.[OTHER_HOUSING_AMT] AS NVARCHAR(50))) AS [OTHER_HOUSING_AMT],
      HASHBYTES('SHA2_256', CAST(x.[OTHER_MTG_PITI_AMT] AS NVARCHAR(50))) AS [OTHER_MTG_PITI_AMT],
      HASHBYTES('SHA2_256', CAST(x.[OTHER_MTG_PRIN_INT_AMT] AS NVARCHAR(50))) AS [OTHER_MTG_PRIN_INT_AMT],
      x.[REAL_ESTATE_TAX_AMT],
      x.[RENT_AMT],
      x.[UTILITIES_AMT],
      HASHBYTES('SHA2_256', CAST(x.[OTHER_EXP_TOTAL] AS NVARCHAR(50))) AS [OTHER_EXP_TOTAL],
      HASHBYTES('SHA2_256', CAST(x.[FLOOD_INS_AMT] AS NVARCHAR(50))) AS [FLOOD_INS_AMT],
      x.[ASSESSMENT_AMT],
      x.[WATER_PURI_AMT]
   FROM [clt_NetO].[GF_TLB_HOUSING_PRSNT] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
