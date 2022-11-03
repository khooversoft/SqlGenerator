CREATE VIEW [Alkami].[Vw_sas_elasticsearch_report_field]
AS
   SELECT
      x.[dataset_id],
      x.[field_seq_id],
      x.[field_name],
      x.[aggregation_path],
      x.[value_type],
      x.[sequence_num],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[elasticsearch_report_field] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
