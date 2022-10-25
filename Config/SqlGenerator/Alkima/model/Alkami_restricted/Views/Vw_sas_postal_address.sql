CREATE VIEW [Alkami_restricted].[Vw_sas_postal_address]
AS
   SELECT
      x.[contact_mech_id],
      x.[to_name],
      x.[attn_name],
      x.[address1],
      x.[address2],
      x.[unit_number],
      x.[directions],
      x.[city],
      x.[city_geo_id],
      x.[school_district_geo_id],
      x.[county_geo_id],
      x.[state_province_geo_id],
      x.[country_geo_id],
      x.[postal_code],
      x.[postal_code_ext],
      x.[postal_code_geo_id],
      x.[geo_point_id],
      x.[commercial],
      x.[access_code],
      x.[telecom_contact_mech_id],
      x.[email_contact_mech_id],
      x.[ship_gateway_address_id],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[postal_address] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
