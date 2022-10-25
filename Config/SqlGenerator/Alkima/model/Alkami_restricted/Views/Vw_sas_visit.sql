CREATE VIEW [Alkami_restricted].[Vw_sas_visit]
AS
   SELECT
      x.[visit_id],
      x.[visitor_id],
      x.[user_id],
      x.[user_created],
      x.[session_id],
      x.[server_ip_address],
      x.[server_host_name],
      x.[webapp_name],
      x.[initial_locale],
      x.[initial_request],
      x.[initial_referrer],
      x.[initial_user_agent],
      x.[client_ip_address],
      x.[client_host_name],
      x.[client_user],
      x.[client_ip_isp_name],
      x.[client_ip_postal_code],
      x.[client_ip_city],
      x.[client_ip_metro_code],
      x.[client_ip_region_code],
      x.[client_ip_region_name],
      x.[client_ip_state_prov_geo_id],
      x.[client_ip_country_geo_id],
      x.[client_ip_latitude],
      x.[client_ip_longitude],
      x.[client_ip_time_zone],
      x.[from_date],
      x.[thru_date],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[visit] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
