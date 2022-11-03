CREATE VIEW [Alkami].[Vw_screen_flow_item]
AS
   SELECT
      x.[screen_flow_id],
      x.[screen_path],
      x.[sequence_num],
      x.[data_service_register_id],
      x.[action_service_register_id],
      x.[db_form_id],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[screen_flow_item] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
