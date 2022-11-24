-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_pii].[VwFLOOD]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[INSREQ] AS [INSREQ],
      x.[FLDZNCRT] AS [FLDZNCRT],
      x.[LIFELOAN] AS [LIFELOAN],
      x.[DETMNNUM] AS [DETMNNUM],
      x.[DETMNDAT] AS [DETMNDAT],
      x.[S_FIRM] AS [S_FIRM],
      A0.Descript AS [S_FIRMDescription],
      x.[S_FLDZON] AS [S_FLDZON],
      A1.Descript AS [S_FLDZONDescription],
      x.[FLDMAPDT] AS [FLDMAPDT],
      x.[COMMNUMB] AS [COMMNUMB],
      x.[SFHAREA] AS [SFHAREA],
      x.[NOTMAPD] AS [NOTMAPD],
      x.[OBTNINS] AS [OBTNINS],
      x.[NOTFLOOD] AS [NOTFLOOD],
      x.[MAPNUMB] AS [MAPNUMB],
      x.[NFIP_MAP_PANEL_DATE] AS [NFIP_MAP_PANEL_DATE],
      x.[COMMNAME] AS [COMMNAME]
   FROM [clt_NetO].[FLOOD] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.S_FIRM = A0.[DBSYMBOL] AND A0.[TableName] = 'FLOOD' and A0.[COLUMNNAME] = 'S_FIRM'
      LEFT JOIN [clt_NetO].[SymbolLookup] A1 on x.S_FLDZON = A1.[DBSYMBOL] AND A1.[TableName] = 'FLOOD' and A1.[COLUMNNAME] = 'S_FLDZON'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
