-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_restricted].[VwFLOOD]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[INSREQ] AS [INSREQ],
      x.[FLDZNCRT] AS [FLDZNCRT],
      x.[LIFELOAN] AS [LIFELOAN],
      x.[DETMNNUM] AS [DETMNNUM],
      x.[DETMNDAT] AS [DETMNDAT],
      x.[S_FIRM] AS [S_FIRM],
      x.[S_FLDZON] AS [S_FLDZON],
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
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;
