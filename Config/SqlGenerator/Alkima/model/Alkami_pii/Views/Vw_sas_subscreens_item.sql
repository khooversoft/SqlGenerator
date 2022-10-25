CREATE VIEW [Alkami_pii].[Vw_sas_subscreens_item]
AS
   SELECT
      x.[screen_location],
      x.[subscreen_name],
      x.[user_group_id],
      x.[subscreen_location],
      x.[menu_title],
      x.[menu_index],
      x.[menu_include],
      x.[make_default],
      x.[no_sub_path],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[subscreens_item] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
