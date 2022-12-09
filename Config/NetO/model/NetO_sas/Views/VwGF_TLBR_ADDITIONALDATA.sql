-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas].[VwGF_TLBR_ADDITIONALDATA]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[BNUM] AS [BNUM],
      x.[DBID] AS [DBID],
      x.[ETHINICITY] AS [ETHINICITY],
      x.[CELL_PHONE] AS [CELL_PHONE],
      x.[PRIM_CONTACT] AS [PRIM_CONTACT],
      x.[S_FIRSTTIMEHBCOUNSEL] AS [S_FIRSTTIMEHBCOUNSEL],
      A0.Descript AS [FIRSTTIMEHBCOUNSEL],
      x.[S_TITLE] AS [S_TITLE],
      A1.Descript AS [TITLE],
      HASHBYTES('SHA2_256', x.[CURRENT_CUSTOMER]) AS [CURRENT_CUSTOMER],
      x.[WORK_EXT] AS [WORK_EXT],
      x.[CREDIT_AUTHORIZATION_YN] AS [CREDIT_AUTHORIZATION_YN],
      x.[NATIONALITY] AS [NATIONALITY],
      x.[AFFILIATE] AS [AFFILIATE],
      x.[S_COUNSEL_CONFIRM_TYP] AS [S_COUNSEL_CONFIRM_TYP],
      A2.Descript AS [COUNSEL_CONFIRM_TYP],
      x.[S_COUNSEL_CONFIRM_OTH] AS [S_COUNSEL_CONFIRM_OTH],
      A3.Descript AS [COUNSEL_CONFIRM_OTH],
      x.[S_COUNSEL_FORMAT_TYP] AS [S_COUNSEL_FORMAT_TYP],
      A4.Descript AS [COUNSEL_FORMAT_TYP],
      x.[CREDIT_AUTHORIZATION_DATE] AS [CREDIT_AUTHORIZATION_DATE],
      x.[CUSTOMER_ID] AS [CUSTOMER_ID],
      x.[S_CRDTSCORE_MODEL_OVR] AS [S_CRDTSCORE_MODEL_OVR],
      A5.Descript AS [CRDTSCORE_MODEL_OVR],
      x.[URLA_BESTCONTACT] AS [URLA_BESTCONTACT],
      x.[URLA_ALTCONTACT] AS [URLA_ALTCONTACT],
      x.[S_CREDIT_TYPE] AS [S_CREDIT_TYPE],
      A6.Descript AS [CREDIT_TYPE],
      x.[JOINT_CREDIT_BNUM] AS [JOINT_CREDIT_BNUM],
      HASHBYTES('SHA2_256', x.[SPOUSE_FNAME]) AS [SPOUSE_FNAME],
      HASHBYTES('SHA2_256', x.[SPOUSE_MNAME]) AS [SPOUSE_MNAME],
      HASHBYTES('SHA2_256', x.[SPOUSE_LNAME]) AS [SPOUSE_LNAME],
      HASHBYTES('SHA2_256', x.[SPOUSE_ADD1]) AS [SPOUSE_ADD1],
      HASHBYTES('SHA2_256', x.[SPOUSE_ADD2]) AS [SPOUSE_ADD2],
      HASHBYTES('SHA2_256', x.[SPOUSE_CITY]) AS [SPOUSE_CITY],
      HASHBYTES('SHA2_256', x.[SPOUSE_STATE]) AS [SPOUSE_STATE],
      HASHBYTES('SHA2_256', x.[SPOUSE_ZIP]) AS [SPOUSE_ZIP],
      x.[ATTR_BORROWER_ID] AS [ATTR_BORROWER_ID],
      x.[MARITALSTATUSYN] AS [MARITALSTATUSYN],
      x.[DATEOFCHANGEMS] AS [DATEOFCHANGEMS],
      x.[EXPLANATIONMS] AS [EXPLANATIONMS],
      x.[ATTR_CAIVRS] AS [ATTR_CAIVRS],
      x.[ATTR_ESIGN] AS [ATTR_ESIGN],
      x.[S_LANGUAGEPREFERENCE] AS [S_LANGUAGEPREFERENCE],
      A7.Descript AS [LANGUAGEPREFERENCE],
      x.[OTHER_LANGUAGE] AS [OTHER_LANGUAGE],
      x.[CURRENTINCOTHERTOTAL] AS [CURRENTINCOTHERTOTAL],
      x.[CURRENTINCOMETOTAL] AS [CURRENTINCOMETOTAL],
      x.[TOTALCURRENTINCOME] AS [TOTALCURRENTINCOME],
      x.[ATTR_SPOUSE_INFO] AS [ATTR_SPOUSE_INFO],
      x.[ON_NOTE_BORROWERS] AS [ON_NOTE_BORROWERS],
      x.[CALL_CONSENT_PREFER] AS [CALL_CONSENT_PREFER],
      x.[HASCHECKINGACCT_WITHCU] AS [HASCHECKINGACCT_WITHCU],
      x.[HASSAVINGACCT_WITHCU] AS [HASSAVINGACCT_WITHCU],
      HASHBYTES('SHA2_256', x.[CURRENT_CUSTOMERID]) AS [CURRENT_CUSTOMERID],
      x.[ISCUSTOMER_STATUS_VERIFIED] AS [ISCUSTOMER_STATUS_VERIFIED],
      x.[ISCURRENTCUSTOMER] AS [ISCURRENTCUSTOMER],
      x.[HMDA_DISC_NOTICE] AS [HMDA_DISC_NOTICE],
      x.[CRDTSCORE_MODEL_OTHDESC_OVR] AS [CRDTSCORE_MODEL_OTHDESC_OVR],
      x.[PERSON_RECORD_FOUND] AS [PERSON_RECORD_FOUND],
      x.[MOTHERS_MAIDEN] AS [MOTHERS_MAIDEN],
      x.[APP_DISCL_READ] AS [APP_DISCL_READ],
      x.[S_ELIGIBLE_TYPE] AS [S_ELIGIBLE_TYPE],
      A8.Descript AS [ELIGIBLE_TYPE],
      x.[ELIGIBLE_CODE] AS [ELIGIBLE_CODE],
      x.[ELIGIBLE_TEXT] AS [ELIGIBLE_TEXT]
   FROM [clt_NetO].[GF_TLBR_ADDITIONALDATA] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.[S_FIRSTTIMEHBCOUNSEL] = A0.[DBSYMBOL] AND A0.[TableName] = 'GF_TLBR_ADDITIONALDATA' and A0.[COLUMNNAME] = 'S_FIRSTTIMEHBCOUNSEL'
      LEFT JOIN [clt_NetO].[SymbolLookup] A1 on x.[S_TITLE] = A1.[DBSYMBOL] AND A1.[TableName] = 'GF_TLBR_ADDITIONALDATA' and A1.[COLUMNNAME] = 'S_TITLE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A2 on x.[S_COUNSEL_CONFIRM_TYP] = A2.[DBSYMBOL] AND A2.[TableName] = 'GF_TLBR_ADDITIONALDATA' and A2.[COLUMNNAME] = 'S_COUNSEL_CONFIRM_TYP'
      LEFT JOIN [clt_NetO].[SymbolLookup] A3 on x.[S_COUNSEL_CONFIRM_OTH] = A3.[DBSYMBOL] AND A3.[TableName] = 'GF_TLBR_ADDITIONALDATA' and A3.[COLUMNNAME] = 'S_COUNSEL_CONFIRM_OTH'
      LEFT JOIN [clt_NetO].[SymbolLookup] A4 on x.[S_COUNSEL_FORMAT_TYP] = A4.[DBSYMBOL] AND A4.[TableName] = 'GF_TLBR_ADDITIONALDATA' and A4.[COLUMNNAME] = 'S_COUNSEL_FORMAT_TYP'
      LEFT JOIN [clt_NetO].[SymbolLookup] A5 on x.[S_CRDTSCORE_MODEL_OVR] = A5.[DBSYMBOL] AND A5.[TableName] = 'GF_TLBR_ADDITIONALDATA' and A5.[COLUMNNAME] = 'S_CRDTSCORE_MODEL_OVR'
      LEFT JOIN [clt_NetO].[SymbolLookup] A6 on x.[S_CREDIT_TYPE] = A6.[DBSYMBOL] AND A6.[TableName] = 'GF_TLBR_ADDITIONALDATA' and A6.[COLUMNNAME] = 'S_CREDIT_TYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A7 on x.[S_LANGUAGEPREFERENCE] = A7.[DBSYMBOL] AND A7.[TableName] = 'GF_TLBR_ADDITIONALDATA' and A7.[COLUMNNAME] = 'S_LANGUAGEPREFERENCE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A8 on x.[S_ELIGIBLE_TYPE] = A8.[DBSYMBOL] AND A8.[TableName] = 'GF_TLBR_ADDITIONALDATA' and A8.[COLUMNNAME] = 'S_ELIGIBLE_TYPE'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
