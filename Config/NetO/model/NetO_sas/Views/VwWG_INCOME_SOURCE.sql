-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas].[VwWG_INCOME_SOURCE]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[DBID] AS [DBID],
      x.[BNUM] AS [BNUM],
      x.[INC_SRC_CTR] AS [INC_SRC_CTR],
      x.[RECORD_CREATED] AS [RECORD_CREATED],
      x.[S_INCOME_SOURCE_TYPE] AS [S_INCOME_SOURCE_TYPE],
      A0.Descript AS [S_INCOME_SOURCE_TYPE_Description],
      x.[OTHER_INCOME_SRC_DESC] AS [OTHER_INCOME_SRC_DESC],
      x.[S_BUSINESS_TYPE] AS [S_BUSINESS_TYPE],
      A1.Descript AS [S_BUSINESS_TYPE_Description],
      x.[SOURCE_NAME] AS [SOURCE_NAME],
      x.[SOURCE_CONTACT] AS [SOURCE_CONTACT],
      x.[ADDRESS_LN_1] AS [ADDRESS_LN_1],
      x.[ADDRESS_LN_2] AS [ADDRESS_LN_2],
      HASHBYTES('SHA2_256', x.[CITY]) AS [CITY],
      x.[INC_STATE] AS [INC_STATE],
      x.[ZIPCODE] AS [ZIPCODE],
      x.[COUNTRY] AS [COUNTRY],
      x.[PHONE] AS [PHONE],
      x.[PHONE_EXT] AS [PHONE_EXT],
      x.[FAX_NBR] AS [FAX_NBR],
      x.[TITLE] AS [TITLE],
      x.[S_SPECIAL_BOR_EMP_REL_TYPE] AS [S_SPECIAL_BOR_EMP_REL_TYPE],
      A2.Descript AS [S_SPECIAL_BOR_EMP_REL_TYPE_Description],
      x.[SPEC_BOR_EMP_REL_TYPE_DESC] AS [SPEC_BOR_EMP_REL_TYPE_DESC],
      x.[OCCUPATION] AS [OCCUPATION],
      x.[EMPLOYED_FROM] AS [EMPLOYED_FROM],
      x.[EMPLOYED_TO] AS [EMPLOYED_TO],
      x.[YEARS_AT_JOB] AS [YEARS_AT_JOB],
      x.[SUPERVISOR_NAME] AS [SUPERVISOR_NAME],
      x.[INC_SRC_EMP_ID] AS [INC_SRC_EMP_ID],
      x.[SELF_EMPLOYED_FLAG] AS [SELF_EMPLOYED_FLAG],
      x.[PCT_BUSINESS_OWNED] AS [PCT_BUSINESS_OWNED],
      x.[S_SELF_EMPL_TYPE] AS [S_SELF_EMPL_TYPE],
      A3.Descript AS [S_SELF_EMPL_TYPE_Description],
      x.[PROF_MONTHS] AS [PROF_MONTHS],
      x.[PROF_YEARS] AS [PROF_YEARS],
      x.[BASE_INCOME] AS [BASE_INCOME],
      x.[BONUS_INCOME] AS [BONUS_INCOME],
      x.[COMMISSION_INCOME] AS [COMMISSION_INCOME],
      x.[OVERTIME_INCOME] AS [OVERTIME_INCOME],
      x.[MILITARY_INCOME] AS [MILITARY_INCOME],
      HASHBYTES('SHA2_256', CAST(x.[OTHER_INCOME] AS NVARCHAR(50))) AS [OTHER_INCOME],
      HASHBYTES('SHA2_256', CAST(x.[TOTAL_INCOME] AS NVARCHAR(50))) AS [TOTAL_INCOME],
      x.[LIABCTR] AS [LIABCTR],
      x.[S_EMP_UNIT_TYPE] AS [S_EMP_UNIT_TYPE],
      A4.Descript AS [S_EMP_UNIT_TYPE_Description],
      x.[EMP_UNIT_NUMBER] AS [EMP_UNIT_NUMBER],
      x.[INCOME_STATE_FOREIN] AS [INCOME_STATE_FOREIN],
      x.[INCOME_POSTCODE] AS [INCOME_POSTCODE],
      x.[EMP_CNTRY_COD] AS [EMP_CNTRY_COD],
      x.[EMP_COUNTRY] AS [EMP_COUNTRY],
      x.[INC_STMT_IND] AS [INC_STMT_IND],
      HASHBYTES('SHA2_256', CAST(x.[BUSINESS_INCOME] AS NVARCHAR(50))) AS [BUSINESS_INCOME],
      x.[VOE_DT] AS [VOE_DT],
      x.[INC_STMT_EMP_ID] AS [INC_STMT_EMP_ID],
      x.[INC_DBA_NAME] AS [INC_DBA_NAME],
      x.[INC_EIN] AS [INC_EIN]
   FROM [clt_NetO].[WG_INCOME_SOURCE] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.S_INCOME_SOURCE_TYPE = A0.DBSYMBOL AND A0.[TableName] = 'WG_INCOME_SOURCE' and A0.[COLUMNNAME] = 'S_INCOME_SOURCE_TYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A1 on x.S_BUSINESS_TYPE = A1.DBSYMBOL AND A1.[TableName] = 'WG_INCOME_SOURCE' and A1.[COLUMNNAME] = 'S_BUSINESS_TYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A2 on x.S_SPECIAL_BOR_EMP_REL_TYPE = A2.DBSYMBOL AND A2.[TableName] = 'WG_INCOME_SOURCE' and A2.[COLUMNNAME] = 'S_SPECIAL_BOR_EMP_REL_TYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A3 on x.S_SELF_EMPL_TYPE = A3.DBSYMBOL AND A3.[TableName] = 'WG_INCOME_SOURCE' and A3.[COLUMNNAME] = 'S_SELF_EMPL_TYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A4 on x.S_EMP_UNIT_TYPE = A4.DBSYMBOL AND A4.[TableName] = 'WG_INCOME_SOURCE' and A4.[COLUMNNAME] = 'S_EMP_UNIT_TYPE'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
