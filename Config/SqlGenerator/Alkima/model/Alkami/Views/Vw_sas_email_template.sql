CREATE VIEW [Alkami].[Vw_sas_email_template]
AS
   SELECT
      x.[email_template_id],
      x.[description],
      x.[email_server_id],
      x.[email_type_enum_id],
      x.[from_address],
      x.[from_name],
      x.[reply_to_addresses],
      x.[bounce_address],
      x.[cc_addresses],
      x.[bcc_addresses],
      x.[subject],
      x.[body_screen_location],
      x.[webapp_name],
      x.[web_host_name],
      x.[send_partial],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[email_template] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
