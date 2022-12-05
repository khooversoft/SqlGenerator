-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_pii].[VwFLOOD]
AS
   SELECT
      x.[LNUM],
      x.[INSREQ],
      x.[FLDZNCRT],
      x.[LIFELOAN],
      x.[DETMNNUM],
      x.[DETMNDAT],
      x.[S_FIRM],
      A0.Descript AS [D_FIRM],
      x.[S_FLDZON],
      A1.Descript AS [D_FLDZON],
      x.[FLDMAPDT],
      x.[COMMNUMB],
      x.[SFHAREA],
      x.[NOTMAPD],
      x.[OBTNINS],
      x.[NOTFLOOD],
      x.[MAPNUMB],
      x.[NFIP_MAP_PANEL_DATE],
      x.[COMMNAME]
   FROM [clt_NetO].[FLOOD] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.S_FIRM = A0.[DBSYMBOL] AND A0.[TableName] = 'FLOOD' and A0.[COLUMNNAME] = 'S_FIRM'
      LEFT JOIN [clt_NetO].[SymbolLookup] A1 on x.S_FLDZON = A1.[DBSYMBOL] AND A1.[TableName] = 'FLOOD' and A1.[COLUMNNAME] = 'S_FLDZON'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
