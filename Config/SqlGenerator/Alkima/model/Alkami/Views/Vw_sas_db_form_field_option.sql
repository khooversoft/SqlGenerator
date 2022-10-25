CREATE VIEW [Alkami].[Vw_sas_db_form_field_option]
AS
   SELECT
      x.[form_id],
      x.[field_name],
      x.[sequence_num],
      x.[key_value],
      x.[text],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[db_form_field_option] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
