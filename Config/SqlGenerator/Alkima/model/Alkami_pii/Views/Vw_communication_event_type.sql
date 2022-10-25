CREATE VIEW [Alkami_pii].[Vw_communication_event_type]
AS
   SELECT
      x.[communication_event_type_id],
      x.[parent_type_id],
      x.[description],
      x.[contact_mech_type_enum_id],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[communication_event_type] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
