CREATE VIEW [Alkami_pii].[Vw_sas_localized_message]
AS
   SELECT
      x.[original],
      x.[locale],
      x.[localized],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[localized_message] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
