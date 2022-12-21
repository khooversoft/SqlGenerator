-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_restricted].[VwWG_BULK_IMPORT_DATA]
AS
   SELECT
      x.[BULK_ID],
      x.[RECORD_ID],
      x.[RECORD_PROCESSED],
      x.[LNUM],
      x.[EXT_LNUM],
      x.[CLIENT_LNUM],
      HASHBYTES('SHA2_256', x.[PB_NAME_FIRST]) AS [PB_NAME_FIRST],
      HASHBYTES('SHA2_256', x.[PB_NAME_LAST]) AS [PB_NAME_LAST],
      HASHBYTES('SHA2_256', x.[PB_USCITIZEN_YN]) AS [PB_USCITIZEN_YN],
      HASHBYTES('SHA2_256', x.[PB_PERM_RES_ALIEN]) AS [PB_PERM_RES_ALIEN],
      HASHBYTES('SHA2_256', x.[PB_NONPERM_RES_ALIEN]) AS [PB_NONPERM_RES_ALIEN],
      HASHBYTES('SHA2_256', x.[PB_SSN]) AS [PB_SSN],
      HASHBYTES('SHA2_256', CAST(x.[PB_CREDIT_SCORE] AS NVARCHAR(50))) AS [PB_CREDIT_SCORE],
      HASHBYTES('SHA2_256', CAST(x.[PB_MONTHLY_INCOME] AS NVARCHAR(50))) AS [PB_MONTHLY_INCOME],
      HASHBYTES('SHA2_256', CAST(x.[PB_MONTHLY_DEBT] AS NVARCHAR(50))) AS [PB_MONTHLY_DEBT],
      HASHBYTES('SHA2_256', x.[CB_NAME_FIRST]) AS [CB_NAME_FIRST],
      HASHBYTES('SHA2_256', x.[CB_NAME_LAST]) AS [CB_NAME_LAST],
      HASHBYTES('SHA2_256', x.[CB_USCITIZEN_YN]) AS [CB_USCITIZEN_YN],
      HASHBYTES('SHA2_256', x.[CB_PERM_RES_ALIEN]) AS [CB_PERM_RES_ALIEN],
      HASHBYTES('SHA2_256', x.[CB_NONPERM_RES_ALIEN]) AS [CB_NONPERM_RES_ALIEN],
      HASHBYTES('SHA2_256', x.[CB_SSN]) AS [CB_SSN],
      HASHBYTES('SHA2_256', CAST(x.[CB_CREDIT_SCORE] AS NVARCHAR(50))) AS [CB_CREDIT_SCORE],
      HASHBYTES('SHA2_256', CAST(x.[CB_MONTHLY_INCOME] AS NVARCHAR(50))) AS [CB_MONTHLY_INCOME],
      HASHBYTES('SHA2_256', CAST(x.[CB_MONTHLY_DEBT] AS NVARCHAR(50))) AS [CB_MONTHLY_DEBT],
      HASHBYTES('SHA2_256', x.[PROP_ADDR1]) AS [PROP_ADDR1],
      HASHBYTES('SHA2_256', x.[PROP_CITY]) AS [PROP_CITY],
      HASHBYTES('SHA2_256', x.[PROP_STATE]) AS [PROP_STATE],
      x.[PROP_ZIP],
      x.[PROP_TYPE],
      x.[PROP_NBR_UNITS],
      HASHBYTES('SHA2_256', x.[PROP_OCCUPANCY]) AS [PROP_OCCUPANCY],
      x.[PROP_SALES_PRICE],
      HASHBYTES('SHA2_256', CAST(x.[PROP_CONCURR_FIN] AS NVARCHAR(50))) AS [PROP_CONCURR_FIN],
      HASHBYTES('SHA2_256', CAST(x.[PROP_APPRAISED_VALUE] AS NVARCHAR(50))) AS [PROP_APPRAISED_VALUE],
      x.[LOAN_PURPOSE],
      x.[LOAN_PURP_OF_REFI],
      x.[LOAN_DOC_LEVEL],
      x.[LOAN_DELIVERY_TERMS],
      x.[LOAN_DELEGATED_ENDRSMNT],
      x.[LOAN_AMT],
      x.[INVESTOR_LOCK_PERIOD],
      x.[PRODUCT_INTRATE],
      x.[PRODUCT_IPG_NAME],
      x.[PRODUCT_IPG_INVESTOR],
      x.[PRODUCT_IPG_PRODUCT],
      x.[PRODUCT_IPG_PROGRAM],
      x.[PRODUCT_IPG_PRICE_GROUP],
      x.[PRODUCT_S_PROD],
      x.[INTEREST_RATE],
      x.[BASE_PRICE],
      x.[PRICE_ADJUSTMENT],
      x.[NET_PRICE],
      x.[CALC_SUBJLTV],
      x.[CALC_COMBLTV],
      x.[CALC_DRATIO],
      x.[APPLICATION_DATE],
      x.[BUSINESS_CHANNEL],
      x.[CLOSING_DATE],
      x.[PB_APPL_NBR],
      HASHBYTES('SHA2_256', CAST(x.[CB_APPL_NBR] AS NVARCHAR(50))) AS [CB_APPL_NBR],
      x.[ORIGINATING_LENDER],
      x.[LOAN_STATUS],
      x.[LOAN_ACTIVITY],
      x.[BASEMGN],
      x.[CEILFCTR],
      x.[FLOORFCTR],
      x.[BASE_MARKET],
      x.[BASE_ORIGINATION],
      x.[BASEMKTDISC],
      x.[BASEQUAL],
      x.[BASERATE],
      x.[CLIENTRATEINFO],
      x.[SEL_ROW_INSTANCE],
      x.[SEL_ROW_KEY],
      x.[SELECTEDINVESTOR],
      x.[SELECTEDPROGRAM],
      HASHBYTES('SHA2_256', x.[SELRTCODE]) AS [SELRTCODE],
      x.[RMINCR],
      x.[RLMINC],
      x.[STCODE],
      x.[CYCODE],
      x.[LOAN_TERM],
      x.[TPO],
      x.[IMPOUND_AUTH],
      x.[CASHOUT],
      x.[FSTPMTDT],
      x.[LIEN_POSITION],
      x.[LOAN_TYPE],
      HASHBYTES('SHA2_256', CAST(x.[PB_DOB] AS NVARCHAR(50))) AS [PB_DOB],
      x.[AUS_UW_TYPE],
      x.[PB_BORROWERTYPE],
      x.[PRICE_NAME],
      HASHBYTES('SHA2_256', x.[TAX_ESCROW_IND]) AS [TAX_ESCROW_IND],
      x.[INS_ESCROW_IND],
      x.[ORIGINAL_LA_INPUT],
      x.[LOCK_DATE_OVERRIDE],
      x.[LOCK_EXP_DATE],
      x.[TEMPLATE_ID],
      x.[SELLER_LOAN_REG_CID],
      HASHBYTES('SHA2_256', x.[PROP_COUNTY]) AS [PROP_COUNTY],
      x.[CATEGORY_TYPE],
      x.[GOVREFITYPE_NM],
      x.[PROJ_ATTACH_TYPE]
   FROM [clt_NetO].[WG_BULK_IMPORT_DATA] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
