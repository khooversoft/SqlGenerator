-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_pii].[VwGF_TS_CMS_CONTACT_EMAIL]
AS
   SELECT
      x.[CID],
      x.[ROWSERIALNO],
      x.[S_EMAILTYPE],
      A0.Descript AS [S_EMAILTYPEDescription],
      x.[EMAILADDR]
   FROM [clt_NetO].[GF_TS_CMS_CONTACT_EMAIL] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.S_EMAILTYPE = A0.[DBSYMBOL] AND A0.[TableName] = 'GF_TS_CMS_CONTACT_EMAIL' and A0.[COLUMNNAME] = 'S_EMAILTYPE'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
;
