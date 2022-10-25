CREATE VIEW [Alkami_pii].[Vw_sas_visitor]
AS
   SELECT
      x.[visitor_id],
      x.[created_date],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[visitor] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
