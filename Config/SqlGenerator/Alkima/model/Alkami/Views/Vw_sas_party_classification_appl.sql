CREATE VIEW [Alkami].[Vw_sas_party_classification_appl]
AS
   SELECT
      x.[party_id],
      x.[party_classification_id],
      x.[from_date],
      x.[thru_date],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[party_classification_appl] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
