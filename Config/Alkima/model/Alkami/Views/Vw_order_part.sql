CREATE VIEW [Alkami].[Vw_order_part]
AS
   SELECT
      x.[order_id],
      x.[order_part_seq_id],
      x.[parent_part_seq_id],
      x.[part_name],
      x.[status_id],
      x.[vendor_party_id],
      x.[customer_party_id],
      x.[other_party_order_id],
      x.[other_party_order_date],
      x.[facility_id],
      x.[carrier_party_id],
      x.[shipment_method_enum_id],
      x.[trade_term_enum_id],
      x.[settlement_term_id],
      x.[postal_contact_mech_id],
      x.[telecom_contact_mech_id],
      x.[tracking_number],
      x.[shipping_instructions],
      x.[may_split],
      x.[signature_required_enum_id],
      x.[gift_message],
      x.[is_gift],
      x.[is_new_customer],
      x.[part_total],
      x.[priority],
      x.[ship_after_date],
      x.[ship_before_date],
      x.[estimated_ship_date],
      x.[estimated_delivery_date],
      x.[estimated_pick_up_date],
      x.[valid_from_date],
      x.[valid_thru_date],
      x.[auto_cancel_date],
      x.[dont_cancel_set_date],
      x.[dont_cancel_set_user_id],
      x.[disable_promotions],
      x.[disable_shipping_calc],
      x.[disable_tax_calc],
      x.[reservation_auto_enum_id],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[order_part] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;