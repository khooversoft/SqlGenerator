CREATE VIEW [Alkami_restricted].[Vw_sas_order_decision]
AS
   SELECT
      x.[order_id],
      x.[decision_date],
      x.[decision_by_party_id],
      x.[status_id],
      x.[invalidated_date],
      x.[approved_amount],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[order_decision] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
