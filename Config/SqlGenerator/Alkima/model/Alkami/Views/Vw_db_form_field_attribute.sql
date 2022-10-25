CREATE VIEW [Alkami].[Vw_db_form_field_attribute]
AS
   SELECT
      x.[form_id],
      x.[field_name],
      x.[attribute_name],
      x.[value],
      x.[value_is_expression],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[db_form_field_attribute] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
