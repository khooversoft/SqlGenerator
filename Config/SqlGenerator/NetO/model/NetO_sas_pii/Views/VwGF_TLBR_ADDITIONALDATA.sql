-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_pii].[VwGF_TLBR_ADDITIONALDATA]
AS
   SELECT
      x.[LNUM],
      x.[BNUM],
      x.[DBID],
      x.[ETHINICITY],
      x.[CELL_PHONE],
      x.[PRIM_CONTACT],
      x.[S_FIRSTTIMEHBCOUNSEL],
      x.[S_TITLE],
      x.[CURRENT_CUSTOMER],
      x.[WORK_EXT],
      x.[CREDIT_AUTHORIZATION_YN],
      x.[NATIONALITY],
      x.[AFFILIATE],
      x.[S_COUNSEL_CONFIRM_TYP],
      x.[S_COUNSEL_CONFIRM_OTH],
      x.[S_COUNSEL_FORMAT_TYP],
      x.[CREDIT_AUTHORIZATION_DATE],
      x.[CUSTOMER_ID],
      x.[S_CRDTSCORE_MODEL_OVR],
      x.[URLA_BESTCONTACT],
      x.[URLA_ALTCONTACT],
      x.[S_CREDIT_TYPE],
      x.[JOINT_CREDIT_BNUM],
      x.[SPOUSE_FNAME],
      x.[SPOUSE_MNAME],
      x.[SPOUSE_LNAME],
      x.[SPOUSE_ADD1],
      x.[SPOUSE_ADD2],
      x.[SPOUSE_CITY],
      x.[SPOUSE_STATE],
      x.[SPOUSE_ZIP],
      x.[ATTR_BORROWER_ID],
      x.[MARITALSTATUSYN],
      x.[DATEOFCHANGEMS],
      x.[EXPLANATIONMS],
      x.[ATTR_CAIVRS],
      x.[ATTR_ESIGN],
      x.[S_LANGUAGEPREFERENCE],
      x.[OTHER_LANGUAGE],
      x.[CURRENTINCOTHERTOTAL],
      x.[CURRENTINCOMETOTAL],
      x.[TOTALCURRENTINCOME],
      x.[ATTR_SPOUSE_INFO],
      x.[ON_NOTE_BORROWERS],
      x.[CALL_CONSENT_PREFER],
      x.[HASCHECKINGACCT_WITHCU],
      x.[HASSAVINGACCT_WITHCU],
      x.[CURRENT_CUSTOMERID],
      x.[ISCUSTOMER_STATUS_VERIFIED],
      x.[ISCURRENTCUSTOMER],
      x.[HMDA_DISC_NOTICE],
      x.[CRDTSCORE_MODEL_OTHDESC_OVR],
      x.[PERSON_RECORD_FOUND]
   FROM [clt_NetO].[GF_TLBR_ADDITIONALDATA] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;
