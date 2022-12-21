-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO].[VwGF_TLBR_ADDITIONALDATA]
AS
   SELECT
      x.[LNUM],
      x.[BNUM],
      x.[DBID],
      HASHBYTES('SHA2_256', x.[ETHINICITY]) AS [ETHINICITY],
      A0.[Descript] AS [ETHINICITY_X],
      HASHBYTES('SHA2_256', x.[CELL_PHONE]) AS [CELL_PHONE],
      HASHBYTES('SHA2_256', x.[PRIM_CONTACT]) AS [PRIM_CONTACT],
      x.[S_FIRSTTIMEHBCOUNSEL],
      A1.[Descript] AS [S_FIRSTTIMEHBCOUNSEL_X],
      x.[S_TITLE],
      A2.[Descript] AS [S_TITLE_X],
      HASHBYTES('SHA2_256', x.[CURRENT_CUSTOMER]) AS [CURRENT_CUSTOMER],
      x.[WORK_EXT],
      x.[CREDIT_AUTHORIZATION_YN],
      HASHBYTES('SHA2_256', x.[NATIONALITY]) AS [NATIONALITY],
      x.[AFFILIATE],
      x.[S_COUNSEL_CONFIRM_TYP],
      A3.[Descript] AS [S_COUNSEL_CONFIRM_TYP_X],
      x.[S_COUNSEL_CONFIRM_OTH],
      A4.[Descript] AS [S_COUNSEL_CONFIRM_OTH_X],
      x.[S_COUNSEL_FORMAT_TYP],
      A5.[Descript] AS [S_COUNSEL_FORMAT_TYP_X],
      x.[CREDIT_AUTHORIZATION_DATE],
      x.[CUSTOMER_ID],
      HASHBYTES('SHA2_256', x.[S_CRDTSCORE_MODEL_OVR]) AS [S_CRDTSCORE_MODEL_OVR],
      A6.[Descript] AS [S_CRDTSCORE_MODEL_OVR_X],
      x.[URLA_BESTCONTACT],
      x.[URLA_ALTCONTACT],
      HASHBYTES('SHA2_256', x.[S_CREDIT_TYPE]) AS [S_CREDIT_TYPE],
      A7.[Descript] AS [S_CREDIT_TYPE_X],
      x.[JOINT_CREDIT_BNUM],
      HASHBYTES('SHA2_256', x.[SPOUSE_FNAME]) AS [SPOUSE_FNAME],
      HASHBYTES('SHA2_256', x.[SPOUSE_MNAME]) AS [SPOUSE_MNAME],
      HASHBYTES('SHA2_256', x.[SPOUSE_LNAME]) AS [SPOUSE_LNAME],
      HASHBYTES('SHA2_256', x.[SPOUSE_ADD1]) AS [SPOUSE_ADD1],
      HASHBYTES('SHA2_256', x.[SPOUSE_ADD2]) AS [SPOUSE_ADD2],
      HASHBYTES('SHA2_256', x.[SPOUSE_CITY]) AS [SPOUSE_CITY],
      HASHBYTES('SHA2_256', x.[SPOUSE_STATE]) AS [SPOUSE_STATE],
      HASHBYTES('SHA2_256', x.[SPOUSE_ZIP]) AS [SPOUSE_ZIP],
      HASHBYTES('SHA2_256', x.[ATTR_BORROWER_ID]) AS [ATTR_BORROWER_ID],
      x.[MARITALSTATUSYN],
      x.[DATEOFCHANGEMS],
      x.[EXPLANATIONMS],
      x.[ATTR_CAIVRS],
      x.[ATTR_ESIGN],
      x.[S_LANGUAGEPREFERENCE],
      A8.[Descript] AS [S_LANGUAGEPREFERENCE_X],
      HASHBYTES('SHA2_256', x.[OTHER_LANGUAGE]) AS [OTHER_LANGUAGE],
      HASHBYTES('SHA2_256', CAST(x.[CURRENTINCOTHERTOTAL] AS NVARCHAR(50))) AS [CURRENTINCOTHERTOTAL],
      HASHBYTES('SHA2_256', CAST(x.[CURRENTINCOMETOTAL] AS NVARCHAR(50))) AS [CURRENTINCOMETOTAL],
      HASHBYTES('SHA2_256', CAST(x.[TOTALCURRENTINCOME] AS NVARCHAR(50))) AS [TOTALCURRENTINCOME],
      HASHBYTES('SHA2_256', x.[ATTR_SPOUSE_INFO]) AS [ATTR_SPOUSE_INFO],
      x.[ON_NOTE_BORROWERS],
      x.[CALL_CONSENT_PREFER],
      x.[HASCHECKINGACCT_WITHCU],
      x.[HASSAVINGACCT_WITHCU],
      HASHBYTES('SHA2_256', x.[CURRENT_CUSTOMERID]) AS [CURRENT_CUSTOMERID],
      x.[ISCUSTOMER_STATUS_VERIFIED],
      x.[ISCURRENTCUSTOMER],
      x.[HMDA_DISC_NOTICE],
      x.[CRDTSCORE_MODEL_OTHDESC_OVR],
      x.[PERSON_RECORD_FOUND],
      HASHBYTES('SHA2_256', x.[MOTHERS_MAIDEN]) AS [MOTHERS_MAIDEN],
      x.[APP_DISCL_READ],
      x.[S_ELIGIBLE_TYPE],
      x.[ELIGIBLE_CODE],
      HASHBYTES('SHA2_256', x.[ELIGIBLE_TEXT]) AS [ELIGIBLE_TEXT]
   FROM [clt_NetO].[GF_TLBR_ADDITIONALDATA] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.[ETHINICITY] = A0.[DBSYMBOL] AND A0.[TableName] = 'GF_TLBR_ADDITIONALDATA' and A0.[COLUMNNAME] = 'ETHINICITY'
      LEFT JOIN [clt_NetO].[SymbolLookup] A1 on x.[S_FIRSTTIMEHBCOUNSEL] = A1.[DBSYMBOL] AND A1.[TableName] = 'GF_TLBR_ADDITIONALDATA' and A1.[COLUMNNAME] = 'S_FIRSTTIMEHBCOUNSEL'
      LEFT JOIN [clt_NetO].[SymbolLookup] A2 on x.[S_TITLE] = A2.[DBSYMBOL] AND A2.[TableName] = 'GF_TLBR_ADDITIONALDATA' and A2.[COLUMNNAME] = 'S_TITLE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A3 on x.[S_COUNSEL_CONFIRM_TYP] = A3.[DBSYMBOL] AND A3.[TableName] = 'GF_TLBR_ADDITIONALDATA' and A3.[COLUMNNAME] = 'S_COUNSEL_CONFIRM_TYP'
      LEFT JOIN [clt_NetO].[SymbolLookup] A4 on x.[S_COUNSEL_CONFIRM_OTH] = A4.[DBSYMBOL] AND A4.[TableName] = 'GF_TLBR_ADDITIONALDATA' and A4.[COLUMNNAME] = 'S_COUNSEL_CONFIRM_OTH'
      LEFT JOIN [clt_NetO].[SymbolLookup] A5 on x.[S_COUNSEL_FORMAT_TYP] = A5.[DBSYMBOL] AND A5.[TableName] = 'GF_TLBR_ADDITIONALDATA' and A5.[COLUMNNAME] = 'S_COUNSEL_FORMAT_TYP'
      LEFT JOIN [clt_NetO].[SymbolLookup] A6 on x.[S_CRDTSCORE_MODEL_OVR] = A6.[DBSYMBOL] AND A6.[TableName] = 'GF_TLBR_ADDITIONALDATA' and A6.[COLUMNNAME] = 'S_CRDTSCORE_MODEL_OVR'
      LEFT JOIN [clt_NetO].[SymbolLookup] A7 on x.[S_CREDIT_TYPE] = A7.[DBSYMBOL] AND A7.[TableName] = 'GF_TLBR_ADDITIONALDATA' and A7.[COLUMNNAME] = 'S_CREDIT_TYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A8 on x.[S_LANGUAGEPREFERENCE] = A8.[DBSYMBOL] AND A8.[TableName] = 'GF_TLBR_ADDITIONALDATA' and A8.[COLUMNNAME] = 'S_LANGUAGEPREFERENCE'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
