CREATE VIEW [Alkami].[Vw_screen_flow_item_field]
AS
   SELECT
      x.[screen_flow_id],
      x.[screen_path],
      x.[field_name],
      x.[required],
      x.[excluded],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[screen_flow_item_field] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
