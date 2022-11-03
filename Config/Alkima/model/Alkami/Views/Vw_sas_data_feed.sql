CREATE VIEW [Alkami].[Vw_sas_data_feed]
AS
   SELECT
      x.[data_feed_id],
      x.[data_feed_type_enum_id],
      x.[index_on_start_empty],
      x.[feed_name],
      x.[feed_receive_service_name],
      x.[feed_delete_service_name],
      x.[last_feed_stamp],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[data_feed] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
