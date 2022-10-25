CREATE VIEW [Alkami].[Vw_elasticsearch_report_dataset]
AS
   SELECT
      x.[dataset_id],
      x.[report_id],
      x.[dataset_name],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[elasticsearch_report_dataset] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
