CREATE VIEW [Alkami_restricted].[Vw_sas_order_email_message]
AS
   SELECT
      x.[order_id],
      x.[email_message_id],
      x.[order_revision],
      x.[party_id],
      x.[role_type_id],
      x.[product_email_id],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[order_email_message] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
