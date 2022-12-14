-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_pii].[VwGF_TS_WF_PROCESS_MODEL]
AS
   SELECT
      x.[S_PROCESS_MODEL],
      A0.[Descript] AS [S_PROCESS_MODEL_X],
      x.[IS_ACTIVE],
      x.[EST_TO_COMPLETE]
   FROM [clt_NetO].[GF_TS_WF_PROCESS_MODEL] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.[S_PROCESS_MODEL] = A0.[DBSYMBOL] AND A0.[TableName] = 'GF_TS_WF_PROCESS_MODEL' and A0.[COLUMNNAME] = 'S_PROCESS_MODEL'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
;
