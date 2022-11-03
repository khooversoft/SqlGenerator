CREATE VIEW [Alkami_restricted].[Vw_sas_data_document]
AS
   SELECT
      x.[data_document_id],
      x.[document_name],
      x.[document_title],
      x.[index_name],
      x.[primary_entity_name],
      x.[manual_data_service_name],
      x.[manual_mapping_service_name],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[data_document] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
