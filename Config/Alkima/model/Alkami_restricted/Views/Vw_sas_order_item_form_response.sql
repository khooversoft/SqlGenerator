CREATE VIEW [Alkami_restricted].[Vw_sas_order_item_form_response]
AS
   SELECT
      x.[order_id],
      x.[order_item_seq_id],
      x.[form_response_id],
      x.[party_id],
      x.[role_type_id],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[order_item_form_response] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
