CREATE VIEW [Alkami_pii].[Vw_sas_email_server]
AS
   SELECT
      x.[email_server_id],
      x.[smtp_host],
      x.[smtp_port],
      x.[smtp_start_tls],
      x.[smtp_ssl],
      x.[store_host],
      x.[store_port],
      x.[store_protocol],
      x.[store_folder],
      x.[store_delete],
      x.[store_mark_seen],
      x.[store_skip_seen],
      x.[mail_username],
      x.[mail_password],
      x.[allowed_to_domains],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[email_server] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
