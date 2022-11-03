-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_pii].[VwWG_RPT_BORROWER]
AS
   SELECT
      x.[LNUM],
      x.[B_ORDER],
      x.[BNUM],
      x.[B_AGE],
      x.[B_BORTYPE],
      x.[B_BORTYPE_DESC],
      x.[B_DOB],
      x.[B_EMAIL],
      x.[B_FIRST_TIME_YN],
      x.[B_FOREIGN_NATL_YN],
      x.[B_GENDER],
      x.[B_HOME_PHONE],
      x.[B_MAIL_ADDR1],
      x.[B_MAIL_ADDR2],
      x.[B_MAIL_CITY],
      x.[B_MAIL_COUNTY],
      x.[B_MAIL_STATE],
      x.[B_MAIL_ZIP],
      x.[B_MARITAL_STATUS],
      x.[B_MARITAL_STATUS_DESC],
      x.[B_NAME_FIRST],
      x.[B_NAME_LAST],
      x.[B_NAME_MID],
      x.[B_PRIMARY_YN],
      x.[B_RACE],
      x.[B_RACE_DESC],
      x.[B_SCORE],
      x.[B_SSN],
      x.[B_VETERAN_YN],
      x.[B_WORK_PHONE],
      x.[PROSPECT_CONTACT_METHOD],
      x.[PROSPECT_OPTOUT],
      x.[PROSPECT_STATUS],
      x.[PROSPECT_STATUS_EXP],
      x.[PROSPECT_TIME_TO_CALL],
      x.[PROSPECT_YN],
      x.[ETHNICITY],
      x.[B_INTERVIEW_METHOD],
      x.[B_INTERVIEW_METHOD_DESC],
      x.[USA_CITIZEN_YN],
      x.[B_SCORE_OVR],
      x.[B_CELL_PHONE],
      x.[EMAIL_CONSENT],
      x.[SMS_CONSENT]
   FROM [clt_NetO].[WG_RPT_BORROWER] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;
