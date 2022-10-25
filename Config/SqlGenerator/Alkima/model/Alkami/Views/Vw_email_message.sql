CREATE VIEW [Alkami].[Vw_email_message]
AS
   SELECT
      x.[email_message_id],
      x.[root_email_message_id],
      x.[parent_email_message_id],
      x.[status_id],
      x.[email_type_enum_id],
      x.[sent_date],
      x.[received_date],
      x.[subject],
      x.[body],
      x.[body_text],
      x.[headers_string],
      x.[from_address],
      x.[from_name],
      x.[to_addresses],
      x.[cc_addresses],
      x.[bcc_addresses],
      x.[content_type],
      x.[message_id],
      x.[from_user_id],
      x.[to_user_id],
      x.[email_template_id],
      x.[email_server_id],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[email_message] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
