CREATE VIEW [Alkami].[Vw_sas_data_document_condition]
AS
   SELECT
      x.[data_document_id],
      x.[condition_seq_id],
      x.[field_name_alias],
      x.[operator],
      x.[field_value],
      x.[to_field_name_alias],
      x.[post_query],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[data_document_condition] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
