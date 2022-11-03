CREATE VIEW [Alkami].[Vw_system_message_enum_map]
AS
   SELECT
      x.[system_message_remote_id],
      x.[enum_id],
      x.[mapped_value],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[system_message_enum_map] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
