CREATE VIEW [Alkami].[Vw_person]
AS
   SELECT
      x.[party_id],
      x.[salutation],
      HASHBYTE('SHA2_256', x.[first_name]),
      HASHBYTE('SHA2_256', x.[middle_name]),
      HASHBYTE('SHA2_256', x.[last_name]),
      x.[personal_title],
      x.[suffix],
      x.[nickname],
      HASHBYTE('SHA2_256', x.[gender]),
      HASHBYTE('SHA2_256', x.[birth_date]),
      x.[deceased_date],
      x.[height],
      x.[weight],
      HASHBYTE('SHA2_256', x.[mothers_maiden_name]),
      x.[marital_status_enum_id],
      x.[employment_status_enum_id],
      x.[residence_status_enum_id],
      x.[occupation],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[person] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
