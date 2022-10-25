IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.SCHEMATA WHERE SCHEMA_NAME = 'clt_AssetAcq')
BEGIN
  EXEC( 'CREATE SCHEMA clt_AssetAcq;' )
END
GO


IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.SCHEMATA WHERE SCHEMA_NAME = 'AssetAcq')
BEGIN
  EXEC( 'CREATE SCHEMA AssetAcq;' )
END
GO


IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.SCHEMATA WHERE SCHEMA_NAME = 'AssetAcq_restricted')
BEGIN
  EXEC( 'CREATE SCHEMA AssetAcq_restricted;' )
END
GO


IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.SCHEMATA WHERE SCHEMA_NAME = 'AssetAcq_pii')
BEGIN
  EXEC( 'CREATE SCHEMA AssetAcq_pii;' )
END
GO


-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'clt_AssetAcq' AND TABLE_NAME = 'PenFed_Settlement')
BEGIN
   DROP TABLE [clt_AssetAcq].[PenFed_Settlement]
END
GO

CREATE TABLE [clt_AssetAcq].[PenFed_Settlement]
(
   [ASAP_RecordEffectiveDateTime]             datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]                      datetime2(7)         NULL,
   [Loan_Number]                              int                  NULL,
   [Product_Type]                             nvarchar(50)         NULL,
   [INTEREST_RATE]                            decimal(16,6)        NULL,
   [SERVICE_FEE]                              decimal(16,6)        NULL,
   [CURRENT_BALANCE]                          decimal(16,6)        NULL,
   [90__PARTICIPATION]                        decimal(16,6)        NULL,
   [Date_Interest_Paid_To]                    datetime             NULL,
   [ORIGINAL_BALANCE]                         int                  NULL,
   [Original_Term__months_]                   int                  NULL,
   [AUDITED_PRODUCT_TYPE]                     nvarchar(50)         NULL,
   [Current_Monthly_Principal___Interest]     decimal(16,6)        NULL,
   [Calculated_Remaining_Term]                decimal(16,6)        NULL,
   [Date_of_First_Payment]                    datetime             NULL,
   [Date_of_Next_Payment]                     datetime             NULL,
   [Purpose_Description]                      nvarchar(50)         NULL,
   [PROP_TYPE]                                nvarchar(50)         NULL,
   [OCCUPANCY]                                nvarchar(50)         NULL,
   [APPRAISAL]                                int                  NULL,
   [Original_Loan_to_Value_Ratio]             int                  NULL,
   [Current_Balance_to_Loan_Value_Ratio]      int                  NULL,
   [Combined_LTV_Ratio]                       int                  NULL,
   [Borrower_FICO]                            int                  NULL,
   [Units]                                    int                  NULL,
   [MI_Coverage_Percentage]                   int                  NULL,
   [Condo_or_PUD_Name]                        nvarchar(50)         NULL,
   [County_Code]                              int                  NULL,
   [County_Name]                              nvarchar(50)         NULL,
   [Last_Name]                                nvarchar(50)         NULL,
   [Property_Address]                         nvarchar(50)         NULL,
   [Property_City]                            nvarchar(50)         NULL,
   [Property_State]                           nvarchar(50)         NULL,
   [Property_Zip__1st_five_digits_]           int                  NULL,
   [Total_Debt_Ratio]                         decimal(16,6)        NULL,
   [ASAP_ROW_HASH]                            nvarchar(64)         NULL,
   [ASAP_DML_FLAG]                            nvarchar(2)          NULL,
   [ASAP_CREATED_DATE]                        datetime2(7)         NULL,
   [ASAP_UPDATED_DATE]                        datetime2(7)         NULL,
   [ASAP_LINEAGE_ID]                          nvarchar(36)         NULL,
   [ASAP_ACTIVITY_ID]                         nvarchar(36)         NULL,
   [ASAP_TRIGGER_ID]                          nvarchar(36)         NULL,
   [ASAP_SRC_FILEPATH]                        nvarchar(1000)       NULL,
   [ASAP_SRC_FILE_DATE]                       datetime2(7)         NULL,
   [ASAP_SRC_NAME]                            nvarchar(36)         NULL
)
;
GO


-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.VIEWS WHERE TABLE_SCHEMA = 'AssetAcq' AND TABLE_NAME = 'PenFed_Settlement')
BEGIN
   DROP VIEW [AssetAcq].[PenFed_Settlement]
END
GO


CREATE VIEW [AssetAcq].[PenFed_Settlement]
AS
   SELECT
      x.[Loan_Number],
      x.[Product_Type],
      x.[INTEREST_RATE],
      x.[SERVICE_FEE],
      x.[CURRENT_BALANCE],
      x.[90__PARTICIPATION],
      x.[Date_Interest_Paid_To],
      x.[ORIGINAL_BALANCE],
      x.[Original_Term__months_],
      x.[AUDITED_PRODUCT_TYPE],
      x.[Current_Monthly_Principal___Interest],
      x.[Calculated_Remaining_Term],
      x.[Date_of_First_Payment],
      x.[Date_of_Next_Payment],
      x.[Purpose_Description],
      x.[PROP_TYPE],
      x.[OCCUPANCY],
      x.[APPRAISAL],
      x.[Original_Loan_to_Value_Ratio],
      x.[Current_Balance_to_Loan_Value_Ratio],
      x.[Combined_LTV_Ratio],
      x.[Borrower_FICO],
      x.[Units],
      x.[MI_Coverage_Percentage],
      x.[Condo_or_PUD_Name],
      x.[County_Code],
      x.[County_Name],
      x.[Last_Name],
      x.[Property_Address],
      x.[Property_City],
      x.[Property_State],
      x.[Property_Zip__1st_five_digits_],
      x.[Total_Debt_Ratio],
      x.[ASAP_ROW_HASH],
      x.[ASAP_DML_FLAG],
      x.[ASAP_CREATED_DATE],
      x.[ASAP_UPDATED_DATE],
      x.[ASAP_LINEAGE_ID],
      x.[ASAP_ACTIVITY_ID],
      x.[ASAP_TRIGGER_ID],
      x.[ASAP_SRC_FILEPATH],
      x.[ASAP_SRC_FILE_DATE],
      x.[ASAP_SRC_NAME]
   FROM [clt_AssetAcq].[PenFed_Settlement] x
   WHERE x.[ASAP_DeleteDateTime] IS NULL
;
GO

-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.VIEWS WHERE TABLE_SCHEMA = 'AssetAcq_restricted' AND TABLE_NAME = 'PenFed_Settlement')
BEGIN
   DROP VIEW [AssetAcq_restricted].[PenFed_Settlement]
END
GO


CREATE VIEW [AssetAcq_restricted].[PenFed_Settlement]
AS
   SELECT
      x.[Loan_Number],
      x.[Product_Type],
      x.[INTEREST_RATE],
      x.[SERVICE_FEE],
      x.[CURRENT_BALANCE],
      x.[90__PARTICIPATION],
      x.[Date_Interest_Paid_To],
      x.[ORIGINAL_BALANCE],
      x.[Original_Term__months_],
      x.[AUDITED_PRODUCT_TYPE],
      x.[Current_Monthly_Principal___Interest],
      x.[Calculated_Remaining_Term],
      x.[Date_of_First_Payment],
      x.[Date_of_Next_Payment],
      x.[Purpose_Description],
      x.[PROP_TYPE],
      x.[OCCUPANCY],
      x.[APPRAISAL],
      x.[Original_Loan_to_Value_Ratio],
      x.[Current_Balance_to_Loan_Value_Ratio],
      x.[Combined_LTV_Ratio],
      x.[Borrower_FICO],
      x.[Units],
      x.[MI_Coverage_Percentage],
      x.[Condo_or_PUD_Name],
      x.[County_Code],
      x.[County_Name],
      x.[Last_Name],
      x.[Property_Address],
      x.[Property_City],
      x.[Property_State],
      x.[Property_Zip__1st_five_digits_],
      x.[Total_Debt_Ratio],
      x.[ASAP_ROW_HASH],
      x.[ASAP_DML_FLAG],
      x.[ASAP_CREATED_DATE],
      x.[ASAP_UPDATED_DATE],
      x.[ASAP_LINEAGE_ID],
      x.[ASAP_ACTIVITY_ID],
      x.[ASAP_TRIGGER_ID],
      x.[ASAP_SRC_FILEPATH],
      x.[ASAP_SRC_FILE_DATE],
      x.[ASAP_SRC_NAME]
   FROM [clt_AssetAcq].[PenFed_Settlement] x
   WHERE x.[ASAP_DeleteDateTime] IS NULL
;
GO

-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.VIEWS WHERE TABLE_SCHEMA = 'AssetAcq_pii' AND TABLE_NAME = 'PenFed_Settlement')
BEGIN
   DROP VIEW [AssetAcq_pii].[PenFed_Settlement]
END
GO


CREATE VIEW [AssetAcq_pii].[PenFed_Settlement]
AS
   SELECT
      x.[Loan_Number],
      x.[Product_Type],
      x.[INTEREST_RATE],
      x.[SERVICE_FEE],
      x.[CURRENT_BALANCE],
      x.[90__PARTICIPATION],
      x.[Date_Interest_Paid_To],
      x.[ORIGINAL_BALANCE],
      x.[Original_Term__months_],
      x.[AUDITED_PRODUCT_TYPE],
      x.[Current_Monthly_Principal___Interest],
      x.[Calculated_Remaining_Term],
      x.[Date_of_First_Payment],
      x.[Date_of_Next_Payment],
      x.[Purpose_Description],
      x.[PROP_TYPE],
      x.[OCCUPANCY],
      x.[APPRAISAL],
      x.[Original_Loan_to_Value_Ratio],
      x.[Current_Balance_to_Loan_Value_Ratio],
      x.[Combined_LTV_Ratio],
      x.[Borrower_FICO],
      x.[Units],
      x.[MI_Coverage_Percentage],
      x.[Condo_or_PUD_Name],
      x.[County_Code],
      x.[County_Name],
      x.[Last_Name],
      x.[Property_Address],
      x.[Property_City],
      x.[Property_State],
      x.[Property_Zip__1st_five_digits_],
      x.[Total_Debt_Ratio],
      x.[ASAP_ROW_HASH],
      x.[ASAP_DML_FLAG],
      x.[ASAP_CREATED_DATE],
      x.[ASAP_UPDATED_DATE],
      x.[ASAP_LINEAGE_ID],
      x.[ASAP_ACTIVITY_ID],
      x.[ASAP_TRIGGER_ID],
      x.[ASAP_SRC_FILEPATH],
      x.[ASAP_SRC_FILE_DATE],
      x.[ASAP_SRC_NAME]
   FROM [clt_AssetAcq].[PenFed_Settlement] x
   WHERE x.[ASAP_DeleteDateTime] IS NULL
;
GO

