-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO].[VwGF_TS_WF_WORKTYPE]
AS
   SELECT
      x.[S_WORKTYPE],
      x.[S_WT_TYPE],
      x.[WT_EXECUTABLE],
      x.[EST_TO_COMPLETE],
      x.[S_USERINTERFACE],
      x.[S_REASSIGN_RULE],
      x.[WEIGHT_TIER1],
      x.[WEIGHT_TIER2],
      x.[WEIGHT_TIER3],
      x.[DISPLAY_IDX]
   FROM [clt_NetO].[GF_TS_WF_WORKTYPE] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
   ;