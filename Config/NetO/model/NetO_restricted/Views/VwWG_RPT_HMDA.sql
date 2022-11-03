-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_restricted].[VwWG_RPT_HMDA]
AS
   SELECT
      x.[LNUM],
      x.[REPORTABLE_YEAR],
      x.[ACTION_DATE],
      x.[ACTION_TAKEN_CODE],
      x.[ACTION_TAKEN],
      x.[PURCHASER_TYPE_CODE],
      x.[PURCHASER_TYPE],
      x.[LOAN_TYPE_CODE],
      x.[LOAN_TYPE],
      x.[LOAN_PURPOSE_CODE],
      x.[LOAN_PURPOSE],
      x.[OWNER_OCCUPANCY_CODE],
      x.[OWNER_OCCUPANCY],
      x.[PREAPPRVL_REQ_TYPE_CODE],
      x.[PREAPPRVL_REQ_TYPE],
      x.[RATE_SPREAD],
      x.[HOEPA_STATUS_CODE],
      x.[HOEPA_STATUS],
      x.[LIEN_STATUS_CODE],
      x.[LIEN_STATUS],
      x.[DENIAL_1_CODE],
      x.[DENIAL_1],
      x.[DENIAL_2_CODE],
      x.[DENIAL_2],
      x.[DENIAL_3_CODE],
      x.[DENIAL_3],
      x.[B1_SEX_CODE],
      x.[B1_SEX],
      x.[B1_ETHNICITY_CODE],
      x.[B1_ETHNICITY],
      x.[B1_RACE_1_CODE],
      x.[B1_RACE_1],
      x.[B1_RACE_2_CODE],
      x.[B1_RACE_2],
      x.[B1_RACE_3_CODE],
      x.[B1_RACE_3],
      x.[B1_RACE_4_CODE],
      x.[B1_RACE_4],
      x.[B1_RACE_5_CODE],
      x.[B1_RACE_5],
      x.[B2_SEX_CODE],
      x.[B2_SEX],
      x.[B2_ETHNICITY_CODE],
      x.[B2_ETHNICITY],
      x.[B2_RACE_1_CODE],
      x.[B2_RACE_1],
      x.[B2_RACE_2_CODE],
      x.[B2_RACE_2],
      x.[B2_RACE_3_CODE],
      x.[B2_RACE_3],
      x.[B2_RACE_4_CODE],
      x.[B2_RACE_4],
      x.[B2_RACE_5_CODE],
      x.[B2_RACE_5]
   FROM [clt_NetO].[WG_RPT_HMDA] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;
