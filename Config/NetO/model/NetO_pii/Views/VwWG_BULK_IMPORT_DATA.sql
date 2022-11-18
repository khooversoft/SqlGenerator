-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_pii].[VwWG_BULK_IMPORT_DATA]
AS
   SELECT
      x.[BULK_ID],
      x.[RECORD_ID],
      x.[RECORD_PROCESSED],
      x.[LNUM],
      x.[EXT_LNUM],
      x.[CLIENT_LNUM],
      x.[PB_NAME_FIRST],
      x.[PB_NAME_LAST],
      x.[PB_USCITIZEN_YN],
      x.[PB_PERM_RES_ALIEN],
      x.[PB_NONPERM_RES_ALIEN],
      x.[PB_SSN],
      x.[PB_CREDIT_SCORE],
      x.[PB_MONTHLY_INCOME],
      x.[PB_MONTHLY_DEBT],
      x.[CB_NAME_FIRST],
      x.[CB_NAME_LAST],
      x.[CB_USCITIZEN_YN],
      x.[CB_PERM_RES_ALIEN],
      x.[CB_NONPERM_RES_ALIEN],
      x.[CB_SSN],
      x.[CB_CREDIT_SCORE],
      x.[CB_MONTHLY_INCOME],
      x.[CB_MONTHLY_DEBT],
      x.[PROP_ADDR1],
      x.[PROP_CITY],
      x.[PROP_STATE],
      x.[PROP_ZIP],
      x.[PROP_TYPE],
      x.[PROP_NBR_UNITS],
      x.[PROP_OCCUPANCY],
      x.[PROP_SALES_PRICE],
      x.[PROP_CONCURR_FIN],
      x.[PROP_APPRAISED_VALUE],
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
      x.[CB_APPL_NBR],
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
      x.[SELRTCODE],
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
      x.[PB_DOB],
      x.[AUS_UW_TYPE],
      x.[PB_BORROWERTYPE],
      x.[PRICE_NAME],
      x.[TAX_ESCROW_IND],
      x.[INS_ESCROW_IND],
      x.[ORIGINAL_LA_INPUT],
      x.[LOCK_DATE_OVERRIDE],
      x.[LOCK_EXP_DATE],
      x.[TEMPLATE_ID],
      x.[SELLER_LOAN_REG_CID],
      x.[PROP_COUNTY],
      x.[CATEGORY_TYPE],
      x.[GOVREFITYPE_NM],
      x.[PROJ_ATTACH_TYPE]
   FROM [clt_NetO].[WG_BULK_IMPORT_DATA] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;