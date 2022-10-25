CREATE VIEW [Alkami_pii].[Vw_sas_enum_group_member]
AS
   SELECT
      x.[enum_group_enum_id],
      x.[enum_id],
      x.[sequence_num],
      x.[member_info],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[enum_group_member] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
