-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_pii].[VwFLOOD]
AS
   SELECT
      x.[LNUM],
      x.[INSREQ],
      x.[FLDZNCRT],
      x.[LIFELOAN],
      x.[DETMNNUM],
      x.[DETMNDAT],
      x.[S_FIRM],
      x.[S_FLDZON],
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
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;
