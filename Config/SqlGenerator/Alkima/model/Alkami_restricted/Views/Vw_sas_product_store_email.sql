CREATE VIEW [Alkami_restricted].[Vw_sas_product_store_email]
AS
   SELECT
      x.[product_store_id],
      x.[email_type_enum_id],
      x.[from_date],
      x.[thru_date],
      x.[email_template_id],
      x.[header_image_path],
      x.[detail_link_path],
      x.[web_order_bcc],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[product_store_email] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
