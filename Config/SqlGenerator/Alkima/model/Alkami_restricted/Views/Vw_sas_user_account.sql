CREATE VIEW [Alkami_restricted].[Vw_sas_user_account]
AS
   SELECT
      x.[user_id],
      x.[username],
      x.[user_full_name],
      x.[current_password],
      x.[reset_password],
      x.[password_salt],
      x.[password_hash_type],
      x.[password_base64],
      x.[password_set_date],
      x.[password_hint],
      x.[public_key],
      x.[has_logged_out],
      x.[disabled],
      x.[disabled_date_time],
      x.[terminate_date],
      x.[successive_failed_logins],
      x.[require_password_change],
      x.[currency_uom_id],
      x.[locale],
      x.[time_zone],
      x.[external_user_id],
      x.[email_address],
      x.[ip_allowed],
      x.[party_id],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[user_account] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
