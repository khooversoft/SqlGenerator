CREATE VIEW [Alkami_restricted].[Vw_status_flow_item]
AS
   SELECT
      x.[status_flow_id],
      x.[status_id],
      x.[is_initial],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[status_flow_item] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
