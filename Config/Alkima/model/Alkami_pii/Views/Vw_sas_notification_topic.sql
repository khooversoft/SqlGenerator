CREATE VIEW [Alkami_pii].[Vw_sas_notification_topic]
AS
   SELECT
      x.[topic],
      x.[description],
      x.[title_template],
      x.[error_title_template],
      x.[link_template],
      x.[type_string],
      x.[show_alert],
      x.[alert_no_auto_hide],
      x.[persist_on_send],
      x.[is_private],
      x.[receive_notifications],
      x.[email_notifications],
      x.[email_template_id],
      x.[email_message_save],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[notification_topic] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
