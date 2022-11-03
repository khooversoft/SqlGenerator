CREATE VIEW [Alkami].[Vw_data_document_field]
AS
   SELECT
      x.[data_document_id],
      x.[field_seq_id],
      x.[field_path],
      x.[field_name_alias],
      x.[field_type],
      x.[sortable],
      x.[default_display],
      x.[function_name],
      x.[sequence_num],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[data_document_field] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
