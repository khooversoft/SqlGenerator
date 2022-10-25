CREATE VIEW [Alkami].[Vw_sas_telecom_number]
AS
   SELECT
      x.[contact_mech_id],
      x.[country_code],
      x.[area_code],
      x.[contact_number],
      x.[ask_for_name],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[telecom_number] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
