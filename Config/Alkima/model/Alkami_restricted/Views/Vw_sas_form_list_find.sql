CREATE VIEW [Alkami_restricted].[Vw_sas_form_list_find]
AS
   SELECT
      x.[form_list_find_id],
      x.[description],
      x.[form_location],
      x.[order_by_field],
      x.[form_config_id],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[form_list_find] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
