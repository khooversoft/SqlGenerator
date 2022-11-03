CREATE VIEW [Alkami_pii].[Vw_party_citizenship]
AS
   SELECT
      x.[party_id],
      x.[geo_id],
      x.[from_date],
      x.[thru_date],
      x.[sequence_num],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[party_citizenship] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
