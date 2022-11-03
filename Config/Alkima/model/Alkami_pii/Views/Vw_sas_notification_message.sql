CREATE VIEW [Alkami_pii].[Vw_sas_notification_message]
AS
   SELECT
      x.[notification_message_id],
      x.[topic],
      x.[user_group_id],
      x.[sent_date],
      x.[message_json],
      x.[title_text],
      x.[link_text],
      x.[type_string],
      x.[show_alert],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[notification_message] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
