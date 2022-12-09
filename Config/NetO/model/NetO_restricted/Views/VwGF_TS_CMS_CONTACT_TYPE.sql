-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_restricted].[VwGF_TS_CMS_CONTACT_TYPE]
AS
   SELECT
      x.[CID],
      x.[S_CMSTYPE],
      A0.Descript AS [CMSTYPE]
   FROM [clt_NetO].[GF_TS_CMS_CONTACT_TYPE] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.[S_CMSTYPE] = A0.[DBSYMBOL] AND A0.[TableName] = 'GF_TS_CMS_CONTACT_TYPE' and A0.[COLUMNNAME] = 'S_CMSTYPE'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
;
