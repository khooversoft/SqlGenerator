CREATE VIEW [Alkami_restricted].[Vw_form_list_find_field]
AS
   SELECT
      x.[form_list_find_id],
      x.[field_name],
      x.[field_value],
      x.[field_operator],
      x.[field_not],
      x.[field_ignore_case],
      x.[field_from],
      x.[field_thru],
      x.[field_period],
      x.[field_per_offset],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[form_list_find_field] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
