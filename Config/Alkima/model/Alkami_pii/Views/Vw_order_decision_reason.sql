CREATE VIEW [Alkami_pii].[Vw_order_decision_reason]
AS
   SELECT
      x.[order_id],
      x.[decision_date],
      x.[decision_reason_enum_id],
      x.[sequence_num],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[order_decision_reason] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
