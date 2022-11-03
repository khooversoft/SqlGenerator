CREATE VIEW [Alkami_pii].[Vw_system_message_type]
AS
   SELECT
      x.[system_message_type_id],
      x.[description],
      x.[produce_service_name],
      x.[consume_service_name],
      x.[produce_ack_service_name],
      x.[produce_ack_on_consumed],
      x.[send_service_name],
      x.[receive_service_name],
      x.[content_type],
      x.[receive_path],
      x.[receive_file_pattern],
      x.[receive_response_enum_id],
      x.[receive_move_path],
      x.[send_path],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[system_message_type] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
