CREATE VIEW [Alkami_restricted].[Vw_db_form_field]
AS
   SELECT
      x.[form_id],
      x.[field_name],
      x.[condition],
      x.[entry_name],
      x.[title],
      x.[tooltip],
      x.[field_type_enum_id],
      x.[layout_sequence_num],
      x.[is_required],
      x.[print_page_number],
      x.[print_top],
      x.[print_left],
      x.[print_bottom],
      x.[print_right],
      x.[print_width],
      x.[print_height],
      x.[print_text_align],
      x.[print_vertical_align],
      x.[print_font_size],
      x.[print_font_family],
      x.[is_excluded],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[db_form_field] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
