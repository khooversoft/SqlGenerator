-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_pii].[VwGF_TLBR_ADDITIONALDATA]
AS
   SELECT
      x.[LNUM],
      x.[BNUM],
      x.[DBID],
      x.[ETHINICITY],
      x.[CELL_PHONE],
      x.[PRIM_CONTACT],
      x.[S_FIRSTTIMEHBCOUNSEL],
      A0.Descript AS [S_FIRSTTIMEHBCOUNSEL_Description],
      x.[S_TITLE],
      A1.Descript AS [S_TITLE_Description],
      x.[CURRENT_CUSTOMER],
      x.[WORK_EXT],
      x.[CREDIT_AUTHORIZATION_YN],
      x.[NATIONALITY],
      x.[AFFILIATE],
      x.[S_COUNSEL_CONFIRM_TYP],
      A2.Descript AS [S_COUNSEL_CONFIRM_TYP_Description],
      x.[S_COUNSEL_CONFIRM_OTH],
      A3.Descript AS [S_COUNSEL_CONFIRM_OTH_Description],
      x.[S_COUNSEL_FORMAT_TYP],
      A4.Descript AS [S_COUNSEL_FORMAT_TYP_Description],
      x.[CREDIT_AUTHORIZATION_DATE],
      x.[CUSTOMER_ID],
      x.[S_CRDTSCORE_MODEL_OVR],
      A5.Descript AS [S_CRDTSCORE_MODEL_OVR_Description],
      x.[URLA_BESTCONTACT],
      x.[URLA_ALTCONTACT],
      x.[S_CREDIT_TYPE],
      A6.Descript AS [S_CREDIT_TYPE_Description],
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
      A7.Descript AS [S_LANGUAGEPREFERENCE_Description],
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
      x.[PERSON_RECORD_FOUND],
      x.[MOTHERS_MAIDEN],
      x.[APP_DISCL_READ]
   FROM [clt_NetO].[GF_TLBR_ADDITIONALDATA] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.S_FIRSTTIMEHBCOUNSEL = A0.DBSYMBOL AND A0.[TableName] = 'GF_TLBR_ADDITIONALDATA' and A0.[COLUMNNAME] = 'S_FIRSTTIMEHBCOUNSEL'
      LEFT JOIN [clt_NetO].[SymbolLookup] A1 on x.S_TITLE = A1.DBSYMBOL AND A1.[TableName] = 'GF_TLBR_ADDITIONALDATA' and A1.[COLUMNNAME] = 'S_TITLE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A2 on x.S_COUNSEL_CONFIRM_TYP = A2.DBSYMBOL AND A2.[TableName] = 'GF_TLBR_ADDITIONALDATA' and A2.[COLUMNNAME] = 'S_COUNSEL_CONFIRM_TYP'
      LEFT JOIN [clt_NetO].[SymbolLookup] A3 on x.S_COUNSEL_CONFIRM_OTH = A3.DBSYMBOL AND A3.[TableName] = 'GF_TLBR_ADDITIONALDATA' and A3.[COLUMNNAME] = 'S_COUNSEL_CONFIRM_OTH'
      LEFT JOIN [clt_NetO].[SymbolLookup] A4 on x.S_COUNSEL_FORMAT_TYP = A4.DBSYMBOL AND A4.[TableName] = 'GF_TLBR_ADDITIONALDATA' and A4.[COLUMNNAME] = 'S_COUNSEL_FORMAT_TYP'
      LEFT JOIN [clt_NetO].[SymbolLookup] A5 on x.S_CRDTSCORE_MODEL_OVR = A5.DBSYMBOL AND A5.[TableName] = 'GF_TLBR_ADDITIONALDATA' and A5.[COLUMNNAME] = 'S_CRDTSCORE_MODEL_OVR'
      LEFT JOIN [clt_NetO].[SymbolLookup] A6 on x.S_CREDIT_TYPE = A6.DBSYMBOL AND A6.[TableName] = 'GF_TLBR_ADDITIONALDATA' and A6.[COLUMNNAME] = 'S_CREDIT_TYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A7 on x.S_LANGUAGEPREFERENCE = A7.DBSYMBOL AND A7.[TableName] = 'GF_TLBR_ADDITIONALDATA' and A7.[COLUMNNAME] = 'S_LANGUAGEPREFERENCE'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;
