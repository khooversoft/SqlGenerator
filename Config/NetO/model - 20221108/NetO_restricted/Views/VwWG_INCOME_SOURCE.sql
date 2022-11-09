-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_restricted].[VwWG_INCOME_SOURCE]
AS
   SELECT
      x.[LNUM],
      x.[DBID],
      x.[BNUM],
      x.[INC_SRC_CTR],
      x.[RECORD_CREATED],
      x.[S_INCOME_SOURCE_TYPE],
      x.[OTHER_INCOME_SRC_DESC],
      x.[S_BUSINESS_TYPE],
      x.[SOURCE_NAME],
      x.[SOURCE_CONTACT],
      x.[ADDRESS_LN_1],
      x.[ADDRESS_LN_2],
      HASHBYTES('SHA2_256', x.[CITY]) AS [CITY],
      x.[INC_STATE],
      x.[ZIPCODE],
      x.[COUNTRY],
      x.[PHONE],
      x.[PHONE_EXT],
      x.[FAX_NBR],
      x.[TITLE],
      x.[S_SPECIAL_BOR_EMP_REL_TYPE],
      x.[SPEC_BOR_EMP_REL_TYPE_DESC],
      x.[OCCUPATION],
      x.[EMPLOYED_FROM],
      x.[EMPLOYED_TO],
      x.[YEARS_AT_JOB],
      x.[SUPERVISOR_NAME],
      x.[INC_SRC_EMP_ID],
      x.[SELF_EMPLOYED_FLAG],
      x.[PCT_BUSINESS_OWNED],
      x.[S_SELF_EMPL_TYPE],
      x.[PROF_MONTHS],
      x.[PROF_YEARS],
      x.[BASE_INCOME],
      x.[BONUS_INCOME],
      x.[COMMISSION_INCOME],
      x.[OVERTIME_INCOME],
      x.[MILITARY_INCOME],
      HASHBYTES('SHA2_256', CAST(x.[OTHER_INCOME] AS NVARCHAR(50))) AS [OTHER_INCOME],
      HASHBYTES('SHA2_256', CAST(x.[TOTAL_INCOME] AS NVARCHAR(50))) AS [TOTAL_INCOME],
      x.[LIABCTR],
      x.[S_EMP_UNIT_TYPE],
      x.[EMP_UNIT_NUMBER],
      x.[INCOME_STATE_FOREIN],
      x.[INCOME_POSTCODE],
      x.[EMP_CNTRY_COD],
      x.[EMP_COUNTRY],
      x.[INC_STMT_IND],
      HASHBYTES('SHA2_256', CAST(x.[BUSINESS_INCOME] AS NVARCHAR(50))) AS [BUSINESS_INCOME],
      x.[VOE_DT],
      x.[INC_STMT_EMP_ID],
      x.[INC_DBA_NAME],
      x.[INC_EIN]
   FROM [clt_NetO].[WG_INCOME_SOURCE] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;
