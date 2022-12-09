-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO].[VwGF_TS_CMS_CONTACT_PHONE]
AS
   SELECT
      x.[CID],
      x.[ROWSERIALNO],
      x.[S_PHONETYPE],
      A0.Descript AS [PHONETYPE],
      x.[PHONENBR],
      x.[PHONEEXT]
   FROM [clt_NetO].[GF_TS_CMS_CONTACT_PHONE] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.[S_PHONETYPE] = A0.[DBSYMBOL] AND A0.[TableName] = 'GF_TS_CMS_CONTACT_PHONE' and A0.[COLUMNNAME] = 'S_PHONETYPE'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
;
