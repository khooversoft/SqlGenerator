-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

CREATE TABLE [clt_NetO].[WG_BULK_IMPORT_DATA]
(
   [BULK_ID]                          int                  NOT NULL,
   [RECORD_ID]                        int                  NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              datetime2(7)         NULL,
   [RECORD_PROCESSED]                 nchar(1)             NULL,
   [LNUM]                             nchar(20)            NULL,
   [EXT_LNUM]                         nvarchar(20)         NULL,
   [CLIENT_LNUM]                      nvarchar(20)         NULL,
   [PB_NAME_FIRST]                    nvarchar(30)         NULL,
   [PB_NAME_LAST]                     nvarchar(30)         NULL,
   [PB_USCITIZEN_YN]                  nchar(1)             NULL,
   [PB_PERM_RES_ALIEN]                nchar(1)             NULL,
   [PB_NONPERM_RES_ALIEN]             nchar(1)             NULL,
   [PB_SSN]                           nvarchar(11)         NULL,
   [PB_CREDIT_SCORE]                  int                  NULL,
   [PB_MONTHLY_INCOME]                decimal(16,6)        NULL,
   [PB_MONTHLY_DEBT]                  decimal(16,6)        NULL,
   [CB_NAME_FIRST]                    nvarchar(30)         NULL,
   [CB_NAME_LAST]                     nvarchar(30)         NULL,
   [CB_USCITIZEN_YN]                  nchar(1)             NULL,
   [CB_PERM_RES_ALIEN]                nchar(1)             NULL,
   [CB_NONPERM_RES_ALIEN]             nchar(1)             NULL,
   [CB_SSN]                           nvarchar(11)         NULL,
   [CB_CREDIT_SCORE]                  int                  NULL,
   [CB_MONTHLY_INCOME]                decimal(16,6)        NULL,
   [CB_MONTHLY_DEBT]                  decimal(16,6)        NULL,
   [PROP_ADDR1]                       nvarchar(55)         NULL,
   [PROP_CITY]                        nvarchar(25)         NULL,
   [PROP_STATE]                       nchar(2)             NULL,
   [PROP_ZIP]                         nvarchar(10)         NULL,
   [PROP_TYPE]                        nvarchar(20)         NULL,
   [PROP_NBR_UNITS]                   int                  NULL,
   [PROP_OCCUPANCY]                   nvarchar(128)        NULL,
   [PROP_SALES_PRICE]                 decimal(16,6)        NULL,
   [PROP_CONCURR_FIN]                 decimal(16,6)        NULL,
   [PROP_APPRAISED_VALUE]             decimal(16,6)        NULL,
   [LOAN_PURPOSE]                     nvarchar(128)        NULL,
   [LOAN_PURP_OF_REFI]                nvarchar(128)        NULL,
   [LOAN_DOC_LEVEL]                   nvarchar(128)        NULL,
   [LOAN_DELIVERY_TERMS]              nvarchar(128)        NULL,
   [LOAN_DELEGATED_ENDRSMNT]          nchar(1)             NULL,
   [LOAN_AMT]                         decimal(16,6)        NULL,
   [INVESTOR_LOCK_PERIOD]             nvarchar(128)        NULL,
   [PRODUCT_INTRATE]                  decimal(16,6)        NULL,
   [PRODUCT_IPG_NAME]                 nvarchar(240)        NULL,
   [PRODUCT_IPG_INVESTOR]             nvarchar(4)          NULL,
   [PRODUCT_IPG_PRODUCT]              nvarchar(4)          NULL,
   [PRODUCT_IPG_PROGRAM]              nvarchar(4)          NULL,
   [PRODUCT_IPG_PRICE_GROUP]          nvarchar(4)          NULL,
   [PRODUCT_S_PROD]                   nvarchar(8)          NULL,
   [INTEREST_RATE]                    decimal(16,6)        NULL,
   [BASE_PRICE]                       decimal(16,6)        NULL,
   [PRICE_ADJUSTMENT]                 decimal(16,6)        NULL,
   [NET_PRICE]                        decimal(16,6)        NULL,
   [CALC_SUBJLTV]                     decimal(16,6)        NULL,
   [CALC_COMBLTV]                     decimal(16,6)        NULL,
   [CALC_DRATIO]                      decimal(16,6)        NULL,
   [APPLICATION_DATE]                 datetime             NULL,
   [BUSINESS_CHANNEL]                 nvarchar(8)          NULL,
   [CLOSING_DATE]                     datetime             NULL,
   [PB_APPL_NBR]                      int                  NULL,
   [CB_APPL_NBR]                      int                  NULL,
   [ORIGINATING_LENDER]               int                  NULL,
   [LOAN_STATUS]                      nvarchar(8)          NULL,
   [LOAN_ACTIVITY]                    nvarchar(8)          NULL,
   [BASEMGN]                          decimal(16,6)        NULL,
   [CEILFCTR]                         decimal(16,6)        NULL,
   [FLOORFCTR]                        decimal(16,6)        NULL,
   [BASE_MARKET]                      decimal(16,6)        NULL,
   [BASE_ORIGINATION]                 decimal(16,6)        NULL,
   [BASEMKTDISC]                      decimal(16,6)        NULL,
   [BASEQUAL]                         decimal(16,6)        NULL,
   [BASERATE]                         decimal(16,6)        NULL,
   [CLIENTRATEINFO]                   nvarchar(10)         NULL,
   [SEL_ROW_INSTANCE]                 smallint             NULL,
   [SEL_ROW_KEY]                      nchar(10)            NULL,
   [SELECTEDINVESTOR]                 nvarchar(30)         NULL,
   [SELECTEDPROGRAM]                  nvarchar(20)         NULL,
   [SELRTCODE]                        nvarchar(10)         NULL,
   [RMINCR]                           decimal(16,6)        NULL,
   [RLMINC]                           decimal(16,6)        NULL,
   [STCODE]                           nchar(2)             NULL,
   [CYCODE]                           nchar(3)             NULL,
   [LOAN_TERM]                        int                  NULL,
   [TPO]                              nchar(1)             NULL,
   [IMPOUND_AUTH]                     nchar(1)             NULL,
   [CASHOUT]                          nchar(1)             NULL,
   [FSTPMTDT]                         datetime             NULL,
   [LIEN_POSITION]                    nvarchar(128)        NULL,
   [LOAN_TYPE]                        nvarchar(128)        NULL,
   [PB_DOB]                           datetime             NULL,
   [AUS_UW_TYPE]                      nvarchar(128)        NULL,
   [PB_BORROWERTYPE]                  nvarchar(128)        NULL,
   [PRICE_NAME]                       nvarchar(480)        NULL,
   [TAX_ESCROW_IND]                   nvarchar(10)         NULL,
   [INS_ESCROW_IND]                   nvarchar(10)         NULL,
   [ORIGINAL_LA_INPUT]                decimal(25,0)        NULL,
   [LOCK_DATE_OVERRIDE]               datetime             NULL,
   [LOCK_EXP_DATE]                    datetime             NULL,
   [TEMPLATE_ID]                      int                  NULL,
   [SELLER_LOAN_REG_CID]              nvarchar(10)         NULL,
   [PROP_COUNTY]                      nvarchar(70)         NULL,
   [CATEGORY_TYPE]                    nvarchar(8)          NULL,
   [GOVREFITYPE_NM]                   nvarchar(8)          NULL,
   [PROJ_ATTACH_TYPE]                 nvarchar(8)          NULL,
   [ASAP_ROW_HASH]                    nvarchar(64)         NULL,
   [ASAP_DML_FLAG]                    nvarchar(2)          NULL,
   [ASAP_CREATED_DATE]                datetime2(7)         NULL,
   [ASAP_UPDATED_DATE]                datetime2(7)         NULL,
   [ASAP_LINEAGE_ID]                  nvarchar(36)         NULL,
   [ASAP_ACTIVITY_ID]                 nvarchar(36)         NULL,
   [ASAP_TRIGGER_ID]                  nvarchar(36)         NULL,
   [ASAP_SRC_FILEPATH]                nvarchar(1000)       NULL,
   [ASAP_SRC_FILE_DATE]               datetime2(7)         NULL,
   [ASAP_SRC_NAME]                    nvarchar(36)         NULL
)
WITH (DISTRIBUTION = HASH ([BULK_ID]), CLUSTERED COLUMNSTORE INDEX)
;