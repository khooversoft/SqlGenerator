CREATE VIEW [Alkami].[Vw_status_type]
AS
   SELECT
      x.[status_type_id],
      x.[parent_type_id],
      x.[description],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[status_type] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
