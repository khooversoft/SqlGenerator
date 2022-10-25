CREATE VIEW [Alkami_pii].[Vw_sas_status_item]
AS
   SELECT
      x.[status_id],
      x.[status_type_id],
      x.[status_code],
      x.[sequence_num],
      x.[description],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[status_item] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
