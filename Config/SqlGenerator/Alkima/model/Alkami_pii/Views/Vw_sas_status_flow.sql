CREATE VIEW [Alkami_pii].[Vw_sas_status_flow]
AS
   SELECT
      x.[status_flow_id],
      x.[status_type_id],
      x.[description],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[status_flow] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
