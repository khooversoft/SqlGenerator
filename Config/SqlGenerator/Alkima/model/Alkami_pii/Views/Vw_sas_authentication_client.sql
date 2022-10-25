CREATE VIEW [Alkami_pii].[Vw_sas_authentication_client]
AS
   SELECT
      x.[client_id],
      x.[name],
      x.[enabled],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[authentication_client] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
