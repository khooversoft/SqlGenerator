CREATE VIEW [Alkami_restricted].[Vw_db_form]
AS
   SELECT
      x.[form_id],
      x.[purpose_enum_id],
      x.[is_list_form],
      x.[modify_xml_screen_form],
      x.[description],
      x.[comments],
      x.[print_template_location],
      x.[acro_form_location],
      x.[print_font_size],
      x.[print_font_family],
      x.[print_container_width],
      x.[print_container_height],
      x.[print_repeat_count],
      x.[print_repeat_new_page],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[db_form] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
