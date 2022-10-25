CREATE VIEW [Alkami_pii].[Vw_sas_notification_message_user]
AS
   SELECT
      x.[notification_message_id],
      x.[user_id],
      x.[sent_date],
      x.[viewed_date],
      x.[email_message_id],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[notification_message_user] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
