-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [AssetAcq_pii].[CommonSettlement]
AS
   SELECT
      x.[loan_number],
      x.[product_type],
      x.[rate],
      x.[interest_rate],
      x.[service_fee],
      x.[balance],
      x.[participation_balance_90],
      x.[date_interest_paid_to],
      x.[original_loan_to_value_ratio],
      x.[net_int],
      x.[price],
      x.[premium_discount],
      x.[funds_due],
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
   FROM [clt_AssetAcq].[CommonSettlement] x
   WHERE x.[ASAP_DeleteDateTime] IS NULL
;
