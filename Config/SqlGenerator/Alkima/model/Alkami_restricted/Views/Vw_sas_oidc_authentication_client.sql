CREATE VIEW [Alkami_restricted].[Vw_sas_oidc_authentication_client]
AS
   SELECT
      x.[client_id],
      x.[id],
      x.[secret],
      x.[discovery_uri],
      x.[preferred_jws_algorithm],
      x.[use_nonce],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[oidc_authentication_client] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
