CREATE VIEW [Alkami].[Vw_sas_system_message_error]
AS
   SELECT
      x.[system_message_id],
      x.[error_date],
      x.[attempted_status_id],
      x.[error_text],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[system_message_error] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
