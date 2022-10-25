CREATE VIEW [Alkami].[Vw_sas_contact_mech_purpose]
AS
   SELECT
      x.[contact_mech_purpose_id],
      x.[contact_mech_type_enum_id],
      x.[description],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[contact_mech_purpose] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
