-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


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
