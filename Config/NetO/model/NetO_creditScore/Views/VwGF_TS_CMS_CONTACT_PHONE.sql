-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_creditScore].[VwGF_TS_CMS_CONTACT_PHONE]
AS
   SELECT
      x.[CID],
      HASHBYTES('SHA2_256', CAST(x.[ROWSERIALNO] AS NVARCHAR(50))) AS [ROWSERIALNO],
      x.[S_PHONETYPE],
      A0.[Descript] AS [S_PHONETYPE_X],
      HASHBYTES('SHA2_256', x.[PHONENBR]) AS [PHONENBR],
      HASHBYTES('SHA2_256', x.[PHONEEXT]) AS [PHONEEXT]
   FROM [clt_NetO].[GF_TS_CMS_CONTACT_PHONE] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.[S_PHONETYPE] = A0.[DBSYMBOL] AND A0.[TableName] = 'GF_TS_CMS_CONTACT_PHONE' and A0.[COLUMNNAME] = 'S_PHONETYPE'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
;
