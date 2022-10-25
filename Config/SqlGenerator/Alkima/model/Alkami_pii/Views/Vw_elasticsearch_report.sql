CREATE VIEW [Alkami_pii].[Vw_elasticsearch_report]
AS
   SELECT
      x.[report_id],
      x.[index_name],
      x.[report_name],
      x.[aggregation],
      x.[chart_type],
      x.[enabled],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[elasticsearch_report] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
